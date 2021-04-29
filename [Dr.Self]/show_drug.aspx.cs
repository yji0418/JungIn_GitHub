using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show_drug : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string name = Request["name"];

            //연결
            String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            //(2) 글 읽어오기
            string sql2 = "Select * from dbo.drungDB2$ where name=@name";
            SqlCommand cmd2 = new SqlCommand(sql2, con);

            cmd2.Parameters.AddWithValue("@name", name);

            con.Open();
            SqlDataReader rd = cmd2.ExecuteReader();

            if (rd.Read())
            {
                Image1.ImageUrl ="~"+rd["img"].ToString();
                Label2.Text = rd["name"].ToString();
                Label3.Text = rd["ingre1"].ToString();
                Label4.Text = rd["ingre2"].ToString();
                Label5.Text = rd["route"].ToString();
                Label6.Text = rd["shape"].ToString();
                Label7.Text = rd["color"].ToString();
                Label8.Text = rd["c_name"].ToString();

                Label9.Text = rd["effect1"].ToString();
                Label10.Text = rd["effect2"].ToString();
                Label11.Text = rd["effect3"].ToString();
                Label12.Text = rd["effect4"].ToString();
                Label13.Text = rd["effect5"].ToString();

                Label14.Text = rd["side_effect1"].ToString();
                Label15.Text = rd["side_effect2"].ToString();
                Label16.Text = rd["side_effect3"].ToString();
                Label17.Text = rd["side_effect4"].ToString();

                Label18.Text = rd["side_effect6"].ToString();
                Label19.Text = rd["side_effect7"].ToString();
                Label20.Text = rd["side_effect8"].ToString();
                Label21.Text = rd["side_effect9"].ToString();

                Label22.Text = rd["side_effect11"].ToString();
                Label23.Text = rd["side_effect12"].ToString();

                Label24.Text = rd["side_effect14"].ToString();
                Label25.Text = rd["side_effect15"].ToString();
            }
        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://www.health.kr/','_blank');</script>");
    }
}