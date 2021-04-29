using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_Board_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // 엄청 중요!! 빠뜨리면 수정이 안 됨
        {
            string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "Select * from board Where seq = " + Request.QueryString["sn"];
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
            {
                TextBox1.Text = rd["name"].ToString();
                TextBox3.Text = rd["title"].ToString();
                TextBox4.Text = rd["body"].ToString();
                Label1.Text = rd["fName"].ToString();
                Label2.Text = "(" + rd["fSize"].ToString() + " bytes)";
                HiddenField1.Value = rd["fSize"].ToString();

                if (Label1.Text == "")
                {
                    Label2.Visible = false;
                    LinkButton1.Visible = false;
                }
                else
                {
                    Label2.Visible = true;
                    LinkButton1.Visible = true;
                }
            }
            rd.Close();
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)//수정버튼
    {
        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Update board Set name=@name, title=@title, body=@body, fName=@fName, fSize=@fSize Where seq = " + Request.QueryString["sn"];
        SqlCommand cmd = new SqlCommand(sql, con);

        // 첨부파일 수정여부 파악
        string fileName = Label1.Text;
        int fileSize = int.Parse(HiddenField1.Value);

        if (FileUpload1.HasFile)
        {
            fileName = FileUpload1.FileName;

            FileInfo myFile = new FileInfo(Server.MapPath("~/Uploads/") + fileName);

            if (myFile.Exists)
            { // 이미 존재하는 파일명을 첨부하려고 함: 파일이름 뒤에 1,2,3...을 붙임
                myFile = NewFileName(myFile); // 호출
                fileName = myFile.Name; // 경로를 제외한 파일이름만
            }
            FileUpload1.SaveAs(myFile.FullName); // 파일을 서버에 저장(full path name을 줘야 함)
            fileSize = FileUpload1.PostedFile.ContentLength; // 바이트 단위
        }
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@title", TextBox3.Text);
        cmd.Parameters.AddWithValue("@body", TextBox4.Text);
        cmd.Parameters.AddWithValue("@fName", fileName); // 확인
        cmd.Parameters.AddWithValue("@fSize", fileSize); // 확인
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Board/Board_List.aspx");
    }

    private FileInfo NewFileName(FileInfo myFile)
    {
        int num = 0;
        string fileName = "";
        string fName = myFile.Name.Substring(0, (myFile.Name.Length - myFile.Extension.Length));
        string fExtension = myFile.Extension;
        do
        {
            num++;
            fileName = fName + "_" + num + fExtension;
            myFile = new FileInfo(Server.MapPath("~/Uploads/") + fileName);
        } while (myFile.Exists);
        return myFile;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)//파일삭제 링크버튼
    {
        // (1) DB에서 해당 레코드의 fName, fSize, hitDown 수정
        string seq = Request.QueryString["sn"]; // 리스트에서 읽어온 글의 번호

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Update board Set fName=' ', fSize=0, hitDown=0 Where seq = " + seq;
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        // (2) 실제로 Uploads 폴더에서 파일 삭제
        FileInfo myFile = new FileInfo(Server.MapPath("~/Uploads/") + Label1.Text);
        myFile.Delete();
        Response.Redirect("~/MemberOnly/Board_Edit.aspx?sn=" + seq); // 현재 페이지 다시 띄움
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.PostBackUrl = "~/MemberOnly/Board_Read.aspx?sn=" + Request.QueryString["sn"];
    }
}