using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class sub1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Panel1.Visible = false; //머리 상세부위 숨기기
            Panel2.Visible = false; //상체 상세부위 숨기기
            Panel3.Visible = false; //하체 상세부위 숨기기
        }
    }


    protected void Button_Head_Click(object sender, EventArgs e) //머리 버튼 클릭
    {
        if(Panel1.Visible==true) //한번누르면 보이고, 다시한번 더 누르면 안보이게
        {
            Panel1.Visible = false;
        }

        else
        {
            Panel1.Visible = true;
        }
    }

    protected void Button_Middle_Click(object sender, EventArgs e)//Panel2
    {
        if (Panel2.Visible == true)
        {
            Panel2.Visible = false;
        }

        else
        {
            Panel2.Visible = true;
        }
    }

    protected void Button_Bottom_Click(object sender, EventArgs e)//Panel3
    {
        if (Panel3.Visible == true)
        {
            Panel3.Visible = false;
        }

        else
        {
            Panel3.Visible = true;
        }
    }


    protected void Button2_Click(object sender, EventArgs e)//눈
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='눈'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text= rd["result5_explain"].ToString();
            Label11.Text = Button2.Text;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)//이마
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='이마'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button1.Text;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)//귀
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='귀'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button3.Text;
        }
    }

    protected void Button4_Click(object sender, EventArgs e)//코
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='코'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button4.Text;
        }
    }

    protected void Button5_Click(object sender, EventArgs e)//치아
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='치아'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button5.Text;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)//입술
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='입술'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button6.Text;
        }
    }

    protected void Button7_Click(object sender, EventArgs e)//목
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='목'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button7.Text;
        }
    }

    protected void Button8_Click(object sender, EventArgs e)//턱
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='턱'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button8.Text;
        }
    }

    protected void Button9_Click(object sender, EventArgs e)//어깨
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='어깨'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button9.Text;
        }
    }

    protected void Button10_Click(object sender, EventArgs e)//팔
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='팔'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button10.Text;
        }
    }

    protected void Button11_Click(object sender, EventArgs e)//가슴
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='가슴'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button11.Text;
        }
    }

    protected void Button12_Click(object sender, EventArgs e)//명치
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='명치'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button12.Text;
        }
    }

    protected void Button13_Click(object sender, EventArgs e)//윗배
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='윗배'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button13.Text;
        }
    }

    protected void Button14_Click(object sender, EventArgs e)//배꼽
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='배꼽'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button14.Text;
        }
    }

    protected void Button15_Click(object sender, EventArgs e)//아랫배
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='아랫배'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button15.Text;
        }
    }

    protected void Button16_Click(object sender, EventArgs e)//허벅지
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='허벅지'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button16.Text;
        }
    }

    protected void Button22_Click(object sender, EventArgs e)//허리
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='허리'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button22.Text;
        }
    }

    protected void Button17_Click(object sender, EventArgs e)//무릎
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='무릎'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button17.Text;
        }
    }

    protected void Button18_Click(object sender, EventArgs e)//종아리
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='종아리'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button18.Text;
        }
    }

    protected void Button19_Click(object sender, EventArgs e)//발
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='발'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button19.Text;
        }
    }

    protected void Button20_Click(object sender, EventArgs e)//생식기
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='생식기'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button20.Text;
        }
    }

    protected void Button21_Click(object sender, EventArgs e)//엉덩이
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //(2) 글 읽어오기
        string sql2 = "Select * from dbo.mainDB$ Where sum_area='엉덩이'";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        SqlDataReader rd = cmd2.ExecuteReader();

        if (rd.Read())
        {
            Label1.Text = rd["result1"].ToString();
            Label2.Text = rd["result1_explain"].ToString();
            Label3.Text = rd["result2"].ToString();
            Label4.Text = rd["result2_explain"].ToString();
            Label5.Text = rd["result3"].ToString();
            Label6.Text = rd["result3_explain"].ToString();
            Label7.Text = rd["result4"].ToString();
            Label8.Text = rd["result4_explain"].ToString();
            Label9.Text = rd["result5"].ToString();
            Label10.Text = rd["result5_explain"].ToString();
            Label11.Text = Button21.Text;
        }
    }

    protected void Button23_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('https://terms.naver.com/list.nhn?cid=50871&categoryId=50871','_blank');</script>");
    }
}

