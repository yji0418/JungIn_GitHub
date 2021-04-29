<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="MemberOnly_Modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
        text-align: center;
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




        .auto-style8 {
            color: #FF0000;
        }


        .home_btn
        {
            font-family:메이플스토리 Light; 
            font-size:12pt; 
            background:none;
            border:none;
            margin-left:20px;
            cursor:pointer;
        }

        .home_btn:hover
        {
            color:#F68500;
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
    <div class="auto-style5">
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">MyPage</p></div>
        <br /><br /><br />
        <center>
                 <p style="display:inline; font-size:16pt; margin-left:-450px;">아이디&nbsp;&nbsp;&nbsp;</p>
                    <asp:Label ID="Label1" runat="server" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <br /><br /><br />

                <p style="display:inline; font-size:16pt; margin-left:-230px;">
                    비밀번호&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                &nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="[비밀번호] 필수 입력" style="font-weight: 700; color: #FF0000; margin-left:-130px;"></asp:RequiredFieldValidator>
        <br /><br />

                <p style="display:inline; font-size:16pt; margin-left:-280px;">비밀번호 확인&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="[비밀번호 확인] 필수 입력" style="font-weight: 700; color: #FF0000; margin-left:-130px;"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="비밀번호가 일치하지 않습니다" style="font-weight: 700; color: #0066FF; margin-left:-130px;"></asp:CompareValidator>
        <br />
                <p style="display:inline; font-size:16pt; margin-left:-190px;">이름&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                &nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="[이름] 필수 입력" style="color: #FF0000; font-weight: 700; margin-left:-130px;"></asp:RequiredFieldValidator>
                <br /><br />
                <p style="display:inline; font-size:16pt; margin-left:-235px;">전화번호&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="[전화번호] 필수 입력" style="font-weight: 700; color: #FF0000; margin-left:-130px;"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <strong>
                 <asp:Label ID="Label2" runat="server" CssClass="auto-style8"></asp:Label>
                 </strong>
                 <br />
            <br />
<asp:Button ID="Button1" runat="server" Text="계정정보 수정" OnClick="Button1_Click" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;margin-left:10px;cursor:pointer;" width="300px" Height="50px"></asp:Button><br /><br />
<asp:Button ID="Button2" runat="server" Text="Home으로 가기" OnClick="Button2_Click" CssClass="home_btn" CausesValidation="False"></asp:Button>
</center>
    </div>
</asp:Content>

