<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPhoto.aspx.cs" Inherits="Album_AddPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
            height: 334px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
            height: 32px;
        }
        .auto-style6 {
            text-align: left;
            height: 32px;
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
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">사진 올리기</p></div><br /><br />
    <table class="auto-style2">
        <tr style="border-bottom-style: solid">
            <td class="auto-style3" style="border-bottom:2px solid #F68500; border-top:2px solid #F68500;" >제목</td>
            <td class="auto-style4" style="border-bottom:2px solid #F68500; border-top:2px solid #F68500;">
                <asp:TextBox ID="TextBox1" runat="server" Width="90%" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="제목을 입력하세요" style="font-weight: 700; color: #FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="border-bottom-style: solid">
            <td class="auto-style3" style="border-bottom:2px solid #F68500;">내용</td>
            <td class="auto-style4" style="border-bottom:2px solid #F68500;">
                <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine" Width="90%" style="font-family:메이플스토리 Light; font-size: 13pt;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border-bottom:2px solid #F68500;">작성자</td>
            <td class="auto-style4" style="border-bottom:2px solid #F68500;">
                <asp:TextBox ID="TextBox3" runat="server" Width="60%" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border-bottom:2px solid #F68500;">비밀번호</td>
            <td class="auto-style4" style="border-bottom:2px solid #F68500;">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="60%" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-bottom:2px solid #F68500;">이미지</td>
            <td class="auto-style6" style="border-bottom:2px solid #F68500;">
                <asp:FileUpload ID="FileUpload1" runat="server" style="font-family:메이플스토리 Light;"/>
            </td>
        </tr>
    </table>
    <br /><br /><br />
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="사진 올리기" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;margin-left:70px;cursor:pointer;" width="300px" Height="50px"/>
    <br /><br /><br />
<asp:Button ID="Button6" runat="server" CausesValidation="False" PostBackUrl="~/Album/List.aspx" Text="앨범 보기" style="font-family:메이플스토리 Light; font-size:12pt; background:none; border:none;margin-left:70px;cursor:pointer;" width="300px" Height="50px" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF3300"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="text-align: center" />
    <br />
    <br />

        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/orange.gif" style="float:left;margin-top:-40px;"/>
</asp:Content>

