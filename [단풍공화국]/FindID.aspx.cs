using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FindID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            TextBox1.Text = Request.QueryString["id"]; //Register.aspx에서 아이디값을 입력하고 중복확인 버튼을 클릭하여 중복확인 창이 떴을 때 그대로 입력값이 유지되게 함
            Button2.Visible = false; //[사용]버튼 안보이게
            Page.Validate(); //페이지의 유효성검사 컨트롤 검사
            CheckUserIdExists();
        }               
    }

    private void CheckUserIdExists()
    {
        if(IsValid) //이 페이지가 유효하면
        {
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

            if(rd.Read())
            {
                Label1.Text = "사용중인 아이디입니다.";
                Button2.Visible = false;
            }

            else
            {
                Label1.Text = "사용가능한 아이디입니다.";
                Button2.Visible = true;
            }

            rd.Close();

            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String str = @"<script>"
                    + "opener.document.getElementById('ContentPlaceHolder1_TextBox1').value = '" + TextBox1.Text + "'; self.close(); </script>";

        Response.Write(str);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //중복확인 버튼
        CheckUserIdExists();
    }
}