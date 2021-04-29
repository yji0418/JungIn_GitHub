using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class board_write2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.User.Identity.IsAuthenticated) //로그인 유무를 나타냄
            {
                String id = User.Identity.Name;

                /*로그인 되어 있는 계정 이름이랑 이메일 따오기---------------------------------------------*/
                //연결
                String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                //명령
                String sql = @"Select * from Drself_join where UserID = @UserID";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@UserID", id);

                con.Open();

                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.Read())
                {
                    TextBox1.Text = rd["Name"].ToString();
                    TextBox2.Text = rd["Email"].ToString();
                }

                con.Close();

                rd.Close();
            }

            else
            {
                Response.Redirect("../login.aspx");
            }        
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../notice_board.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //게시판 등록---------------------------------------------------------------------------------------------------------------------------

        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        String sql2 = @"Insert into Drself_notice(name, pwd, title, body, wDate) Values(@name, @pwd, @title, @body, getDate())";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox5.Text, "sha1");

        cmd2.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@pwd", hashPwd);
        cmd2.Parameters.AddWithValue("@title", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@body", TextBox4.Text);

        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();

        //ref_id값을 해당 글번호 seq값으로 업데이트-----------------------------------------------------------------------------------------
        String sql3 = @"Update Drself_notice Set ref_id = seq Where ref_id = 0";
        SqlCommand cmd3 = new SqlCommand(sql3, con);

        con.Open();
        cmd3.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../notice_board.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../notice_board.aspx");
    }
}
