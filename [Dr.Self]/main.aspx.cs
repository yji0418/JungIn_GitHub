using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //패이지가 처음 로드되었을 때 얼굴이미지가 나타나도록 Panel설정
        Panel1.Visible = true; //머리
        Panel2.Visible = false; //상체
        Panel3.Visible = false; //하체
        Panel4.Visible = false; //결과
        Button_Top.CssClass = "tablink";
        Button_Bottom.CssClass = "tablink";
        //페이지가 처음 로드되었을 때 Combobox2가 머리에 해당하는 상세부위만 나오도록 로딩
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;
    }
    
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    { 
        if (this.ComboBox1.SelectedValue == "머리") //Combobox1에서 [머리]를 선택했다면
        {
            for (int i = 9; i < 23; i++)
            {
                this.ComboBox2.Items[i].Enabled = false; 
                //Combobox2목록의 9~22까지 나타나지 않게 설정
            }
            
            //머리 상세부위만 나타나게함
            this.ComboBox2.Items[1].Enabled = true; //이마
            this.ComboBox2.Items[2].Enabled = true; //눈
            this.ComboBox2.Items[3].Enabled = true; //귀
            this.ComboBox2.Items[4].Enabled = true; //코
            this.ComboBox2.Items[5].Enabled = true; //치아
            this.ComboBox2.Items[6].Enabled = true; //입술
            this.ComboBox2.Items[7].Enabled = true; //목
            this.ComboBox2.Items[8].Enabled = true; //턱
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        if (this.ComboBox1.SelectedValue == "상체")
        {
            for (int i = 1; i < 9; i++)
            {
                this.ComboBox2.Items[i].Enabled = false;
            }
            for (int i = 17; i < 23; i++)
            {
                this.ComboBox2.Items[i].Enabled = false;
            }
            //상체 상세부위
            this.ComboBox2.Items[9].Enabled = true;
            this.ComboBox2.Items[10].Enabled = true;
            this.ComboBox2.Items[11].Enabled = true;
            this.ComboBox2.Items[12].Enabled = true;
            this.ComboBox2.Items[13].Enabled = true;
            this.ComboBox2.Items[15].Enabled = true;
            this.ComboBox2.Items[16].Enabled = true;
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;

        }

        if (this.ComboBox1.SelectedValue == "하체")
        {
            for (int i = 1; i < 17; i++)
            {
                this.ComboBox2.Items[i].Enabled = false;
            }
            //하체 상세부위
            this.ComboBox2.Items[17].Enabled = true;
            this.ComboBox2.Items[18].Enabled = true;
            this.ComboBox2.Items[19].Enabled = true;
            this.ComboBox2.Items[20].Enabled = true;
            this.ComboBox2.Items[21].Enabled = true;
            this.ComboBox2.Items[22].Enabled = true;
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }

    protected void ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (this.ComboBox2.SelectedValue == "이마")
        {
            this.ComboBox3.Items[1].Enabled = true;
            this.ComboBox3.Items[2].Enabled = true;
            for (int i = 3; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "눈")
        {
            this.ComboBox3.Items[3].Enabled = true;
            this.ComboBox3.Items[4].Enabled = true;
            this.ComboBox3.Items[5].Enabled = true;
            for (int i = 1; i < 3; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 6; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "귀")
        {
            this.ComboBox3.Items[6].Enabled = true;
            this.ComboBox3.Items[7].Enabled = true;
            this.ComboBox3.Items[8].Enabled = true;
            for (int i = 1; i < 6; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 9; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "코")
        {
            this.ComboBox3.Items[9].Enabled = true;
            this.ComboBox3.Items[10].Enabled = true;
            this.ComboBox3.Items[11].Enabled = true;
            for (int i = 1; i <9; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 12; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "치아")
        {
            this.ComboBox3.Items[12].Enabled = true;
            this.ComboBox3.Items[13].Enabled = true;
            this.ComboBox3.Items[14].Enabled = true;
            for (int i = 1; i < 12; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 15; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "입술")
        {
            this.ComboBox3.Items[15].Enabled = true;
            this.ComboBox3.Items[16].Enabled = true;
            this.ComboBox3.Items[17].Enabled = true;
            for (int i = 1; i < 15; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 18; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "목")
        {
            this.ComboBox3.Items[18].Enabled = true;
            this.ComboBox3.Items[19].Enabled = true;
            this.ComboBox3.Items[20].Enabled = true;
            for (int i = 1; i < 18; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 21; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "턱")
        {
            this.ComboBox3.Items[21].Enabled = true;
            this.ComboBox3.Items[22].Enabled = true;
            this.ComboBox3.Items[23].Enabled = true;
            for (int i = 1; i < 21; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 24; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink_btn";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "어깨")
        {
            this.ComboBox3.Items[24].Enabled = true;
            this.ComboBox3.Items[25].Enabled = true;
            this.ComboBox3.Items[26].Enabled = true;
            for (int i = 1; i < 24; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 27; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "팔")
        {
            this.ComboBox3.Items[27].Enabled = true;
            this.ComboBox3.Items[28].Enabled = true;
            this.ComboBox3.Items[29].Enabled = true;
            for (int i = 1; i < 27; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 30; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "가슴")
        {
            this.ComboBox3.Items[30].Enabled = true;
            this.ComboBox3.Items[31].Enabled = true;
            this.ComboBox3.Items[32].Enabled = true;
            for (int i = 1; i < 30; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 33; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "명치")
        {
            this.ComboBox3.Items[33].Enabled = true;
            this.ComboBox3.Items[34].Enabled = true;
            this.ComboBox3.Items[35].Enabled = true;
            for (int i = 1; i < 33; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 36; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "윗배")
        {
            this.ComboBox3.Items[36].Enabled = true;
            this.ComboBox3.Items[37].Enabled = true;
            this.ComboBox3.Items[38].Enabled = true;
            for (int i = 1; i < 36; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 39; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "아랫배")
        {
            this.ComboBox3.Items[39].Enabled = true;
            this.ComboBox3.Items[40].Enabled = true;
            this.ComboBox3.Items[41].Enabled = true;
            for (int i = 1; i < 39; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 42; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        else if (this.ComboBox2.SelectedValue == "허리")
        {
            this.ComboBox3.Items[42].Enabled = true;
            this.ComboBox3.Items[43].Enabled = true;
            this.ComboBox3.Items[44].Enabled = true;
            for (int i = 1; i < 42; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 45; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        /*else if (this.ComboBox2.SelectedValue == "배꼽")
        {
            this.ComboBox3.Items[45].Enabled = true;
            this.ComboBox3.Items[46].Enabled = true;
            this.ComboBox3.Items[47].Enabled = true;
            for (int i = 1; i < 45; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 48; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink_btn";
            Button_Bottom.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }*/

        else if (this.ComboBox2.SelectedValue == "허벅지")
        {
            this.ComboBox3.Items[48].Enabled = true;
            this.ComboBox3.Items[49].Enabled = true;
            this.ComboBox3.Items[50].Enabled = true;
            for (int i = 1; i < 48; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 51; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        else if (this.ComboBox2.SelectedValue == "무릎")
        {
            this.ComboBox3.Items[51].Enabled = true;
            this.ComboBox3.Items[52].Enabled = true;
            this.ComboBox3.Items[53].Enabled = true;
            for (int i = 1; i < 51; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 54; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        else if (this.ComboBox2.SelectedValue == "종아리")
        {
            this.ComboBox3.Items[54].Enabled = true;
            this.ComboBox3.Items[55].Enabled = true;
            this.ComboBox3.Items[56].Enabled = true;
            for (int i = 1; i < 54; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 57; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        else if (this.ComboBox2.SelectedValue == "발")
        {
            this.ComboBox3.Items[57].Enabled = true;
            this.ComboBox3.Items[58].Enabled = true;
            this.ComboBox3.Items[59].Enabled = true;
            for (int i = 1; i < 57; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 60; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        else if (this.ComboBox2.SelectedValue == "생식기")
        {
            this.ComboBox3.Items[60].Enabled = true;
            this.ComboBox3.Items[61].Enabled = true;
            this.ComboBox3.Items[62].Enabled = true;
            for (int i = 1; i < 60; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            for (int i = 63; i < 66; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        else if (this.ComboBox2.SelectedValue == "엉덩이")
        {
            this.ComboBox3.Items[63].Enabled = true;
            this.ComboBox3.Items[64].Enabled = true;
            this.ComboBox3.Items[65].Enabled = true;
            for (int i = 1; i < 63; i++)
            {
                this.ComboBox3.Items[i].Enabled = false;
            }
            Button_Head.CssClass = "tablink";
            Button_Top.CssClass = "tablink";
            Button_Bottom.CssClass = "tablink_btn";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

    }

    protected void Forehead_Click(object sender, ImageClickEventArgs e) //이미지로 이마를 클릭했을 때
    {
        ComboBox2.SelectedValue = "이마";
        this.ComboBox2.Items[0].Enabled = false; //위의 콤보박스 선택 변경 이벤트 처리와 동일
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[1].Enabled = true;
        this.ComboBox3.Items[2].Enabled = true;
        for (int i = 3; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }

    }

    protected void Eyes_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "눈";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[3].Enabled = true;
        this.ComboBox3.Items[4].Enabled = true;
        this.ComboBox3.Items[5].Enabled = true;
        for (int i = 1; i < 3; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 6; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }


    }

    protected void Left_ear_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "귀";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[6].Enabled = true;
        this.ComboBox3.Items[7].Enabled = true;
        this.ComboBox3.Items[8].Enabled = true;
        for (int i = 1; i < 6; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 9; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Nose_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "코";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[9].Enabled = true;
        this.ComboBox3.Items[10].Enabled = true;
        this.ComboBox3.Items[11].Enabled = true;
        for (int i = 1; i < 9; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 12; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }

    }

    protected void Right_ear_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "귀";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[6].Enabled = true;
        this.ComboBox3.Items[7].Enabled = true;
        this.ComboBox3.Items[8].Enabled = true;
        for (int i = 1; i < 6; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 9; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }


    }

    protected void Top_lips_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "치아";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[12].Enabled = true;
        this.ComboBox3.Items[13].Enabled = true;
        this.ComboBox3.Items[14].Enabled = true;
        for (int i = 1; i < 12; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 15; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Bottom_lips_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "입술";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[15].Enabled = true;
        this.ComboBox3.Items[16].Enabled = true;
        this.ComboBox3.Items[17].Enabled = true;
        for (int i = 1; i < 15; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 18; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Chin_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "턱";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[21].Enabled = true;
        this.ComboBox3.Items[22].Enabled = true;
        this.ComboBox3.Items[23].Enabled = true;
        for (int i = 1; i < 21; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 24; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Neck_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "목";
        this.ComboBox2.Items[0].Enabled = false;
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;

        this.ComboBox3.Items[18].Enabled = true;
        this.ComboBox3.Items[19].Enabled = true;
        this.ComboBox3.Items[20].Enabled = true;
        for (int i = 1; i < 18; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 21; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Shoulder_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "어깨";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[24].Enabled = true;
        this.ComboBox3.Items[25].Enabled = true;
        this.ComboBox3.Items[26].Enabled = true;
        for (int i = 1; i < 24; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 27; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Chest_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "가슴";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[30].Enabled = true;
        this.ComboBox3.Items[31].Enabled = true;
        this.ComboBox3.Items[32].Enabled = true;
        for (int i = 1; i < 30; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 33; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Left_arm_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "팔";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[27].Enabled = true;
        this.ComboBox3.Items[28].Enabled = true;
        this.ComboBox3.Items[29].Enabled = true;
        for (int i = 1; i < 27; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 30; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }
    
    protected void Anticardium_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "명치";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[33].Enabled = true;
        this.ComboBox3.Items[34].Enabled = true;
        this.ComboBox3.Items[35].Enabled = true;
        for (int i = 1; i < 33; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 36; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Right_arm_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "팔";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[27].Enabled = true;
        this.ComboBox3.Items[28].Enabled = true;
        this.ComboBox3.Items[29].Enabled = true;
        for (int i = 1; i < 27; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 30; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Top_stomach_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "윗배";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[36].Enabled = true;
        this.ComboBox3.Items[37].Enabled = true;
        this.ComboBox3.Items[38].Enabled = true;
        for (int i = 1; i < 36; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 39; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Left_loin_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "허리";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[42].Enabled = true;
        this.ComboBox3.Items[43].Enabled = true;
        this.ComboBox3.Items[44].Enabled = true;
        for (int i = 1; i < 42; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 45; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }
    

    /*protected void Navel_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "배꼽";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;
    }*/

    protected void Right_loin_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "허리";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[42].Enabled = true;
        this.ComboBox3.Items[43].Enabled = true;
        this.ComboBox3.Items[44].Enabled = true;
        for (int i = 1; i < 42; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 45; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Bottom_stomach_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "아랫배";
        Button_Top.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[14].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;

        this.ComboBox3.Items[39].Enabled = true;
        this.ComboBox3.Items[40].Enabled = true;
        this.ComboBox3.Items[41].Enabled = true;
        for (int i = 1; i < 39; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 42; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Butt_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "엉덩이";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[63].Enabled = true;
        this.ComboBox3.Items[64].Enabled = true;
        this.ComboBox3.Items[65].Enabled = true;
        for (int i = 1; i < 63; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Genital_organs_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "생식기";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[60].Enabled = true;
        this.ComboBox3.Items[61].Enabled = true;
        this.ComboBox3.Items[62].Enabled = true;
        for (int i = 1; i < 60; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 63; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Thigh_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "허벅지";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[48].Enabled = true;
        this.ComboBox3.Items[49].Enabled = true;
        this.ComboBox3.Items[50].Enabled = true;
        for (int i = 1; i < 48; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 51; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Knee_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "무릎";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[51].Enabled = true;
        this.ComboBox3.Items[52].Enabled = true;
        this.ComboBox3.Items[53].Enabled = true;
        for (int i = 1; i < 51; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 54; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Calf_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "종아리";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[54].Enabled = true;
        this.ComboBox3.Items[55].Enabled = true;
        this.ComboBox3.Items[56].Enabled = true;
        for (int i = 1; i < 54; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 57; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }

    protected void Feet_Click(object sender, ImageClickEventArgs e)
    {
        ComboBox2.SelectedValue = "발";
        Button_Bottom.CssClass = "tablink_btn";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;

        this.ComboBox3.Items[57].Enabled = true;
        this.ComboBox3.Items[58].Enabled = true;
        this.ComboBox3.Items[59].Enabled = true;
        for (int i = 1; i < 57; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
        for (int i = 60; i < 66; i++)
        {
            this.ComboBox3.Items[i].Enabled = false;
        }
    }


    protected void Button_Head_Click1(object sender, EventArgs e)
    {
        Button_Head.CssClass = "tablink_btn";
        Button_Top.CssClass = "tablink";
        Button_Bottom.CssClass = "tablink";
        ComboBox1.SelectedValue = "머리";
        
        if (Panel1.Visible == true)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        this.ComboBox2.Items[1].Enabled = true;
        this.ComboBox2.Items[2].Enabled = true;
        this.ComboBox2.Items[3].Enabled = true;
        this.ComboBox2.Items[4].Enabled = true;
        this.ComboBox2.Items[5].Enabled = true;
        this.ComboBox2.Items[6].Enabled = true;
        this.ComboBox2.Items[7].Enabled = true;
        this.ComboBox2.Items[8].Enabled = true;
        this.ComboBox2.Items[9].Enabled = false;
        this.ComboBox2.Items[10].Enabled = false;
        this.ComboBox2.Items[11].Enabled = false;
        this.ComboBox2.Items[12].Enabled = false;
        this.ComboBox2.Items[13].Enabled = false;
        this.ComboBox2.Items[14].Enabled = false;
        this.ComboBox2.Items[15].Enabled = false;
        this.ComboBox2.Items[16].Enabled = false;
        this.ComboBox2.Items[17].Enabled = false;
        this.ComboBox2.Items[18].Enabled = false;
        this.ComboBox2.Items[19].Enabled = false;
        this.ComboBox2.Items[20].Enabled = false;
        this.ComboBox2.Items[21].Enabled = false;
        this.ComboBox2.Items[22].Enabled = false;
    }

    protected void Button_Top_Click1(object sender, EventArgs e)
    {
        Button_Head.CssClass = "tablink";
        Button_Top.CssClass = "tablink_btn";
        Button_Bottom.CssClass = "tablink";
        ComboBox1.SelectedValue = "상체";
        if (Panel2.Visible == true)
        {
            Button_Head.CssClass = "tablink";
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        this.ComboBox2.Items[1].Enabled = false;
        this.ComboBox2.Items[2].Enabled = false;
        this.ComboBox2.Items[3].Enabled = false;
        this.ComboBox2.Items[4].Enabled = false;
        this.ComboBox2.Items[5].Enabled = false;
        this.ComboBox2.Items[6].Enabled = false;
        this.ComboBox2.Items[7].Enabled = false;
        this.ComboBox2.Items[8].Enabled = false;
        this.ComboBox2.Items[9].Enabled = true;
        this.ComboBox2.Items[10].Enabled = true;
        this.ComboBox2.Items[11].Enabled = true;
        this.ComboBox2.Items[12].Enabled = true;
        this.ComboBox2.Items[13].Enabled = true;
        this.ComboBox2.Items[15].Enabled = true;
        this.ComboBox2.Items[16].Enabled = true;
        this.ComboBox2.Items[17].Enabled = false;
        this.ComboBox2.Items[18].Enabled = false;
        this.ComboBox2.Items[19].Enabled = false;
        this.ComboBox2.Items[20].Enabled = false;
        this.ComboBox2.Items[21].Enabled = false;
        this.ComboBox2.Items[22].Enabled = false;
    }

    protected void Button_Bottom_Click1(object sender, EventArgs e)
    {
        Button_Head.CssClass = "tablink";
        Button_Top.CssClass = "tablink";
        Button_Bottom.CssClass = "tablink_btn";
        ComboBox1.SelectedValue = "하체";
        if (Panel3.Visible == true)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
        this.ComboBox2.Items[1].Enabled = false;
        this.ComboBox2.Items[2].Enabled = false;
        this.ComboBox2.Items[3].Enabled = false;
        this.ComboBox2.Items[4].Enabled = false;
        this.ComboBox2.Items[5].Enabled = false;
        this.ComboBox2.Items[6].Enabled = false;
        this.ComboBox2.Items[7].Enabled = false;
        this.ComboBox2.Items[8].Enabled = false;
        this.ComboBox2.Items[9].Enabled = false;
        this.ComboBox2.Items[10].Enabled = false;
        this.ComboBox2.Items[11].Enabled = false;
        this.ComboBox2.Items[12].Enabled = false;
        this.ComboBox2.Items[13].Enabled = false;
        this.ComboBox2.Items[14].Enabled = false;
        this.ComboBox2.Items[15].Enabled = false;
        this.ComboBox2.Items[16].Enabled = false;
        this.ComboBox2.Items[17].Enabled = true;
        this.ComboBox2.Items[18].Enabled = true;
        this.ComboBox2.Items[19].Enabled = true;
        this.ComboBox2.Items[20].Enabled = true;
        this.ComboBox2.Items[21].Enabled = true;
        this.ComboBox2.Items[22].Enabled = true;
    }

    protected void Button1_Click(object sender, EventArgs e) //결과보기 버튼
    {
        Panel4.Visible = true; //결과 패널 출력

        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString; //DB연결
        SqlConnection con = new SqlConnection(conStr);

        String sql = @"select * from dbo.mainDB$ Where 
                        sum_area = @sum_area
                        OR feeling1 = @feeling1
                        OR feeling2 = @feeling2
                        OR feeling3 = @feeling3";
        
        //쿼리 실행문에 따라 결과 출력
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@sum_area", ComboBox2.SelectedValue);
        cmd.Parameters.AddWithValue("@feeling1", ComboBox3.SelectedValue);
        cmd.Parameters.AddWithValue("@feeling2", ComboBox3.SelectedValue);
        cmd.Parameters.AddWithValue("@feeling3", ComboBox3.SelectedValue);

        con.Open();

        SqlDataReader rd = cmd.ExecuteReader();

        if(rd.Read())
        {
            Label1.Text = ComboBox1.SelectedValue;
            Label2.Text = ComboBox2.SelectedValue;
            Label3.Text = ComboBox3.SelectedValue;

            result1.Text = rd["result1"].ToString();
            result2.Text = rd["result2"].ToString();
            result3.Text = rd["result3"].ToString();
            result4.Text = rd["result4"].ToString();
            result1_drug.Text = rd["result1_drug"].ToString();
            result2_drug.Text = rd["result2_drug"].ToString();
            result3_drug.Text = rd["result3_drug"].ToString();
            result4_drug.Text = rd["result4_drug"].ToString();
        }

        con.Close();

    }

}
