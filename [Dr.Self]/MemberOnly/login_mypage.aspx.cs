using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_mypage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.User.Identity.IsAuthenticated) //로그인 유무를 나타냄
            {
                String id = User.Identity.Name;

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
                    Label1.Text = id;
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = User.Identity.Name;
        String pwd = TextBox2.Text;
        String name = TextBox4.Text;
        String email = TextBox5.Text;

        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //명령
        string sql = @"Update Drself_join Set Passwd=@Passwd, Name=@Name, Email=@Email where UserID = @UserID";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@UserID", id);
        cmd.Parameters.AddWithValue("@Passwd", pwd);
        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@Email", email);

        con.Open();
        int a = cmd.ExecuteNonQuery();
        con.Close();

        if(a>0)
        {
            string str = "<script> alert('정보가 변경되었습니다'); ";
            str += " location.href='login_mypage_view.aspx'; ";
            str += "</script>";
            Response.Write(str);
        }

        else
        {
            string str = "<script> alert('정보변경에 실패했습니다.'); ";
            str += "</script>";
            Response.Write(str);
        }

    }
}