<%@ Page Title="Dr.Self 마이페이지" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login_mypage.aspx.cs" Inherits="login_mypage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>

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

        .mypage_kor
        {
            font-size:50px;
        }

        .mypage
        {
            font-size:20px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

        .account_inf
        {
            font-size:30px;
            color:#A1B859;
            margin-left:-1160px;
        }

        .ID_text
        {
            margin-left:-355px;
            
        }

        .ID_text_Label
        {
            font-size: 15pt;
            /*color:#787878;*/
            color:#496003;
            margin-left:-330px;
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

        .submit_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .submit_btn:hover
        {
            color:#496003;
        }
        .auto-style2 {
            color: #FF3300;
        }
    .auto-style3 {
        color: #009900;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--회원가입 문구-->
        <div class="mypage_kor" align="center">마이 페이지</div>

        <!--Join 문구-->
        <div class="mypage" align="center">MY PAGE</div>

        <br /><br /><br /><br /><br />

        <!--계정정보 시작-->
        <p class="account_inf">계정 정보</p>
        <hr />

        <br /><br /><br />

        <!--아이디-->
        <p class="ID_text">아이디</p>
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="ID_text_Label"></asp:Label>

        <br /><br /><br />

       <!--비밀번호 입력-->
        <p class="PW_text">비밀번호</p>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="변경할 비밀번호 입력 (최대 20자)" Height="40px" ToolTip="변경할 비밀번호를 입력하세요" Width="400px" CssClass="input_pw" MaxLength="20" TextMode="Password"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="변경할 비밀번호를 입력해주세요" CssClass="auto-style2" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
        <asp:regularexpressionvalidator runat="server" errormessage="[아이디]는 영문, 숫자 4~20자리로 입력해 주세요" ControlToValidate="TextBox2" CssClass="auto-style3" ValidationExpression="[0-9a-zA-Z]{4,20}"></asp:regularexpressionvalidator>
        <br /><br />

        <!-- 비밀번호 확인-->
        <p class="PW_text2">비밀번호 확인</p>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="변경할 비밀번호 재입력" Height="40px" ToolTip="변경할 비밀번호를 입력하세요" Width="400px" CssClass="input_pw2" MaxLength="20" TextMode="Password"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="변경할 비밀번호를 입력해주세요" CssClass="auto-style2" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style2" ErrorMessage="비밀번호가 일치하지 않습니다"></asp:CompareValidator>
        <br /><br />

        <!--이름 입력-->
        <p class="name_text">이름</p>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="변경 할 이름 입력 (최대 15자)" Height="40px" ToolTip="이름을 입력하세요" Width="400px" CssClass="input_name" MaxLength="15"></asp:TextBox>
        
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="변경할 이름을 입력해주세요" CssClass="auto-style2" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <br /><br />

        <!--이메일 입력-->
        <p class="email_text">이메일</p>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="이메일 (최대 50자)" Height="40px" ToolTip="이메일을 입력하세요" Width="400px" CssClass="input_email" MaxLength="50" TextMode="Email"></asp:TextBox>
        <br />
        <asp:requiredfieldvalidator runat="server" errormessage="변경할 이메일을 입력해주세요" CssClass="auto-style2" ControlToValidate="TextBox5"></asp:requiredfieldvalidator>
        <br />

        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="|  수 정  |" CssClass="submit_btn" OnClick="Button1_Click" />
    </div>
</asp:Content>

