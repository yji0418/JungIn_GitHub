using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; //Web.config 활용
using System.Data;


public partial class DBtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = User.Identity.Name;

            string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "select * from Personal";
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read())
            {
                ImageButton1.ImageUrl = "~/Personal_img/" + rd["img"].ToString();
                Label2.Text = id;
                Label3.Text = rd["nickname"].ToString();
                Label4.Text = rd["Lv"].ToString();
                Label5.Text = rd["job"].ToString();
                Label6.Text = rd["server"].ToString();
                Label7.Text = rd["s_attack"].ToString();
                Label8.Text = rd["s_HP"].ToString();
                Label9.Text = rd["s_MP"].ToString();
                Label10.Text = rd["s_STR"].ToString();
                Label11.Text = rd["s_DEX"].ToString();
                Label12.Text = rd["s_INT"].ToString();
                Label13.Text = rd["s_LUK"].ToString();
                Label14.Text = rd["s_critical"].ToString();
                Label15.Text = rd["s_boss"].ToString();
                Label16.Text = rd["s_ignore"].ToString();
            }

            rd.Close();
            con.Close();
        }

    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string id = User.Identity.Name;

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "select * from Personal";
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            string nickname = rd["nickname"].ToString();
            Response.Write("<script>window.open('https://maple.gg/u/" + nickname + "','_blank');</script>");
        }

        rd.Close();
        con.Close();


    }
}