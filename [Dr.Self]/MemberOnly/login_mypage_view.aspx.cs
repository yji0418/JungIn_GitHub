using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_mypage_view : System.Web.UI.Page
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
                    Label2.Text = rd["Name"].ToString();
                    Label3.Text = rd["Email"].ToString();
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
        Response.Redirect("login_mypage.aspx");
    }
}