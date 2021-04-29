using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class sub4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            //실행
            String sql = "select explain_title from explain";
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㄱ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㄴ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㄷ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㄹ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅁ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅂ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅅ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅇ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅈ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅊ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅋ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅌ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅍ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_alpha='ㅎ'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    } //ㅎ

    protected void Button18_Click(object sender, EventArgs e)//A
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'A%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button20_Click(object sender, EventArgs e)//C
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'C%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'D%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button31_Click(object sender, EventArgs e)//N
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'N%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button25_Click(object sender, EventArgs e)//H
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'H%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e) //문자 검색
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like '%'+@explain_title + '%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@explain_title", TextBox1.Text);

        con.Open();

        DataTable dt = new DataTable();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        /*
        SqlDataReader rd = cmd.ExecuteReader();

        if(rd.Read())
        {
            GridView1.DataSource = rd;
            GridView1.DataBind();
        }

        con.Close();
        */
    }

    protected void Button44_Click(object sender, EventArgs e)//새로고침
    {
        Response.Redirect("/sub4.aspx");
    }

    protected void Button19_Click(object sender, EventArgs e)//B
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'B%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button22_Click(object sender, EventArgs e)//E
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'E%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button23_Click(object sender, EventArgs e)//F
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'F%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button24_Click(object sender, EventArgs e)//G
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'G%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button26_Click(object sender, EventArgs e)//I
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'I%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button27_Click(object sender, EventArgs e)//J
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'J%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button28_Click(object sender, EventArgs e)//K
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'K%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button29_Click(object sender, EventArgs e)//L
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'L%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button30_Click(object sender, EventArgs e)//M
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'M%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button32_Click(object sender, EventArgs e)//O
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'O%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button33_Click(object sender, EventArgs e)//P
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'P%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button34_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'Q%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button35_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'R%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button36_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'S%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button37_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'T%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button38_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'U%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button39_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'V%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button40_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'W%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button41_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'X%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button42_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'Y%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button43_Click(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = "select explain_title from explain where explain_title Like 'Z%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close();
        Label1.Text = "해당 정보가 존재하지 않습니다.";
    }

    protected void Button45_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://www.hira.or.kr/re/term/getExplainList.do?pgmid=HIRAA030407000000','_blank');</script>");
    }
}