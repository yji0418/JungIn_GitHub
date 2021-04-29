<%@ Page Title="공지사항 글쓰기" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="notice_write.aspx.cs" Inherits="board_write2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">

    *::selection 
{
    background-color: #63CC63;
    color: white;
}
        .auto-style1 {
            height: 1600px;
            width: 1280px;
            background-color:white;
            text-align: center;
        }

        .board_kor
        {
            font-size:50px;
        }

        .board
        {
            font-size:20px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

/*이름---------------------------------------------------------------------------------------------------------*/
        .input_namediv
        {
            /*border-bottom:0.5px solid black;*/
            background-color:white;
            width:1000px;
        }

        .name_kor
        {
            margin-left:-770px;
        }

        .input_name
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;            
        }

/*이메일---------------------------------------------------------------------------------------------------------*/

        .input_emaildiv
        {
            background-color:white;
            width:1000px;
        }

        .email_kor
        {
            margin-left:-760px;
        }

        .input_email
        {
             font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;                
        }

/*제목---------------------------------------------------------------------------------------------------------*/
        .input_titlediv
        {
            background-color:white;
            width:1000px;
        }

        .title_kor
        {
            margin-left:-770px;
        }

        .input_title
        {
             font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;                
        }

/*내용---------------------------------------------------------------------------------------------------------*/
        .input_contentdiv
        {
            background-color:white;
            width:1000px;
        }

        .content_kor
        {
            margin-left:-770px;
        }

        .input_content
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            text-align: left; 
        }

/*비밀번호---------------------------------------------------------------------------------------------------------*/
        .input_passwddiv
        {
            background-color:white;
            width:1000px;
        }

        .passwd_kor
        {
            margin-left:-700px;
        }

        .input_passwd
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-405px;
        }

/*하단 버튼---------------------------------------------------------------------------------------------------------*/

        .button_cancel
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #a0a0a0;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

        .button_cancel:hover
        {
            opacity:0.8;
        }

        .button_submit
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #A1B859;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

        .button_submit:hover
        {
            opacity:0.8;
        }

        .button_list
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #A1B859;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100px;
            height:50px;
        }

        .button_list:hover
        {
            opacity:0.8;
        }


</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--게시판 문구-->
        <div class="board_kor" align="center">공지사항</div>

        <!--Board 문구-->
        <div class="board" align="center">NOTICE</div>

        <br /><br />
        <hr />

        <br /><br /><br /><br /><br />


        <!--이름-->
        <center>
        <div align="center" class="input_namediv">
            <p class="name_kor">이름</p>
                <asp:TextBox ID="TextBox1" runat="server"  Height="40px" Width="800px" class="input_name" ReadOnly="True"></asp:TextBox>
        </div>
        </center>

       <br />

        <!--이메일-->
        <center>
            <div class="input_emaildiv">
                <p class="email_kor">이메일</p>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="800px" class="input_email"></asp:TextBox>
            </div>
        </center>

            <br />

        <!--제목-->
        <center>
            <div class="input_titlediv">
                <p class="title_kor">제목</p>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="800px" class="input_title" placeholder="글 제목 입력 (최대 50자)" MaxLength="50"></asp:TextBox>
            </div>
        </center>

        <br /><br />

        <!--내용-->
        <center>
            <div class="input_contentdiv">
                <p class="content_kor">내용</p>
                <asp:TextBox ID="TextBox4" runat="server" Height="400px" Width="800px" class="input_content" TextMode="MultiLine" placeholder="글 내용 입력 (최대 1000자)" MaxLength="1000"></asp:TextBox>
            </div>
        </center>

        <br />

        <!--암호-->
        <center>
            <div class="input_passwddiv">
                <p class="passwd_kor">게시글 비밀번호</p>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="400px" class="input_passwd" TextMode="Password" placeholder="비밀번호 입력 (최대 10자)" MaxLength="10"></asp:TextBox>
            </div>
        </center>

        <br /><br /><br />

     <!--하단 버튼-->
        <asp:Button ID="Button1" runat="server" Text="취소"  CssClass="button_cancel" OnClick="Button1_Click"/>
        
        <asp:Button ID="Button2" runat="server" Text="등록" CssClass="button_submit" OnClick="Button2_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <!--margin값 주기 귀찮음-->
        <asp:Button ID="Button3" runat="server" Text="글 목록" CssClass="button_list" OnClick="Button3_Click" />
        </div>
</asp:Content>

