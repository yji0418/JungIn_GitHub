using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
             if (Page.User.Identity.IsAuthenticated)
                {
                    //로그인이 되어 있음
                    Label1.Text = Page.User.Identity.Name + "님 환영합니다";
                    Panel1.Visible = false; //패널 1 숨김
                     Panel3.Visible = false;
                }

                else
                {
                    Label1.Text = "";
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    
                }
            }


    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("/main.aspx"); //현재 페이지를 다시 띄움*/
    }
}


