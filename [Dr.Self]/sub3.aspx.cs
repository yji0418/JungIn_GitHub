using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sub3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            //실행
            String sql = @"select name, ingre1 from dbo.drungDB$";

            SqlCommand cmd = new SqlCommand(sql, con);


            con.Open();

            DataTable dt = new DataTable();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = @"select name, ingre1 from dbo.drungDB$ 
                           where name Like '%'+@name + '%' 
                           OR ingre1 Like '%' + @ingre1 + '%' 
                           OR ingre2 Like '%' + @ingre2 + '%'
                           OR ingre3 Like '%' + @ingre3 + '%'
                           OR ingre4 Like '%' + @ingre3 + '%'
                           OR ingre5 Like '%' + @ingre3 + '%'";

        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre3", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre4", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre5", TextBox1.Text);

        con.Open();

        DataTable dt = new DataTable();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e) //다시검색
    {
        TextBox1.Text = "";

        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = @"select name, ingre1 from dbo.drungDB$";

        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();

        DataTable dt = new DataTable();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = @"select * from dbo.drungDB2$ where name Like '%' + @name+ '%'";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@name", GridView1.SelectedValue);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            Label18.Text = rd["name"].ToString();

            Label2.Text = rd["side_effect1"].ToString();
            Label3.Text = rd["side_effect2"].ToString();
            Label4.Text = rd["side_effect3"].ToString();
            Label5.Text = rd["side_effect4"].ToString();

            Label6.Text = rd["side_effect6"].ToString();
            Label7.Text = rd["side_effect7"].ToString();
            Label8.Text = rd["side_effect8"].ToString();
            Label9.Text = rd["side_effect9"].ToString();

            Label10.Text = rd["side_effect11"].ToString();
            Label11.Text = rd["side_effect12"].ToString();
            Label12.Text = rd["side_effect14"].ToString();
            Label13.Text = rd["side_effect15"].ToString();
        }

        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://www.health.kr/interaction/food.asp','_blank');</script>");
    }
}