using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Album_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string imgID = Request.QueryString["imgID"];

        String conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "Select fName from Photos Where imgID = " + imgID;
        SqlCommand cmd = new SqlCommand(sql, con);

        con.Open();
        string fName = cmd.ExecuteScalar().ToString();
        con.Close();

        string sql2 = @"Delete From Photos Where imgID=" + imgID;
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();

        if (fName != null)
        {
            FileInfo myFile = new FileInfo(Server.MapPath("~/Photos/") + fName);
            myFile.Delete();
        }
        Response.Redirect("List.aspx");
        con.Close();

    }
}