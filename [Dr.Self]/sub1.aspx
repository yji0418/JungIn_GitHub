<%@ Page Title="어디 아파?" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sub1.aspx.cs" Inherits="sub1" %>

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


        .auto-style1 
        {
            height: 1000px;
            width: 1280px;
        }

        .menu{
            height: 600px;
            width: 200px;
            border:solid 2px black;
            margin-top:90px;
            margin-left:170px;
            z-index: 1;
            padding-top: 10px;
            font-size:20px;
            overflow-y:scroll;
            overflow-x:hidden;
            display:inline-block;
            float:left;
            margin-right:100px;
           
        }

        .menu a, .dropdown-btn {
            padding: 6px 5px 5px 16px;
            text-decoration: none;
            font-size: 20px;
            color: #393b36;
            display: inline;
            border: none;
            background: none;
            width: 100%;
            text-align: left;
            cursor: pointer;
            outline: none;
        }


        .sidenav:hover{
            color: #A1B859;
        }

        .active {
            color: #A1B859;
        }

        .dropdown-container {
            display: none;
            padding-left: 20px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }

        .main{
            height: 600px;
            width: 700px;
            border:solid 2px black;
            z-index: 1;
            overflow-y:scroll;
            overflow-x:hidden;
            padding-left:5px;
            margin-left:50px;
            margin-right:50px;
            margin-top:96px;
            
        }

        .source
        {
            cursor:pointer;
            border:none;
            background:none;
            font-family:NanumSquareRound;
            font-weight:900;
            font-size:15pt;
            color:black;
            margin-left:990px;
           
        }

        .source:hover
        {
            color:#496003;
        }

        .mainbar1
{
    color:#496003;
}

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="auto-style1">
        <br />
        <div class="menu">
            <br />
            <div>
            <asp:button ID="Button_Head" class="dropdown-btn" runat="server" Text="머리" OnClick="Button_Head_Click" style="border:none; background:none; font-size:20pt; font-family:NanumSquareRound; font-weight:900; color:#496003;"></asp:button>
            <asp:Panel ID="Panel1" runat="server">
               &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="이마" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button1_Click"/><br />
               &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="눈" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button2_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="귀" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button3_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="코" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button4_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Text="치아" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button5_Click" /><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="입술" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button6_Click" /><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" Text="목" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button7_Click" /><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" Text="턱" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button8_Click" /><br />
            </asp:Panel>
                </div>


            <br /><br />

            <div>
            <asp:button class="dropdown-btn" ID="Button_Middle" runat="server" Text="상체" OnClick="Button_Middle_Click" style="border:none; background:none; font-size:20pt; font-family:NanumSquareRound; font-weight:900; color:#496003;"></asp:button>
            <asp:Panel ID="Panel2" runat="server">
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" Text="어깨" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button9_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="팔" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button10_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button11" runat="server" Text="가슴" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button11_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button12" runat="server" Text="명치" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button12_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button13" runat="server" Text="윗배" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button13_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button14" runat="server" Text="배꼽" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button14_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button15" runat="server" Text="아랫배" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button15_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button22" runat="server" Text="허리(등)" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button22_Click"/>
            </asp:Panel>           
            </div>

            <br /><br />

            <div>
            <asp:button class="dropdown-btn" ID="Button_Bottom" runat="server" Text="하체" OnClick="Button_Bottom_Click" style="border:none; background:none; font-size:20pt; font-family:NanumSquareRound; font-weight:900; color:#496003;"></asp:button>
                <asp:Panel ID="Panel3" runat="server">
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button16" runat="server" Text="허벅지" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button16_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button17" runat="server" Text="무릎(오금)" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button17_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button18" runat="server" Text="종아리" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button18_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button19" runat="server" Text="발(발목)" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button19_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button20" runat="server" Text="생식기" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:black;" OnClick="Button20_Click"/><br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button21" runat="server" Text="엉덩이(항문, 꼬리뼈)" style="cursor:pointer;border:none;background:none; font-family:NanumSquareRound; font-weight:900; font-size:13pt; color:black;" OnClick="Button21_Click"/><br />
                </asp:Panel>
                </div>            
            </div>

                    <div style="width:200px;"></div>

        <div class="main">
            <br />
            <asp:Label ID="Label11" runat="server" style="font-size:18pt;"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:20pt; color:#A1B859;"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:15pt;"></asp:Label>
            <br />


            <br /><br />
            <asp:Label ID="Label3" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:20pt; color:#A1B859;"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:15pt;"></asp:Label>
            <br />


            <br /><br />
            <asp:Label ID="Label5" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:20pt; color:#A1B859;"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:15pt;"></asp:Label>
            <br />


            <br /><br />
            <asp:Label ID="Label7" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:20pt; color:#A1B859;"></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:15pt;"></asp:Label>
            <br />


            <br /><br />
            <asp:Label ID="Label9" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:15pt; color:#A1B859;"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" style="font-family:NanumSquareRound; font-weight:900; font-size:13pt;"></asp:Label>
            <br />
                       
        </div>
    
        <br /><br />
        <asp:Button ID="Button23" CssClass="source" runat="server" Text="[출처] 네이버 건강백과" OnClick="Button23_Click" ToolTip="클릭하면 네이버 건강백과로 이동합니다."/>
    </div>

   
</asp:Content>

