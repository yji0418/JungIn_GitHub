using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_Board_Read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string seq = Request.QueryString["sn"]; // 리스트에서 읽어온 글번호

            string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            // (1) 조회수 증가 실행
            string sql1 = "Update board Set hit = hit + 1 Where seq = " + seq;
            SqlCommand cmd = new SqlCommand(sql1, con);

            con.Open();
            cmd.ExecuteNonQuery(); // (1) 조회수 증가 실행
            con.Close();

            // (2) 글 읽어오기 실행
            string sql2 = "Select * From board Where seq = " + seq;
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            con.Open();
            SqlDataReader rd = cmd2.ExecuteReader();

            if (rd.Read())
            {
                TextBox1.Text = rd["name"].ToString();
                TextBox2.Text = string.Format("{0:yyyy-MM-dd HH:mm}", (DateTime)rd["wDate"]);
                TextBox3.Text = rd["title"].ToString();
                TextBox4.Text = rd["body"].ToString();

                LinkButton1.Text = rd["fName"].ToString();
                Label1.Text = rd["fSize"].ToString() + " bytes";
                Label2.Text = "(다운로드 횟수 : " + rd["hitDown"].ToString() + ")";

                if (LinkButton1.Text == "")
                {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    LinkButton1.Text = "첨부된 파일이 없습니다.";
                    LinkButton1.Enabled = false;
                }

                else
                {
                    Label1.Visible = true;
                    Label2.Visible = true;
                }

                Button2.PostBackUrl = "Board_CheckPassword.aspx?mode=edit&sn=" + rd["seq"].ToString();
                Button4.PostBackUrl = "Board_Reply.aspx?sn=" + rd["seq"].ToString() + "&title=" + rd["title"].ToString();
                Button5.PostBackUrl = "Board_CheckPassword.aspx?mode=del&sn=" + rd["seq"].ToString();
            }
            rd.Close();
            con.Close();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        // 다운로드 할 때마다 파일 조회수 증가: hitDown 필드값
        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "Update board set hitDown = hitDown+1 Where seq = " + Request.QueryString["sn"];
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        // 클라이언트로 파일 전송
        SendFile(Server.MapPath("~/Uploads/") + LinkButton1.Text, LinkButton1.Text); // (전체경로명, 파일명)
    }

    private void SendFile(string fullName, string name)
    {
        // (1) 파일 이름 보내주기
        Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlPathEncode(name));

        // (2) 타입 지정: 파일 전송 임을 알림
        Response.ContentType = "multipart/form-data";

        // (3) 서버에 있는 파일을 전송함: full path name을 줘야 함
        Response.WriteFile(fullName);
        Response.End();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
    }
}