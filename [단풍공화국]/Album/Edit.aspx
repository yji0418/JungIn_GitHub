<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Album_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        .auto-style2 {
            width: 600px;
               height: 774px;
           }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
            height: 20px;
        }
        .auto-style6 {
            text-align: left;
            height: 48px;
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


           .auto-style7 {
               text-align: center;
               height: 54px;
           }
           .auto-style8 {
               text-align: left;
               height: 54px;
           }
           .auto-style9 {
               text-align: center;
               height: 56px;
           }
           .auto-style10 {
               text-align: left;
               height: 56px;
           }
           .auto-style11 {
               text-align: center;
               height: 48px;
           }


        .btn
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

        .btn2
        {
                        font-size: 15pt;
            font-family:메이플스토리 Light;

            background-color:#787878;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div><h3>사진 수정하기</h3><br />
    <table class="auto-style2">
        <tr style="border-top:2px solid #F68500;">
            <td class="auto-style7" style="border-bottom:2px solid #F68500; border-top:2px solid #F68500;">제목</td>
            <td class="auto-style8" style="border-bottom:2px solid #F68500; border-top:2px solid #F68500;">
                <asp:TextBox ID="TextBox1" runat="server" Width="90%" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="제목을 입력하세요" style="font-weight: 700; color: #FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border-bottom:2px solid #F68500;">설명</td>
            <td class="auto-style4" style="border-bottom:2px solid #F68500;">
                <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine" Width="90%" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="border-bottom:2px solid #F68500;">작성자</td>
            <td class="auto-style10" style="border-bottom:2px solid #F68500;">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="border-bottom:2px solid #F68500;">이미지</td>
            <td class="auto-style6" style="border-bottom:2px solid #F68500;">
                <asp:Label ID="Label3" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="450px" Width="700px" />
                <br />
                <br />
                &nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="취소" CssClass="btn2"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Text="수정" OnClick="Button7_Click" CssClass="btn" />

                <br />
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
            <br />
            <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="text-align: center" />
    <br />
    <br />
        </div>

</asp:Content>

