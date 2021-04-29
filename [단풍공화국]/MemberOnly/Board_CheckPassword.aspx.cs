using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_Board_CheckPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["mode"] == "edit")
            ImageButton1.ImageUrl = "~/Images/btn_edit.gif"; // 수정 버튼 표시
        else
            ImageButton1.ImageUrl = "~/Images/btn_delete.gif"; // 삭제 버튼 표시
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string seq = Request.QueryString["sn"];

        string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "sha1");

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Select * From board Where seq = @seq and pwd = @pwd";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@seq", seq);
        cmd.Parameters.AddWithValue("@pwd", hashPwd);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            if (Request.QueryString["mode"] == "edit")
                Response.Redirect("~/MemberOnly/Board_Edit.aspx?sn=" + seq);
            else
                Response.Redirect("~/MemberOnly/Board_Delete.aspx?sn=" + seq);
        }
        else
            Label2.Text = "비밀번호가 일치하지 않습니다.";

        rd.Close();
        con.Close();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}