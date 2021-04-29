<%@ Page Title="Dr.Self 회원가입" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="join.aspx.cs" Inherits="join"  EnableEventValidation = "false" %>

<%--EnableEventValidation = "false" 이거 추가했음 이게 정답일까 과연--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
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

        .join_kor
        {
            font-size:50px;
            color:#496003;
        }

        .join
        {
            font-size:30px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

        .ID_text
        {
            margin-left:-355px;
            margin-bottom:2px;
        }

        
        .Input_id
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:198px;
        }

        .PW_text
        {
            margin-left:-348px;
            margin-bottom:8px;
        }

        .input_pw
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-3px;
        }

        .PW_text2
        {
            margin-left:-315px;
            margin-bottom:8px;
        }

        .input_pw2
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-3px;
        }

        .name_text
        {
            margin-left:-380px;
            margin-bottom:8px;           
        }

        .input_name
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-3px;
        }

        .email_text
        {
            margin-left:-365px;
            margin-bottom:8px;     
        } 
        
        .input_email
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-3px;
        }

        .join_button
        {
            /*font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #A1B859;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 405px;
            height:50px;*/

            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .join_button:hover
        {
            color:#496003;
        }

        .id_overlap
        {
            font-size:12pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .id_overlap:hover
        {
            opacity:0.8;
        }

        .notice_login
        {
            color:#CD1039;
            text-decoration:none;
        }

        .notice_login:hover
        {
            color:#E6749D;
        }

        .auto-style2 {
            color: #FF3300;
        }

        .auto-style3 {
            color: #339933;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        
    </script>

    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--회원가입 문구-->
        <div class="join_kor" align="center">회원가입</div>

        <!--Join 문구-->
        <div class="join" align="center">JOIN</div>

        <br /><br /><br /><br /><br />

        <form>

        <!--아이디 입력-->
        <p class="ID_text">아이디</p>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="아이디 입력 (4~20자)" Height="40px" ToolTip="아이디를 입력하세요" Width="400px" CssClass="Input_id" MaxLength="20" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="|  아 이 디  중 복  확 인  |"  CssClass="id_overlap" Height="48px" CausesValidation="False" OnClick="Button2_Click"/>

        &nbsp;<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style2" ErrorMessage="[아이디]를 입력해주세요" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style3" ErrorMessage="[아이디]는 영문, 숫자 4~20자리로 입력해 주세요" ValidationExpression="[0-9a-zA-Z]{4,20}" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
            <br />

        <!--비밀번호 입력-->
        <p class="PW_text">비밀번호</p>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="비밀번호 입력 (4~20자)" Height="40px" ToolTip="비밀번호를 입력하세요" Width="400px" CssClass="input_pw" MaxLength="20" TextMode="Password"></asp:TextBox>

        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style2" ErrorMessage="[비밀번호]를 입력해주세요" Display="Dynamic"></asp:RequiredFieldValidator>
&nbsp;<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style3" ErrorMessage="[비밀번호]는 영문, 숫자 4~20자리로 입력해 주세요" ValidationExpression="[0-9a-zA-Z]{4,20}"></asp:RegularExpressionValidator>
            <br />

        <!-- 비밀번호 확인-->
        <p class="PW_text2">비밀번호 확인</p>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="비밀번호 재입력" Height="40px" ToolTip="비밀번호를 입력하세요" Width="400px" CssClass="input_pw2" MaxLength="20" TextMode="Password"></asp:TextBox>

        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style2" ErrorMessage="[비밀번호]를 재입력 해주세요" Display="Dynamic"></asp:RequiredFieldValidator>
&nbsp;<br /><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style2" ErrorMessage="[비밀번호]가 일치하지 않습니다"></asp:CompareValidator>
            <br />

        <!--이름 입력-->
        <p class="name_text">이름</p>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="이름 입력 (최대 15자)" Height="40px" ToolTip="이름을 입력하세요" Width="400px" CssClass="input_name" MaxLength="15"></asp:TextBox>

        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style2" ErrorMessage="[이름]을 입력해주세요"></asp:RequiredFieldValidator>
        <br /><br />

        <!--이메일 입력-->
        <p class="email_text">이메일</p>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="이메일 (최대 50자)" Height="40px" ToolTip="이메일을 입력하세요" Width="400px" CssClass="input_email" MaxLength="50" TextMode="Email"></asp:TextBox>

        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style2" ErrorMessage="[이메일]을 입력해주세요"></asp:RequiredFieldValidator>
        <br /><br /><br /><br />

        <!--회원가입 버튼-->
        <asp:Button ID="join_button" runat="server" Text="|  회 원 가 입  |" CssClass="join_button" OnClick="join_button_Click"/>

        <br /><br /><br />

        <!--안내 문구-->
        <p>이미 회원이신가요?<a href="login.aspx" class="notice_login">&nbsp;&nbsp;로그인</a></p>

        </form>

    </div>
</asp:Content>

