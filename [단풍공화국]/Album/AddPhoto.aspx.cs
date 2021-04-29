using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.IO; //새롭게 추가

public partial class Album_AddPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        //사진 올리기 버튼
        string fName = "";

        if(FileUpload1.HasFile== false) //파일 업로드에 파일이 들어가 있는가!!
        {
            Label2.Text = "사진을 첨부해 주세요";
        }

        else
        {
            //(1) 사진을 서버에 저장 (~/Photos/ 폴더에)
            fName = FileUpload1.FileName;
            FileInfo myFile = new FileInfo(Server.MapPath("~/Photos/") + fName);

            if (myFile.Exists)
            {
                //이미 같은 이름의 파일이 있다면?
                myFile = NewFileName(myFile);
                fName = myFile.Name;
            }
            FileUpload1.SaveAs(myFile.FullName);

            //(2) DB에 레코드를 insert(사진 파일명을 fName 필드에)

            //연결
            String conStr = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"Insert into Photos (title, body, name, pwd, fName, userID) Values(@title, @body, @name, @pwd, @fName, @userID)";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@body", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pwd", TextBox4.Text);
            cmd.Parameters.AddWithValue("@fName", fName);
            cmd.Parameters.AddWithValue("@userID", User.Identity.Name);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("List.aspx");
        }
    }

    private FileInfo NewFileName(FileInfo myFile)
    {
        int num = 0; //파일명 뒤에 붙일 숫자
        string fileName = "";
        string fName = myFile.Name.Substring(0,(myFile.Name.Length- myFile.Extension.Length));
        string fExtension = myFile.Extension;

        do //파일명 붙이는 부분
        {
            num++;
            fileName = fName + "_" + num + fExtension;
            myFile = new FileInfo(Server.MapPath("~/Photos/") + fileName);
        } while (myFile.Exists);

        return myFile;
    }
}