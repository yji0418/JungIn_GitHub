using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

public partial class Album_CheckPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["mode"] == "edit") //이거 시험에 나옴 request.QueryString~
        {
            ImageButton1.ImageUrl = "~/Images/modify.gif";
        }

        else
        {
            ImageButton1.ImageUrl = "~/Images/delete.gif";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //수정, 삭제 버튼 / 현재 게시물에 입력한 비밀번호가 일치한지 확인한 뒤 처리한다

        string imgID = Request.QueryString["imgID"];

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Select * from Photos where imgID = @imgID AND pwd = @pwd";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@imgID",imgID);
        cmd.Parameters.AddWithValue("@pwd", TextBox1.Text);

        con.Open();

        SqlDataReader rd = cmd.ExecuteReader();

        if(rd.Read())
        {
            if(Request.QueryString["mode"] == "edit")
            {
                Response.Redirect("Edit.aspx?imgID=" + imgID);
            }

            else
            {
                Response.Redirect("Delete.aspx?imgID=" + imgID);
            }

        }

        else
        {
            Label2.Text = "비밀번호가 일치하지 않습니다.";
        }
        rd.Close();

        con.Close();

    }
}