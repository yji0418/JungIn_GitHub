using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string id = User.Identity.Name;

            string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "select * from Member where UserID = @UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", id);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if(rd.Read())
            {
                Label1.Text = id;
                TextBox4.Text = rd["Name"].ToString();
                TextBox5.Text = rd["Phone"].ToString();
            }

            rd.Close();
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = User.Identity.Name;
        string pwd = TextBox2.Text;
        string name = TextBox4.Text;
        string phone = TextBox5.Text;

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "Update Member Set Password = @Password, Name = @Name, Phone=@Phone where UserID = @UserID";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@Password", pwd);
        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@Phone", phone);
        cmd.Parameters.AddWithValue("@UserID", id);

        con.Open();
        int a = cmd.ExecuteNonQuery();
        con.Close();

        if (a > 0)
        {
            string str = "<script> alert('계정 정보가 변경되었습니다');";
            str += "location.href = '/Home.aspx';";
            str += "</script>";
            Response.Write(str);
        }

        else
        {
            Label2.Text = "정보 변경에 실패하였습니다.";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Home.aspx");
    }
}