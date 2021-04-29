using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Album_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "select * from Photos Where imgID = " + Request.QueryString["imgID"];
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();

            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
            {
                TextBox1.Text = rd["title"].ToString();
                TextBox2.Text = rd["body"].ToString();
                TextBox3.Text = rd["name"].ToString();
                Label3.Text = rd["fName"].ToString();
                Image1.ImageUrl = @"~/Photos/" + Label3.Text;
            }

            rd.Close();
            con.Close();
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Show.aspx?imgID=" + Request.QueryString["imgID"]);
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        string imgID = Request.QueryString["imgID"];

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"update Photos Set title=@title, body=@body, name=@name Where imgID = @imgID";

        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@title", TextBox1.Text);
        cmd.Parameters.AddWithValue("@body", TextBox2.Text);
        cmd.Parameters.AddWithValue("@name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@imgID", imgID);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Show.aspx?imgID=" + Request.QueryString["imgID"]);
    }
}