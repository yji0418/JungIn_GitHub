using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_board_Reply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox3.Text = "[RE]" + Request.QueryString["title"];

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        //취소버튼
        Response.Redirect("../board.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //글 목록 버튼
        Response.Redirect("../board.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //답글 버튼
        int ref_id = 0;
        int inner_id = 0;
        int depth = 0;

        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Select ref_id, inner_id, depth from Drself_board where seq = "+Request.QueryString["sn"];
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if(rd.Read())
        {
            ref_id = (int)rd["ref_id"];
            inner_id = (int)rd["inner_id"];
            depth = (int)rd["depth"];
        }

        rd.Close();
        con.Close();

        //2 현 게시물과 같은 글을 참조하는 글 중에서 현 게시물 이후의 inner_ID를 1증가시킴
        string sql2 = @"Update Drself_board Set inner_id = inner_id + 1 Where ref_id = @ref_id and inner_id >@inner_id";
        SqlCommand cmd2 = new SqlCommand(sql2, con);
        cmd2.Parameters.AddWithValue("@ref_id", ref_id);
        cmd2.Parameters.AddWithValue("@inner_id", inner_id);

        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();

        //inner_id와 depth를 1씩 증가시켜서 답변 글 저장
        string sql3 = @"Insert into Drself_board(name, pwd, title, body, ref_id, inner_id, depth, wDate) Values(@name, @pwd, @title, @body, @ref_id, @inner_id,@depth, getDate())";
        cmd = new SqlCommand(sql3, con);

        string hashPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox5.Text, "sha1");

        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", hashPwd);
        cmd.Parameters.AddWithValue("@title", TextBox3.Text);
        cmd.Parameters.AddWithValue("@body", TextBox4.Text);
        cmd.Parameters.AddWithValue("@ref_id", ref_id); // 이하 3줄은 새로 추가
        cmd.Parameters.AddWithValue("@inner_id", ++inner_id); // 글 위치 1 증가
        cmd.Parameters.AddWithValue("@depth", ++depth);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../board.aspx");
    }
}