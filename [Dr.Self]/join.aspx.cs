using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;/*아래 3줄 추가*/
using System.Data;
using System.Configuration;
using System.Web.Security;

public partial class join : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(User.Identity.IsAuthenticated)
        {
            Response.Write("<script language=\"javascript\">alert('이미 로그인 한 사용자 입니다.')</script>");
            Response.Write("<script language=\"javascript\">window.location=\"main.aspx\"</script>");
        }
    }


    protected void join_button_Click(object sender, EventArgs e)
    {
        //등록합니다 버튼
        if (IsMemberExists())
        {
            Label1.Text = "이미 사용중인 아이디 입니다.<br/>다른 아이디를 사용해주세요";
        }

        else
            AddMember();
    }

    private void AddMember()
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //명령
        String sql = @"Insert into Drself_join Values(@UserID,@Passwd,@Name, @Email)";
        SqlCommand cmd = new SqlCommand(sql, con);

        //매개변수 지정
        cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Passwd", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox5.Text);

        //실행
        try /*try에서 오류나면 catch실행*/
        {
            con.Open();
            int num = cmd.ExecuteNonQuery(); /*이 명령문이 실행되면 1 아니면 0*/
            con.Close();

            if (num >= 1)
            {
                FormsAuthentication.SetAuthCookie(TextBox1.Text, false);
                String str = @"<script>alert('회원가입이 완료되었습니다.');";
                str += "location.href='/main.aspx';";
                str += "</script>";

                Response.Write(str);
            }

            else
            {
                Response.Write("<script>alert('회원가입에 실패하였습니다');</script>");
            }
        }

        catch (Exception ex) /*오류메세지 출력*/
        {
            Response.Write(ex.Message);
            Response.Write("<script>alert('회원가입에 실패하였습니다');</script>");
        }

        finally
        {

        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        /*팝업창 띄우기 위해 스크립트 호출*/
        string str = @" <script> window.open('" + "ID_overlap.aspx?id="+ TextBox1.Text+ "','myWindow','top=200, left=200, width=600, height=300, toolbar=no, location=no, status=no')"+"</script>";
        Response.Write(str);
    }

    private bool IsMemberExists()
    {
        bool result = true;

        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //명령
        String sql = "select * from Drself_join Where UserID=@UserID";
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