<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .auto-style1 {
            height: 2300px;
            width: 1350px;
            background-color:white;
            text-align: center;
        }
         .tablink {
            background-color: #555;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 33.3%;
        }

         .tablink:hover {
            background-color: #808080;
        }

         .tablink_btn{
             background-color: #A1B859;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 33.3%;
         }

         .board{
             height:280px;
             width:280px;
             display:inline-block;
             border: solid 20px #A1B859;
             position:absolute;
             left:310px;
             
         }
         .notice_board{
             height:280px;
             width:280px;
             display:inline-block;
             border: solid 20px #779847;
             position:absolute;
             left:632px;
         }
         .board3{
             height:280px;
             width:280px;
             display:inline-block;
             border: solid 20px #A1B859;
             position:absolute;
             left:954px;             
         }
         .board4{
             height:280px;
             width:280px;
             display:inline-block;
             border: solid 20px #779847;
            position:absolute;
            left:1276px;
         }

         .label{
             font-size:30px;
             font-family:NanumSquareRound;
             font-weight:900;
             color:#496003;
         }
        
        .maindiv {
            height: 800px;
        }

        .panel{
            font-family:"나눔스퀘어";
        }
        
        .auto-style2 {
            width: 600px;
            font-family:NanumSquareRound;
            font-weight:900;
            height: 297px;
        }
        
        .auto-style3 {
            height: 35px;
        }

        .searching_btn
        {
            background-image:url("img/searching_btn.png");
            width:101px;
            height:41px;
            vertical-align: middle;
        }

        .combo1
        {
            font-family:NanumSquareRound;
            font-size:14pt;
            font-weight:900;
            background-color:white;
            border:2px solid#496003;
            width:100px;
            height:40px;
            text-align:center;
        }
        
        .combo2
        {
            font-family:NanumSquareRound;
            font-size:14pt;
            font-weight:900;
            background-color:white;
            border:2px solid#496003;
            width:270px;
            height:40px;
            text-align:center;
        }

        .combo3
        {
            font-family:NanumSquareRound;
            font-size:14pt;
            font-weight:900;
            background-color:white;
            border:2px solid#496003;
            width:250px;
            height:40px;
            text-align:center;
        }

       /* .board_wrap
        {
            height:320px;
            width:1500px;
            border:1px solid black;
        }*/

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


        .auto-style4 {
            height: 38px;
        }

        .border
        {
            border-bottom:2px solid #496003;
        }

                .notice_register{
            color:#CD1039;
            text-decoration:none;
            font-family:NanumSquareRound;
            font-weight:900;
            font-size:13pt;
        }

        .notice_register:hover
        {
            color:#E6749D;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center class="auto-style1">
        <br />
        <br />
        <asp:DropDownList runat="server" ID="ComboBox1" AutoPostBack="True" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged"  CssClass="combo1">
            <asp:ListItem>머리</asp:ListItem>
            <asp:ListItem>상체</asp:ListItem>
            <asp:ListItem>하체</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp; 에서&nbsp;&nbsp; 

        <asp:DropDownList runat="server" ID="ComboBox2" AutoPostBack="True" OnSelectedIndexChanged="ComboBox2_SelectedIndexChanged" CssClass="combo2" >
            <asp:ListItem Text="상세부위를 선택해 주세요."/> 
            <asp:ListItem Enabled="False" Value="이마" Text="이마 (눈썹, 뒤통수, 관자놀이)">이마 (눈썹, 뒤통수, 관자놀이)</asp:ListItem>
            <asp:ListItem Enabled="False" Value="눈" Text="눈">눈</asp:ListItem>
            <asp:ListItem Enabled="False" Value="귀" Text="귀">귀</asp:ListItem>
            <asp:ListItem Enabled="False" Value="코" Text="코">코</asp:ListItem>
            <asp:ListItem Enabled="False" Value="치아" Text="치아">치아</asp:ListItem>
            <asp:ListItem Enabled="False" Value="입술" Text="입술">입술</asp:ListItem>
            <asp:ListItem Enabled="False" Value="목" Text="목">목</asp:ListItem>
            <asp:ListItem Enabled="False" Value="턱" Text="턱">턱</asp:ListItem>
            <asp:ListItem Enabled="False" Value="어깨" Text="어깨">어깨</asp:ListItem>
            <asp:ListItem Enabled="False" Value="팔" Text="팔">팔</asp:ListItem>
            <asp:ListItem Enabled="False" Value="가슴" Text="가슴">가슴</asp:ListItem>
            <asp:ListItem Enabled="False" Value="명치" Text="명치">명치</asp:ListItem>
            <asp:ListItem Enabled="False" Value="윗배" Text="윗배">윗배</asp:ListItem>
            <asp:ListItem Enabled="False" Value="배꼽" Text="배꼽">배꼽</asp:ListItem>
            <asp:ListItem Enabled="False" Value="아랫배" Text="아랫배">아랫배</asp:ListItem>
            <asp:ListItem Enabled="False" Value="허리" Text="허리 (등)">허리 (등)</asp:ListItem>
            <asp:ListItem Enabled="False" Value="허벅지" Text="허벅지">허벅지</asp:ListItem>
            <asp:ListItem Enabled="False" Value="무릎">무릎 (오금)</asp:ListItem>
            <asp:ListItem Enabled="False" Value="종아리" Text="종아리">종아리</asp:ListItem>
            <asp:ListItem Enabled="False" Value="발" Text="발 (발목, 발가락, 발바닥, 발등)">발 (발목, 발가락, 발바닥, 발등)</asp:ListItem>
            <asp:ListItem Enabled="False" Value="생식기" Text="생식기">생식기</asp:ListItem>
            <asp:ListItem Enabled="False" Value="엉덩이" Text="엉덩이 (항문, 꼬리뼈)">엉덩이 (항문, 꼬리뼈)</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;이(가)&nbsp;&nbsp;

        <asp:DropDownList runat="server" ID="ComboBox3" CssClass="combo3">
            <asp:ListItem Text="통증의 느낌을 선택해주세요" /> 
            <asp:ListItem Enabled="False">지끈지끈</asp:ListItem>
            <asp:ListItem Enabled="False">어질어질</asp:ListItem>
            <asp:ListItem Enabled="False">따갑다</asp:ListItem>
            <asp:ListItem Enabled="False">간지럽다</asp:ListItem>
            <asp:ListItem Enabled="False">무언가가 났다</asp:ListItem>
            <asp:ListItem Enabled="False">간지럽다</asp:ListItem>
            <asp:ListItem Enabled="False">누르면 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">귀 안쪽이 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">간지럽다</asp:ListItem>
            <asp:ListItem Enabled="False">누르면 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">막힌 느낌</asp:ListItem>
            <asp:ListItem Enabled="False">잇몸이 부었다</asp:ListItem>
            <asp:ListItem Enabled="False">치아가 시리다</asp:ListItem>
            <asp:ListItem Enabled="False">치아가 흔들린다</asp:ListItem>
            <asp:ListItem Enabled="False">부었다</asp:ListItem>
            <asp:ListItem Enabled="False">무언가가 났다</asp:ListItem>
            <asp:ListItem Enabled="False">화끈거린다</asp:ListItem>
            <asp:ListItem Enabled="False">움직일 때 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">침 삼킬 때 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">혹이 생겼다</asp:ListItem>
            <asp:ListItem Enabled="False">소리가 난다</asp:ListItem>
            <asp:ListItem Enabled="False">통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">걸리는 느낌이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">팔을 올리기 힘들다</asp:ListItem>
            <asp:ListItem Enabled="False">뻣뻣하고 쑤시는 통증</asp:ListItem>
            <asp:ListItem Enabled="False">찌릿찌릿한 통증</asp:ListItem>
            <asp:ListItem Enabled="False">팔을 짚을 때 통증</asp:ListItem>
            <asp:ListItem Enabled="False">팔뚝부분의 통증</asp:ListItem>
            <asp:ListItem Enabled="False">손목이 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">가슴 중앙 심한 압박감</asp:ListItem>
            <asp:ListItem Enabled="False">바늘로 찌르는듯한 통증</asp:ListItem>
            <asp:ListItem Enabled="False">겨드랑이쪽 멍울</asp:ListItem>
            <asp:ListItem Enabled="False">명치가 답답하다</asp:ListItem>
            <asp:ListItem Enabled="False">속이 쓰리다</asp:ListItem>
            <asp:ListItem Enabled="False">누르면 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">복부 팽만감</asp:ListItem>
            <asp:ListItem Enabled="False">덩어리가 만져진다</asp:ListItem>
            <asp:ListItem Enabled="False">통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">콕콕 쑤신다</asp:ListItem>
            <asp:ListItem Enabled="False">묵직하다</asp:ListItem>
            <asp:ListItem Enabled="False">움직이면 통증이 생긴다</asp:ListItem>
            <asp:ListItem Enabled="False">뻣뻣한 느낌이다</asp:ListItem>
            <asp:ListItem Enabled="False">찌르는 듯한 느낌이다</asp:ListItem>
            <asp:ListItem Enabled="False">배꼽 주변이 딱딱하다</asp:ListItem>
            <asp:ListItem Enabled="False">가만히 있어도 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">누르면 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">근육이 당긴다</asp:ListItem>
            <asp:ListItem Enabled="False">저리다</asp:ListItem>
            <asp:ListItem Enabled="False">통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">걸을 때 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">걸리는 느낌이 든다</asp:ListItem>
            <asp:ListItem Enabled="False">무릎에서 소리가 난다</asp:ListItem>
            <asp:ListItem Enabled="False">저리다</asp:ListItem>
            <asp:ListItem Enabled="False">근육이 당긴다</asp:ListItem>
            <asp:ListItem Enabled="False">통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">시큰거린다</asp:ListItem>
            <asp:ListItem Enabled="False">누르면 통증이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">걸을 때 아프다</asp:ListItem>
            <asp:ListItem Enabled="False">가렵다</asp:ListItem>
            <asp:ListItem Enabled="False">따갑다</asp:ListItem>
            <asp:ListItem Enabled="False">잔뇨감이 있다</asp:ListItem>
            <asp:ListItem Enabled="False">찌릿찌릿 하다</asp:ListItem>
            <asp:ListItem Enabled="False">가렵다</asp:ListItem>
            <asp:ListItem Enabled="False">무언가가 났다</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="searching_btn" />

        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" CssClass="panel">
            <asp:Label ID="Label1" runat="server" CssClass="label"></asp:Label>에서 &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" CssClass="label"></asp:Label>이(가)&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="label"></asp:Label>.<br /><br /><br />
            
            <table class="auto-style2" align="center">
                <tr>
                    <td class="border"><h2 style="font-family:NanumSquareRound;font-weight:900;"><strong>예상되는 병명</strong></h2></td>
                    <td class="border"><h2 style="font-family:NanumSquareRound;font-weight:900;">해당 질병에 대한 약 정보</h2></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="result1" runat="server" ></asp:Label><br /></td>
                    <td class="auto-style3"><asp:Label ID="result1_drug" runat="server" ></asp:Label><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="result2" runat="server" ></asp:Label><br /></td>
                    <td><asp:Label ID="result2_drug" runat="server" ></asp:Label><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="result3" runat="server" ></asp:Label><br /></td>
                    <td><asp:Label ID="result3_drug" runat="server"></asp:Label><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="result4" runat="server" ></asp:Label><br /></td>
                    <td><asp:Label ID="result4_drug" runat="server"></asp:Label><br /></td>
                </tr>
            </table>
                
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:900;font-family:NanumSquareRound;font-size:13pt;">병원이나 약국에 가고싶으신가요?<a href="sub5.aspx" target="_blank" class="notice_register">&nbsp;&nbsp;어디로갈까?</a></span>

        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button_Head" class="tablink" runat="server" Text="머리" OnClick="Button_Head_Click1" CssClass="tablink_btn"></asp:Button>
        <asp:Button ID="Button_Top" class="tablink" runat="server" Text="상체" OnClick="Button_Top_Click1" CssClass="tablink_btn"></asp:Button>
        <asp:Button ID="Button_Bottom" class="tablink" runat="server" Text="하체" OnClick="Button_Bottom_Click1" CssClass="tablink_btn"></asp:Button>
        <div class="maindiv">
            <asp:Panel ID="Panel1" runat="server" >
                <br />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="Forehead" runat="server" OnClick="Forehead_Click" ImageUrl="img/forehead.png" style="margin:-3px;" ToolTip="이마"/><br />
                <asp:ImageButton ID="Eyes" runat="server" OnClick="Eyes_Click" ImageUrl="img/eye.png" style="margin:-3px;" ToolTip="눈"/><br />
                <asp:ImageButton ID="Left_ear" runat="server" OnClick="Left_ear_Click" ImageUrl="img/left_ear.png" style="margin:-3px;" ToolTip="귀"/>
                <asp:ImageButton ID="Nose" runat="server" OnClick="Nose_Click" ImageUrl="img/nose.png" style="margin:-3px;" ToolTip="코"/>
                <asp:ImageButton ID="Right_ear" runat="server" OnClick="Right_ear_Click" ImageUrl="img/right_ear.png" style="margin:-3px;" ToolTip="귀"/><br />
                <asp:ImageButton ID="Top_lips" runat="server" OnClick="Top_lips_Click" ImageUrl="img/top_lips.png" style="margin:-3px;" ToolTip="입"/><br />
                <asp:ImageButton ID="Bottom_lips" runat="server" OnClick="Bottom_lips_Click" ImageUrl="img/bottom_lips.png" style="margin:-3px;" ToolTip="입"/><br />
                <asp:ImageButton ID="Chin" runat="server" OnClick="Chin_Click" ImageUrl="img/chin.png" style="margin:-3px;" ToolTip="턱"/><br />
                <asp:ImageButton ID="Neck" runat="server" OnClick="Neck_Click" ImageUrl="img/neck.png" style="margin:-3px;" ToolTip="목"/><br /><br /><br />
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" Visible="false">
    <center>
            <div>
                <asp:ImageButton ID="Shoulder" runat="server" OnClick="Shoulder_Click" ImageUrl="img/어깨.png" style="margin:-3px;" ToolTip="어깨"></asp:ImageButton><br />
                <asp:ImageButton ID="Left_arm1" runat="server" OnClick="Left_arm_Click" ImageUrl="img/왼쪽팔1.png" style="margin-top:-10px; margin-right:-4px; margin-left:2px; margin-bottom:-10px;" ToolTip="팔"></asp:ImageButton>
                <asp:ImageButton ID="Chest" runat="server" OnClick="Chest_Click" ImageUrl="img/가슴.png" style="margin-top:-3px; margin-top:-3px; margin-bottom:-10px;" ToolTip="가슴"></asp:ImageButton>
                <asp:ImageButton ID="Right_arm1" runat="server" OnClick="Right_arm_Click" ImageUrl="img/오른쪽팔1.png" style="margin-top:-10px; margin-left:-7px; margin-bottom:-10px;" ToolTip="팔"></asp:ImageButton><br />
                <asp:ImageButton ID="Left_arm2" runat="server" OnClick="Left_arm_Click" ImageUrl="img/왼쪽팔2.png"  style="margin-top:5px; margin-left:2px;" ToolTip="팔"></asp:ImageButton>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                <asp:ImageButton ID="Anticardium" runat="server" OnClick="Anticardium_Click" ImageUrl="img/명치.png"  style="margin-top:-10px; margin-left:-3px;" ToolTip="명치"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:ImageButton ID="Right_arm2" runat="server" OnClick="Right_arm_Click" ImageUrl="img/오른쪽팔2.png"  style="margin-top:-20px; margin-left:-6px" ToolTip="팔"></asp:ImageButton><br />
                <asp:ImageButton ID="Left_arm3" runat="server" OnClick="Left_arm_Click" ImageUrl="img/왼쪽팔3.png"  style="margin-top:-10px; margin-left:1px; margin-bottom:-10px;" ToolTip="팔"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="Left_loin1" runat="server" OnClick="Left_loin_Click" ImageUrl="img/왼쪽허리위.png"  style="margin-top:-5px; margin-right:-4px; margin-bottom:-10px;" ToolTip="허리"></asp:ImageButton>
                <asp:ImageButton ID="Top_stomach" runat="server" OnClick="Top_stomach_Click" ImageUrl="img/윗배.png"  style="margin-top:-5px; margin-bottom:-10px;" ToolTip="윗배"></asp:ImageButton>
                <asp:ImageButton ID="Right_loin1" runat="server" OnClick="Right_loin_Click" ImageUrl="img/오른쪽허리위.png"  style="margin-top:-5px; margin-left:-4px; margin-bottom:-10px;" ToolTip="허리"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="Right_arm3" runat="server" OnClick="Right_arm_Click" ImageUrl="img/오른쪽팔3.png"  style="margin-top:-30px; margin-bottom:-10px;" ToolTip="팔"></asp:ImageButton><br />
                <asp:ImageButton ID="Left_arm4" runat="server" OnClick="Left_arm_Click" ImageUrl="img/왼쪽팔4_.png"   style="margin-top:0px; margin-bottom:-3px;" ToolTip="팔"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="Left_loin2" runat="server" OnClick="Left_loin_Click" ImageUrl="img/왼쪽허리아래.png"  style="margin-top:-7px; margin-right:-4px; margin-bottom:-10px;" ToolTip="배"></asp:ImageButton>
                <asp:ImageButton ID="Bottom_stomach" runat="server" OnClick="Bottom_stomach_Click" ImageUrl="img/아랫배.png"  style="margin-top:-5px; margin-bottom:-10px;" ToolTip="배"></asp:ImageButton>
                <asp:ImageButton ID="Right_loin2" runat="server" OnClick="Right_loin_Click" ImageUrl="img/오른쪽허리아래.png"  style="margin-top:-5px; margin-left:-4px; margin-bottom:-10px;" ToolTip="배"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="Right_arm4" runat="server" OnClick="Right_arm_Click"  ImageUrl="img/오른쪽팔4_.png"  style="margin-top:0px;" ToolTip="팔"></asp:ImageButton><br />
                <asp:ImageButton ID="Left_arm5" runat="server" OnClick="Left_arm_Click" ImageUrl="img/왼쪽팔5_.png"  style="margin-top:-15px;" ToolTip="손"></asp:ImageButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="Right_arm5" runat="server" OnClick="Right_arm_Click" ImageUrl="img/오른쪽팔5_.png"  style="margin-top:-5px;" ToolTip="손"></asp:ImageButton>
            </div>
        </center>
            </asp:Panel>

            <asp:Panel ID="Panel3" runat="server" Visible="false">
                <br /><br /><br /><br />
                <asp:ImageButton ID="Butt" runat="server" OnClick="Butt_Click" ImageUrl="img/엉덩이.png" style="margin:-3px;" ToolTip="엉덩이"></asp:ImageButton><br />
                <asp:ImageButton ID="Genital_organs" runat="server" OnClick="Genital_organs_Click" ImageUrl="img/생식기.png" style="margin:-3px;" ToolTip="생식기"></asp:ImageButton><br />
                <asp:ImageButton ID="Thigh" runat="server" OnClick="Thigh_Click" ImageUrl="img/허벅지.png" style="margin:-3px;" ToolTip="허벅지"></asp:ImageButton><br />
                <asp:ImageButton ID="Knee" runat="server" OnClick="Knee_Click" ImageUrl="img/무릎.png" style="margin:-3px;" ToolTip="무릎"></asp:ImageButton><br />
                <asp:ImageButton ID="Calf" runat="server" OnClick="Calf_Click" ImageUrl="img/종아리.png" style="margin:-3px;" ToolTip="종아리"></asp:ImageButton><br />
                <asp:ImageButton ID="Feet" runat="server" OnClick="Feet_Click" ImageUrl="img/foot.png" style="margin:-3px;" ToolTip="발"></asp:ImageButton>
            </asp:Panel>
            
        </div>       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                <br />
        <br />
        <br />
        <br />
        <br />
        <br />




        <div class="board_wrap">

        <div class="board">
            <span style="font-size:20pt;position:absolute;top:30px;left:25px;text-decoration:underline;">게시판</span>
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="210px" ShowHeader="False" Width="280px" BorderStyle="None" CellPadding="5">
                <Columns>
                    <asp:TemplateField ShowHeader="False" SortExpression="title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <a href="board.aspx"><asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label><a />
                        </ItemTemplate>
                        <ItemStyle BorderStyle="None" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrSelfDBConnectionString %>" SelectCommand="SELECT [title] FROM [Drself_board] ORDER BY [hit] DESC"></asp:SqlDataSource>

        </div>
        <div class="notice_board">
            <span style="font-size:20pt;position:absolute;top:30px;left:25px;text-decoration:underline;">공지사항</span>
            <br />
            <br />
            <br />
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="210px" ShowHeader="False" Width="280px" BorderStyle="None" CellPadding="5">
                <Columns>
                    <asp:TemplateField HeaderText="title" SortExpression="title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <a href="notice_board.aspx"><asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label></a>
                        </ItemTemplate>
                        <ItemStyle BorderStyle="None" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DrSelfDBConnectionString %>" SelectCommand="SELECT [title] FROM [Drself_notice] ORDER BY [hit] DESC"></asp:SqlDataSource>
            
        </div>
        <div class="board3">
            <br /><br /><br />

            <span style="font-size:20pt;position:absolute;top:30px;left:25px;text-decoration:underline;">인기 키워드</span>

            <div style="-webkit-transform: rotate(20deg);position:absolute;top:80px;left:50px;">
            <a href="https://terms.naver.com/entry.nhn?docId=2119936&cid=51004&categoryId=51004" target="_blank"><span style="font-size:18pt;">편두통</span></a>
            </div>

            <br /><br />


            <br /><br />
            <div style="-webkit-transform: rotate(-15deg);position:absolute;top:120px;left:160px;">
            <a href="https://terms.naver.com/entry.nhn?docId=2119956&cid=51004&categoryId=51004" target="_blank"><span style="font-size:18pt;">구내염</span></a>
            </div>

            <br /><br />
            <div style="-webkit-transform: rotate(15deg);position:absolute;top:140px;left:50px;">
            <a href="https://terms.naver.com/entry.nhn?docId=3343331&cid=58505&categoryId=58519" target="_blank"><span style="font-size:18pt;">비염</span></a>
            </div>

            <br /><br />
            <div style="-webkit-transform: rotate(-15deg);position:absolute;top:180px;left:140px;">
            <a href="https://terms.naver.com/entry.nhn?docId=2830073&cid=58505&categoryId=58519" target="_blank"><span style="font-size:18pt;">허리디스크</span></a>
            </div>

            <br /><br />
            <div style="-webkit-transform: rotate(15deg);position:absolute;top:220px;left:50px;">
            <a href="https://terms.naver.com/entry.nhn?docId=927322&cid=51007&categoryId=51007" target="_blank"><span style="font-size:18pt;">관절염</span></a>
            </div>
            <br />
        </div>
        <div class="board4">
            <br />
            <br />
            <a href="/chat_pop.aspx" onclick="window.open(this.href,'_blank','width=400px, height=400px,toolbars=no, scrollbars=no');return false;"><asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/img/Chat_Char.jpg" Width="200px" /></a>
            <br />
            <div></div>
            
        </div>
            </div>
    </center>
</asp:Content>

