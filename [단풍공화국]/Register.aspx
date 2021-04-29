<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


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

        .home_btn
        {
            font-family:메이플스토리 Light; 
            font-size:12pt; 
            background:none;
            border:none;
            margin-left:70px;
            cursor:pointer;
            color:black;
        }

        .home_btn:hover
        {
            color:#F68500;
        }

        .overlap_btn
        {
            font-family:메이플스토리 Light;
            font-size:15pt;
            background:#F68500;
            border:none;
            vertical-align:central;
            cursor:pointer;
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
        <p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">JOIN</p>

        <br /><br /><br />
                <p style="display:inline; font-size:16pt;">아이디&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="아이디 중복 확인" CausesValidation="False" OnClick="Button5_Click" CssClass="overlap_btn" Width="200px" Height="30px"/><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="[아이디] 필수 입력" style="color: #FF0000; font-weight: 700;"></asp:RequiredFieldValidator>
                    <!--위에 RequiredFieldValidator는 짝지어진 TextBox가 공란이면 ErrorMassage를 출력함-->
                    <br />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="아이디는 영문, 숫자 4~10자리로 입력해주세요" ValidationExpression="[0-9a-zA-Z]{4,10}"></asp:RegularExpressionValidator><br />


                <p style="display:inline; font-size:16pt; margin-left:-230px;">
                    비밀번호&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                &nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="[비밀번호] 필수 입력" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
        <br /><br />

                <p style="display:inline; font-size:16pt; margin-left:-280px;">비밀번호 확인&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="[비밀번호 확인] 필수 입력" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="비밀번호가 일치하지 않습니다" style="font-weight: 700; color: #0066FF"></asp:CompareValidator>
        <br />
                <p style="display:inline; font-size:16pt; margin-left:-190px;">이름&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                &nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="[이름] 필수 입력" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                <br /><br />
                <p style="display:inline; font-size:16pt; margin-left:-235px;">전화번호&nbsp;&nbsp;&nbsp;</p>
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="[전화번호] 필수 입력" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>

        <div>
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="회원가입" OnClick="Button6_Click" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;margin-left:70px;cursor:pointer;" width="300px" Height="50px"/>
            <br /><br />
&nbsp;<asp:Button ID="Button7" runat="server" Text="HOME으로 이동" CausesValidation="False" OnClick="Button7_Click" CssClass="home_btn"/>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #0066FF"></asp:Label>
            <br />
            <br />
            <br />



        </div>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/orange.gif" style="float:left;margin-top:-5px;"/>
    </div>
</asp:Content>

