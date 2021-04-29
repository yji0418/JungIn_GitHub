using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class board_read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string seq = Request.QueryString["sn"];

            //연결
            String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            //(1)조회수 증가 실행
            string sql1 = "Update Drself_board Set hit = hit + 1 Where seq = " + seq;
            SqlCommand cmd = new SqlCommand(sql1, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            //(2) 글 읽어오기
            string sql2 = "Select * from Drself_board where seq=" + seq;
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            con.Open();
            SqlDataReader rd = cmd2.ExecuteReader();

            if(rd.Read())
            {
                TextBox1.Text = rd["name"].ToString();
                TextBox2.Text = string.Format("{0:yyyy-MM-dd HH:mm}", (DateTime)rd["wDate"]);
                TextBox3.Text = rd["title"].ToString();
                TextBox4.Text = rd["body"].ToString();
            }

            //수정버튼
            Button1.PostBackUrl = "~/MemberOnly/board_checkpw.aspx?mode=edit&sn=" + rd["seq"].ToString();
            Button2.PostBackUrl = "~/MemberOnly/board_Reply.aspx?sn=" + rd["seq"].ToString() + "&title=" + rd["title"].ToString();
            Button4.PostBackUrl = "~/MemberOnly/board_checkpw.aspx?mode=del&sn=" + rd["seq"].ToString();


            rd.Close();
            con.Close();
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/board.aspx");
    }
}