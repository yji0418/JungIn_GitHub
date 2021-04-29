using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        /*팝업창 띄우기 위해 스크립트 호출*/
        string str = @" <script> window.open('" + "FindID.aspx?id="
            + TextBox1.Text
            + "','myWindow','top=200, left=200, width=400, height=200')"
            + "</script>";
        Response.Write(str);
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        //등록합니다 버튼
        if (IsMemberExists())
        {
            Label2.Text = "이미 사용중인 아이디 입니다.<br/>다른 아이디를 사용해주세요";
        }

        else
            AddMember();
    }

    private void AddMember()
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //명령
        String sql = "insert into Member values(@UserID, @Password, @Name, @Phone)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);

        //실행
        con.Open();
        int a = cmd.ExecuteNonQuery();
        con.Close();

        if (a>0)
        {
            FormsAuthentication.SetAuthCookie(TextBox1.Text,false);
            //(1)인증쿠키 생성, 즉 로그인 시켜줌
            String str = @"<script>alert('회원가입됨');";
            str += "location.href='/Home.aspx';";
            str += "</script>";

            Response.Write(str);
        }

        else
        {
            Label2.Text = "회원가입에 실패하였습니다.";
        }

        
    }

    private bool IsMemberExists()
    {
            bool result = true;

            //연결
            String conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            //명령
            String sql = "select * from Member Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);

            //실행
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
            {
                result = true; //같은 아이디가 이미 존재함
            }

            else
            {
                result = false;
            }

            rd.Close();
            con.Close();

            return result;
        }
    }