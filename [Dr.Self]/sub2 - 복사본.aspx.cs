using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sub2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        //실행
        String sql = @"select * from dbo.drungDB$
                            where
                            name LIKE '%'+@name + '%' AND 
                            ingre1 LIKE '%' + @ingre1 + '%' AND
                            ingre2 LIKE '%' + @ingre2 + '%' AND
                            ingre3 LIKE '%' + @ingre3 + '%' AND
                            ingre4 LIKE '%' + @ingre4 + '%' AND
                            c_name LIKE '%' + @c_name + '%' AND 
                            shape LIKE '%' + @shape + '%' AND 
                            color LIKE '%' + @color + '%' AND 
                            route LIKE '%' + @route + '%'";

        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ingre1", TextBox2.Text);
        cmd.Parameters.AddWithValue("@ingre2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@ingre3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@ingre4", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c_name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@shape", RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@color", RadioButtonList2.SelectedValue);
        cmd.Parameters.AddWithValue("@route", TextBox4.Text);

        con.Open();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();

        con.Close();
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)//빨강
    {
        if (RadioButtonList2.Items[0].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = true;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red_selected.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)//주황
    {
        if (RadioButtonList2.Items[1].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = true;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange_selected.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)//노랑
    {
        if (RadioButtonList2.Items[2].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = true;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow_selected.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)//초록
    {
        if (RadioButtonList2.Items[3].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = true;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green_selected.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)//파랑
    {
        if (RadioButtonList2.Items[4].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = true;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue_selected.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)//보라
    {
        if (RadioButtonList2.Items[5].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = true;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple_selected.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)//투명
    {
        if (RadioButtonList2.Items[6].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = true;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible_selected.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)//하양
    {
        if (RadioButtonList2.Items[7].Selected == false)
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = true;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white_selected.jpg";
        }

        else
        {
            RadioButtonList2.Items[0].Selected = false;
            RadioButtonList2.Items[1].Selected = false;
            RadioButtonList2.Items[2].Selected = false;
            RadioButtonList2.Items[3].Selected = false;
            RadioButtonList2.Items[4].Selected = false;
            RadioButtonList2.Items[5].Selected = false;
            RadioButtonList2.Items[6].Selected = false;
            RadioButtonList2.Items[7].Selected = false;

            ImageButton1.ImageUrl = "~/img/red.jpg";
            ImageButton2.ImageUrl = "~/img/orange.jpg";
            ImageButton3.ImageUrl = "~/img/yellow.jpg";
            ImageButton4.ImageUrl = "~/img/green.jpg";
            ImageButton5.ImageUrl = "~/img/blue.jpg";
            ImageButton6.ImageUrl = "~/img/purple.jpg";
            ImageButton7.ImageUrl = "~/img/invisible.jpg";
            ImageButton8.ImageUrl = "~/img/white.jpg";
        }
    }


    protected void ImageButton9_Click1(object sender, ImageClickEventArgs e)
    {

        if (RadioButtonList1.Items[0].Selected == false)
        {
            RadioButtonList1.Items[0].Selected = true;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard_selected.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }

        else
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        if (RadioButtonList1.Items[1].Selected == false)
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = true;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft_selected.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }

        else
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        if (RadioButtonList1.Items[2].Selected == false)
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = true;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft_selected.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }

        else
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        if (RadioButtonList1.Items[3].Selected == false)
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = true;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra_selected.jpg";
        }

        else
        {
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
            RadioButtonList1.Items[3].Selected = false;

            ImageButton9.ImageUrl = "~/img/hard.jpg";
            ImageButton10.ImageUrl = "~/img/half_soft.jpg";
            ImageButton11.ImageUrl = "~/img/soft.jpg";
            ImageButton12.ImageUrl = "~/img/extra.jpg";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/sub2.aspx");
    }
}