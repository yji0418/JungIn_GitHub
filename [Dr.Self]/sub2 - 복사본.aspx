<%@ Page Title="이건 무슨약?" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sub2 - 복사본.aspx.cs" Inherits="sub2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
/* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}



        *::selection 
{
    background-color: #63CC63;
    color: white;
}


        .auto-style1{
            height: 2500px;
            width: 1350px;
        }

        .main{
            height: 550px;
            width: 800px;
            margin: 100px 0 0 280px;
            border:solid 2px #A1B859;
            font-size:20px;
        }

        .enable_btn
        {
            border-right:2px solid black; 
            border-left:2px solid black; 
            border-top:2px solid black;
            border-bottom:1px solid black;
            background:none;
            background-color:#c7c3c2;
            font-family:NanumBarunGothic;
            font-weight:900;
            font-size:18pt;
            color:black;
            text-align:center; 
        }

        .name_txt
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
        }

        .radio_btn
        {
            border:1px solid #496003;
        }

        .shape_btn
        {
            border:1px solid #496003;
        }

        .auto-style2 {
            width: 1300px;
        }
        .auto-style3 {
            width: 204px;
            text-align: center;
        }
        .auto-style4 {
            width: 204px;
            height: 41px;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            height: 41px;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style6 {
            text-align: center;
        }


        .label2_tt
        {
            color:black;
            text-decoration:none;
            cursor:pointer;           
        }

        .label2_tt:hover
        {
            color:#496003;
        }


        a
        {
            text-decoration:none;
        }

        .mainbar2
{
    color:#496003;
}

        .btn
        {
            background-color:none;
            border:none;
            font-size:16pt;
            font-weight:900;
            background:none;
            font-family:NanumSquareRound;
            cursor:pointer;
        }

        .btn2
        {
            background-color:none;
            border:none;
            font-size:16pt;
            font-weight:900;
            background:none;
            font-family:NanumSquareRound;
            cursor:pointer;
        }

        .btn2:hover
        {
            color:#496003;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
        <div class="main">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; 제품명&nbsp;
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="name_txt" Height="40px" Width="300px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;
            성분명&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="name_txt" Height="40px"></asp:TextBox>
            <br />
            <br />
            <hr style="border:1px Dashed"/>
            <br />&nbsp;&nbsp;&nbsp; 회사명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="300px" Height="40px" CssClass="name_txt"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;투여경로&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="40px" CssClass="name_txt" Width="220px"></asp:TextBox>
            <br />
            <br />
            <hr style="border:1px Dashed"/>
            <br />&nbsp;&nbsp;&nbsp; 제형 선택&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" style="margin-left:15px;" CellPadding="0" CellSpacing="10" Visible="False">
                <asp:ListItem>정제</asp:ListItem>
                <asp:ListItem>경질캡슐</asp:ListItem>
                <asp:ListItem Value="연질캡슐">연질캡슐</asp:ListItem>
                <asp:ListItem Value="기타">기타</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton9" runat="server" Height="60px" ImageUrl="~/img/hard.jpg" OnClick="ImageButton9_Click1" Width="60px" />
&nbsp;&nbsp;
&nbsp;<asp:ImageButton ID="ImageButton10" runat="server" Height="60px" ImageUrl="~/img/half_soft.jpg" OnClick="ImageButton10_Click" Width="60px" />
&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton11" runat="server" Height="60px" ImageUrl="~/img/soft.jpg" OnClick="ImageButton11_Click" Width="60px" />
&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton12" runat="server" Height="60px" ImageUrl="~/img/extra.jpg" OnClick="ImageButton12_Click" Width="60px" />
            <br />
            <hr style="border:1px Dashed"/><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;색상<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Visible="False">
                <asp:ListItem>빨강</asp:ListItem>
                <asp:ListItem>주황</asp:ListItem>
                <asp:ListItem>노랑</asp:ListItem>
                <asp:ListItem>초록</asp:ListItem>
                <asp:ListItem>파랑</asp:ListItem>
                <asp:ListItem>보라</asp:ListItem>
                <asp:ListItem>투명</asp:ListItem>
                <asp:ListItem>하양</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;


            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton8" runat="server" style="border:1px solid #666666;" Height="50px" ImageUrl="~/img/white.jpg" Width="50px" OnClick="ImageButton8_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/img/red.jpg" Width="50px" OnClick="ImageButton1_Click" CssClass="radio_btn"/>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/img/orange.jpg" OnClick="ImageButton2_Click" Width="50px" CssClass="radio_btn"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="~/img/yellow.jpg" OnClick="ImageButton3_Click" Width="50px" CssClass="radio_btn"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" ImageUrl="~/img/green.jpg" OnClick="ImageButton4_Click" Width="50px" CssClass="radio_btn"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" Height="50px" ImageUrl="~/img/blue.jpg" OnClick="ImageButton5_Click" Width="50px" CssClass="radio_btn"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" Height="50px" ImageUrl="~/img/purple.jpg" OnClick="ImageButton6_Click" Width="50px" CssClass="radio_btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:ImageButton ID="ImageButton7" runat="server" Height="50px" ImageUrl="~/img/invisible.jpg" OnClick="ImageButton7_Click" Width="50px" style="border:1px solid #666666;" CssClass="radio_btn"/>

        </div>
        <div align="center">
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="|  다 시  입 력  |" Height="40px" Width="140px" OnClick="Button1_Click" CssClass="btn"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="|  검 색  |" Height="40px" Width="100px" OnClick="Button2_Click" CssClass="btn2" />
        </div>
        <br />
        <br />

        <div class="result">
            <asp:Panel ID="Panel1" runat="server" Visible="false">
                <h2>검색 결과</h2>
                <br />
                <asp:Button ID="Button3" runat="server" Text="전체" Enabled="False" CssClass="enable_btn" Width="130px" Height="40px"/>
                <br />
                <hr  style="margin-top:-1px; border:2px solid black;"/>
                &nbsp;<br />

                        <br />
                <asp:DataList ID="DataList1" runat="server" Width="1262px" DataKeyField="name">
                    <ItemTemplate>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style4">이미지</td>
                                <td class="auto-style5">이름</td>
                                <td class="auto-style5">성분명</td>
                                <td class="auto-style5">회사명</td>
                                <td class="auto-style5">제형</td>
                                <td class="auto-style5">색깔</td>
                                <td class="auto-style5">투여경로</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~" + Eval("img") %>' Width="200px" />
                                </td>
                                <td class="auto-style6">
                                    <a href="show_drug.aspx?name=<%#Eval("name") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>' CssClass="label2_tt" ToolTip="약품 상세정보 페이지로 이동"></asp:Label></a>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ingre1") %>'></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ingre2") %>'></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("shape") %>'></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("color") %>'></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("route") %>'></asp:Label>
                                </td>
                                <caption>
                                    <hr style="border:1px solid #787878;"/>
                                </caption>
                            </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <hr style="border:2px solid black;"/>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

