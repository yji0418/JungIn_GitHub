<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myLogin.aspx.cs" Inherits="myLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>


        .util_text
        {
            font-family:메이플스토리 Light; 
            font-size:16pt; 
            background:none; 
            border:none; 
            color:white;
        }


                .header_name
        {
            display:inline;
            width:25%;
            float:left;
            color:white;
            height:50px;
        }

            #video 
        {
         position: fixed;
         top: 0px;
         left: 0px;
         min-width: 100%;
         min-height: 100%;
         width: auto;
         height: auto;
         z-index: -1;
         overflow: hidden;
        filter: brightness(40%); 
        }
 
    .check
    {
        font-size:14pt; 
        color:white;
    }


    .check input[type="checkbox"]
    {
        border:2px solid #F68500;
    }

    .checkbox_css
    {
        margin-left:70px;
    }

</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="body">
            <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="/Images/main_mp4.mp4"></video>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700; color:white;">LOGIN</p></div>
        <br /><br /><br />


        <p style="display:inline; font-size:16pt;  color:white;">아이디&nbsp;&nbsp;&nbsp;</p>
        <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt; background:none; border:none; border-bottom:2px solid white; color:white;"></asp:TextBox>

        <br />
        <br />
        <br />

        <p style="display:inline; font-size:16pt; margin-left:-22px;  color:white;">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="font-family:메이플스토리 Light; font-size: 16pt; background:none; border:none; border-bottom:2px solid white; color:white;" Width="300px" Height="30px"></asp:TextBox><br />
        <br />
        <div class="checkbox_css">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" CssClass="check" />
            </div>

        <br />
        <br />
       <br />

            <asp:Button ID="Button1" runat="server" Text="로그인" OnClick="Button1_Click" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;margin-left:70px;" width="300px" Height="50px"/>

        </div>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
<br />
</asp:Content>

