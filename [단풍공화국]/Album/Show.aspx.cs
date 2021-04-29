using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

public partial class Album_Show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string imgID = Request.QueryString["imgID"];

            if(imgID == null)
            {
                return; // 쿼리 문자열이 없으면 그냥 종료
            }

            //조회수 1 증가
            string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "Update Photos Set hit = hit + 1 where imgID = "+ imgID;
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CheckPassword.aspx?mode=edit&imgID=" + Request.QueryString["imgID"]);
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CheckPassword.aspx?mode=del&imgID=" + Request.QueryString["imgID"]);
    }
}