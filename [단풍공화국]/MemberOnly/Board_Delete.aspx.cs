using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_Board_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string seq = Request.QueryString["sn"];

        string conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = "Select ref_id, fName from board Where seq=" + seq;
        SqlCommand cmd = new SqlCommand(sql, con);
        string refString = "";
        string fileName = ""; // 첨부파일이 있으면 삭제하려고..

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            refString = dr["ref_id"].ToString();
            fileName = dr["fName"].ToString();
        }

        dr.Close();
        con.Close();

        // (2) 참조번호가 같으면서 삭제되지 않은 글 수를 얻음
        string sql2 = @"Select count(*) From board Where ref_id=" + refString + " AND deleted != 'Y' ";
        SqlCommand cmd2 = new SqlCommand(sql2, con);

        con.Open();
        int count = (int)cmd2.ExecuteScalar();
        con.Close();

        // (3) 참조번호가 같으면서 삭제되지 않은 글이 1개 뿐이면 무조건 삭제
        if (count == 1)
        {
            string sql3 = @"Delete From board Where ref_id=" + refString;
            SqlCommand cmd3 = new SqlCommand(sql3, con);
            con.Open();
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        // (4) 참조번호가 같은 글이 여러 개이면, 본 글을 삭제하지 말고 deleted="Y'로 갱신
        else
        {
            string sql4 = @"Update board Set deleted='Y' Where seq =" + seq;
            SqlCommand cmd4 = new SqlCommand(sql4, con);
            con.Open();
            cmd4.ExecuteNonQuery();
            con.Close();
        }

        if (fileName != "") // 어쨋든, 첨부파일은 삭제
        {
            FileInfo myFile = new FileInfo(Server.MapPath("~/Uploads/") + fileName);
            myFile.Delete();
        }
        Response.Redirect("~/Board/Board_List.aspx");
    }
}