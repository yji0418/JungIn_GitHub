<%@ Page Title="Dr.Self 로그인" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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

        .auto-style1 
        {
            height: 800px;
            width: 1280px;
            background-color:white;
            text-align: center;
        }

        .Login_kor
        {
            font-size:50px;
            color:#496003;
        }

        .Login
        {
            font-size:20px;
            color:#787878;
        }

        .ID_text
        {
            margin-left:-265px;
            margin-bottom:8px; /*TextBox랑 간격 조절*/

        }

        .Passwd_text
        {
            margin-left:-250px;
            margin-bottom:8px; /*TextBox랑 간격 조절*/
        }

        .auto-style2 {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
        }

        .auto-style3 {
            font-size: 15pt;
            font-weight:bold;
            font-family:NanumSquareRound;
        }

        .auto-style4 {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .auto-style4:hover
        {
            color:#496003;
        }

        .notice_register{
            color:#CD1039;
            text-decoration:none;
        }

        .notice_register:hover
        {
            color:#E6749D;
        }

    .auto-style5 {
        color: #FF3300;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--로그인 문구-->
        <div align="center" class="Login_kor">로그인</div>
        <!--Login 문구-->
        <div align="center" class="Login">LOGIN</div>

        <br /><br /><br /><br /><br />

        <!--아이디 입력-->
        <b><p class="ID_text">아이디</p></b>
        <asp:TextBox ID="TextBox1" runat="server" Height="40px" ToolTip="아이디를 입력하세요." Width="300px" CssClass="auto-style2" placeholder="아이디를 입력하세요"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style5" ErrorMessage="[아이디]를 입력해주세요"></asp:RequiredFieldValidator>
        <br /><br />

        <!--비밀번호 입력-->
        <p class="Passwd_text">비밀번호</p>
        <strong>
        <asp:TextBox ID="TextBox2" runat="server" Height="40px" ToolTip="비밀번호를 입력하세요." Width="300px" CssClass="auto-style3" TextMode="Password" placeholder="비밀번호를 입력하세요"></asp:TextBox>
        </strong>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style5" ErrorMessage="[비밀번호]를 입력해주세요"></asp:RequiredFieldValidator>
        <br />
        <br /><br />

        <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>회원이 아니신가요?<a href="join.aspx" target="_blank" class="notice_register">&nbsp;&nbsp;회원가입</a></span>

        <br /><br /><br /><br />

        <!--로그인 버튼-->
        <strong>
        <asp:Button ID="Button1" runat="server" Text="|  로 그 인  |" CssClass="auto-style4" OnClick="Button1_Click" />
        </strong>
        <br /><br /><br />

        <!--안내 문구-->

    </div>
</asp:Content>

