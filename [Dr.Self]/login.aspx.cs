using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         //로그인 버튼
          if (IsAuthenticated(TextBox1.Text, TextBox2.Text))
          {
              FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
              //1.로그인 인증쿠키를 생성한다.
              //2. 원래 요청한 페이지로 이동한다.
          }

          else
          {
              Response.Write("<script>alert('아이디 혹은 비밀번호가 틀렸습니다.');</script>");
          }
      }

      private bool IsAuthenticated(string text1, string text2)
      {
         bool result = false;
         //DB 연동하여 ID와 암호를 체크
         string conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
         SqlConnection con = new SqlConnection(conStr);

         string sql = "Select * from Drself_join Where UserID=@UserID and Passwd=@Passwd";
         SqlCommand cmd = new SqlCommand(sql, con);
         cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
         cmd.Parameters.AddWithValue("@Passwd", TextBox2.Text);

         con.Open();
         SqlDataReader rd = cmd.ExecuteReader();

         if (rd.Read())
             result = true;
         else
             result = false;

         rd.Close();
         con.Close();

         return result;         
      }
    }


