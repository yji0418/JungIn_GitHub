<%@ Page Title="Dr.Self 마이페이지 수정" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login_mypage_view.aspx.cs" Inherits="login_mypage_view" %>

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

        .auto-style1 {
            height: 1200px;
            width: 1280px;
            background-color:white;
            text-align: center;
        }

        .mypage_kor
        {
            font-size:50px;
        }

        .mypage
        {
            font-size:20px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

        .account_inf
        {
            font-size:30px;
            color:#A1B859;
            margin-left:-1100px;
        }

        .ID_text
        {
            margin-left:-355px;
        }

        .ID_text_Label
        {
            font-size: 15pt;
            /*color:#787878;*/
            color:#496003;
            margin-left:-333px;
        }

        .Name_text
        {
            margin-left:-370px;
        }


        .Name_text_Label
        {
            margin-left:-350px;
            font-size: 15pt;
            /*color:#787878;*/
            color:#496003;
        }

        .Email_text
        {
            margin-left:-360px;
        }

        .Email_text_Label
        {
            margin-left:-210px;
            font-size: 15pt;
            /*color:#787878;*/
            color:#496003;
        }

        .update_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .update_btn:hover
        {
            color:#496003;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--회원가입 문구-->
        <div class="mypage_kor" align="center">마이 페이지</div>

        <!--Join 문구-->
        <div class="mypage" align="center">MY PAGE</div>

        <br /><br /><br /><br /><br />

        <!--계정정보 시작-->
        <p class="account_inf">계정 정보 조회</p>
        <hr />

        <br /><br /><br />

        <!--아이디-->
        <p class="ID_text">아이디</p>
        <asp:Label ID="Label1" runat="server" CssClass="ID_text_Label"></asp:Label>

        <br /><br /><br />

        <!--이름-->
        <p class="Name_text">이름</p>
        <asp:Label ID="Label2" runat="server" CssClass="Name_text_Label"></asp:Label>

        <br /><br /><br />

        <!--이메일-->
        <p class="Email_text">이메일</p>
        <asp:Label ID="Label3" runat="server" CssClass="Email_text_Label"></asp:Label>

        <br /><br /><br />
        <br /><br /><br />

        <!--수정 버튼-->
        <asp:Button ID="Button1" runat="server" Text="|  계 정 정 보  수 정  |" CssClass="update_btn" OnClick="Button1_Click" />


    </div>
</asp:Content>

