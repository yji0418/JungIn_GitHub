using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_board_checkpw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["mode"] =="edit")
        {
            ImageButton1.ImageUrl = "~/img/modify.jpg"; // 수정 버튼 표시
        }
        else
        {
            ImageButton1.ImageUrl = "~/img/delete.jpg";
        }
        TextBox1.Attributes.Add("onkeypress", "if (event.keycode==13) return false;");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../board.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string seq = Request.QueryString["sn"];
        string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "sha1");

        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Select * From Drself_board Where seq = @seq and pwd = @pwd";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@seq", seq);
        cmd.Parameters.AddWithValue("@pwd", hashPwd);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            if (Request.QueryString["mode"] == "edit")
            {
                Response.Redirect("board_update.aspx?sn=" + seq);
            }

            else
            {
                Response.Redirect("board_delete.aspx?sn=" + seq);
            }
        }
        else
        {
            Label1.Text = "비밀번호가 일치하지 않습니다.";
        }
        rd.Close();
        con.Close();

    }
}