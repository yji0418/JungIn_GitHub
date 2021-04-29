<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ID_overlap.aspx.cs" Inherits="ID_overlap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>아이디 중복 확인</title>
<style>
    *::selection 
{
    background-color: #63CC63;
    color: white;
}



    body 
{
     font-family:/*"나눔스퀘어라운드 Regular",*/"나눔스퀘어라운드 Bold", "나눔스퀘어라운드 ExtraBold", "나눔스퀘어라운드볼드"
	/*로컬(자기 컴퓨터)에 깔려있는 글꼴이라면 맨 첫번째거부터 가져와서 씀 */
}


       .id_overlap_kor
        {
           font-size:18pt;
           color:#496003;
        }

    .Input_id 
    {
        font-size: 15pt;
        font-weight: bold;
        font-family: NanumSquareRound;
    }

    .auto-style1 {
        color: #FF3300;
    }

    .sub_btn2
    {
            font-size:12pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
    }

    .sub_btn2:hover
    {
        color:#496003;
    }

    .sub_btn
    {
            font-size:15pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
    }

        .sub_btn:hover
    {
        color:#496003;
    }

</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <span class="id_overlap_kor">아이디 중복 확인</span>
        <br />
        <br />
        <hr />

        <!--아이디 입력칸-->
        <br /><br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Input_id" placeholder="사용할 아이디 입력(최대 20자)" Width="400px" Height="40px"></asp:TextBox>
    &nbsp;<asp:Button ID="Button1" runat="server" Text="|  아 이 디  중 복  확 인  |" OnClick="Button1_Click"  CssClass="sub_btn2" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="|  사 용 하 기  |" CssClass="sub_btn" />
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style1" ErrorMessage="[아이디]를 입력하세요"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
