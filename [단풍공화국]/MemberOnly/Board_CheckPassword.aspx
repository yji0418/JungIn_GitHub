<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Board_CheckPassword.aspx.cs" Inherits="MemberOnly_Board_CheckPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
                            .util_text
        {
            font-family:메이플스토리 Light; 
            font-size:16pt; 
            background:none; 
            border:none; 
            color:black;
        }


                .header_name
        {
            display:inline;
            width:25%;
            float:left;
            color:black;
            height:50px;
        }

        .home_a pre
        {
            color:black;
            text-decoration-color:none;
        }

        .home_a pre:hover
        {
            color:#F68500;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
            <br /><br />
        <h2 style="font-family:메이플스토리 Light;">게시판 비밀번호 확인</h2>
    </div>



    <br />
    * 글을 작성할 때 입력한 비밀번호를 입력하세요<br />
    <br />
    글 비밀번호 :
    <asp:TextBox ID="TextBox1" runat="server" style="font-family:메이플스토리 Light; font-size: 16pt;" Width="300px" Height="30px" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server" style="font-family:메이플스토리 Light; font-size: 14pt;"></asp:Label>
    </strong>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/btn_list.gif" PostBackUrl="~/Board/Board_List.aspx" OnClick="ImageButton2_Click" CausesValidation="False" />
</asp:Content>

