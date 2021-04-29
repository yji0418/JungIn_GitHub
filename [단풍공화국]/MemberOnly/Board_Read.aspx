﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Board_Read.aspx.cs" Inherits="MemberOnly_Board_Read" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
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
            font-family:메이플스토리 Light;            
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
            font-family:메이플스토리 Light;                
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
            font-family:메이플스토리 Light;                
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
            font-family:메이플스토리 Light;
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
            font-family:메이플스토리 Light;
            margin-left:-405px;
        }

/*하단 버튼---------------------------------------------------------------------------------------------------------*/

        .button_cancel
        {
            font-size: 15pt;
            font-family:메이플스토리 Light;

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
            font-family:메이플스토리 Light;

            background-color:#F68500;
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
            font-family:메이플스토리 Light;

            background-color: #F68500;
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
      <!--게시판 문구-->
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">자유게시판 글 읽기</p></div>

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

       <br /><br />

        <!--게시일-->
        <center>
        <div align="center" class="input_namediv">
            <p class="name_kor">게시일</p>
                <asp:TextBox ID="TextBox2" runat="server"  Height="40px" Width="800px" class="input_name" ReadOnly="True"></asp:TextBox>
        </div>
        </center>


            <br /><br />

        <!--제목-->
        <center>
            <div class="input_titlediv">
                <p class="title_kor">제목</p>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="800px" class="input_title" ReadOnly="True" MaxLength="50"></asp:TextBox>
            </div>
        </center>

        <br /><br />

        <!--내용-->
        <center>
            <div class="input_contentdiv">
                <p class="content_kor">내용</p>
                <asp:TextBox ID="TextBox4" runat="server" Height="400px" Width="800px" class="input_content" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
            </div>
        </center>

        <br /><br /><br />

        <!--파일 올리기-->
        <center>
            <div class="input_file">
                <p style="margin-left:-740px;">첨부 파일</p><br />
                <asp:LinkButton ID="LinkButton1" runat="server" style="font-family:메이플스토리 Light;" OnClick="LinkButton1_Click"></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style=" font-family:메이플스토리 Light;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="font-family:메이플스토리 Light;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
            </div>
        </center>

        <br /><br /><br />

     <!--하단 버튼-->
        <asp:Button ID="Button2" runat="server" Text="수정" CssClass="button_submit"/>
        <asp:Button ID="Button4" runat="server" Text="답글" CssClass="button_submit"/>
        <asp:Button ID="Button5" runat="server" Text="삭제" CssClass="button_submit"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="글 목록" CssClass="button_list" PostBackUrl="~/Board/Board_List.aspx" />
    </div>
</asp:Content>

