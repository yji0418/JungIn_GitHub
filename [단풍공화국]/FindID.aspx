<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindID.aspx.cs" Inherits="FindID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3 style="font-family:메이플스토리 Light; ">:: 아이디 중복확인</h3>
        <hr />
        <br /><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="아이디를 입력하세요" Width="300px" Height="30px" style="font-family:메이플스토리 Light; font-size: 16pt;"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="중복확인" OnClick="Button1_Click" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;cursor:pointer;" width="100px" Height="30px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="color: #3333FF; font-weight: 700; font-family:메이플스토리 Light;"></asp:Label> &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="사용" OnClick="Button2_Click" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;cursor:pointer;" width="80px" Height="30px" />
        <br />

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="[아이디]를 입력하세요" style="font-weight: 700; color: #FF3300; font-family:메이플스토리 Light;"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="아이디는 영문, 숫자 4~10자리로 입력해주세요" style="font-weight: 700; color: #FF3300; font-family:메이플스토리 Light;" ValidationExpression="[0-9a-zA-Z]{4,10}"></asp:RegularExpressionValidator>

    </div>
        
    </form>
</body>
</html>
