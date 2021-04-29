using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; //여기서부터 추가
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class myLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //로그인 버튼
        if(IsAuthenticated(TextBox1.Text, TextBox2.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            //1.로그인 인증쿠키를 생성한다.
            //2. 원래 요청한 페이지로 이동한다.
        }

        else
        {
            Label1.Text = "아이디 또는 암호가 일치하지 않습니다";
        }
    }

    private bool IsAuthenticated(string text1, string text2)
    {
        //DB와 연동하여 ID와 PW를 확인한다.
        bool result = false;

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "select * from Member where UserID=@UserID and Password=@Password";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

        //실행
        con.Open();

        SqlDataReader rd = cmd.ExecuteReader();

        if(rd.Read())
        {
            result=true;
        }

        else
        {
            result = false;
        }

        rd.Close();
        con.Close();

        return result;

        /*return true; //무조건 로그인 되게 해놓은 것*/
    }
}