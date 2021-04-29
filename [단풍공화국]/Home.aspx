<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 954px;
        height: 588px;
    }

            #video 
        {
         position: fixed;
         top: 0px;
         left: 0px;
         min-width: 100%;
         min-height: 100%;
         width: auto;
         height: auto;
         z-index: -1;
         overflow: hidden;
        filter: brightness(40%); 
        }

        .why
        {
            font-size:30pt;
            color:white;
            font-weight:900;
        }

            .modal { 
         position: fixed; 
         left: 0; 
         top: 0; 
         width: 100%; 
         height: 100%; 
         background-color: rgba(0, 0, 0, 0.5); 
         opacity: 0; 
         visibility: hidden; 
         transform: scale(1.1); 
         transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; 
     } 
     .modal-content { 
         position: absolute; 
         top: 50%; 
         left: 50%; 
         transform: translate(-50%, -50%); 
         background-color: white; 
         padding: 1rem 1.5rem; 
         width: 800px; 
         height: 650px; 
         border-radius: 0.5rem; 
     } 
     .close-button { 
         float: right; 
         width: 1.5rem; 
         line-height: 1.5rem; 
         text-align: center; 
         cursor: pointer; 
         border-radius: 0.25rem; 
         background-color: lightgray; 
     } 
     .close-button:hover { 
         background-color: darkgray; 
     } 
     .show-modal { 
         opacity: 1; 
         visibility: visible; 
         transform: scale(1.0); 
         transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s; 
     } 

     .trigger
     {
         background-color:#F68500;
         box-shadow: 5px 5px black;
         border:none;
         width:200px;
         height:50px;
         font-family:메이플스토리 Light;
         font-size:18pt;
         font-weight:500;
         color:white;
         cursor:pointer;
     }

     .trigger:hover
     {
         color:black;
     }

     .title
     {
         color:#F68500;
     }

             .home_a pre
        {
            color:white;
            text-decoration-color:none;
        }

        .home_a pre:hover
        {
            color:#F68500;
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="/Images/main_mp4.mp4"></video>

    <div class="auto-style1">
        <br />
        <br />
        <p class="why">사람들은 그 누구보다</p>
        <p class="why">메이플을 좋아하면서</p>
        <p class="why">왜 본심을 숨기는걸까?</p>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/saramdeul2.png" Height="400px" Width="550px" /> 
        <br /><br /><br /><br /><br /><br />
    </div>
    <br /><br /><br />
         <button class="trigger" runat="server" CausesValidation="False">어떤 웹인가요?</button> 
     <!-- 팝업 될 레이어 --> 
     <div class="modal"> 
         <div class="modal-content"> 
             <span class="close-button">&times;</span> 
             <h1 class="title">어떤 웹인가요?</h1> 
             <br /><br />
             <p>※ 이 홈페이지는 Google Chrome과 '메이플스토리 Light'서체에 최적화 되어 있습니다 ※</p><br />
             <p>안녕하세요! </p>
             <p>단풍자치국 웹사이트에 오신것을 환영합니다! </p><br />
             <p>단풍자치국은 온라인 PC게임 'MapleStory' 유저들을 위한 커뮤니티 웹 사이트 입니다</p>
             <p>홈페이지 우측 상단의 네비게이션 메뉴로 회원가입, 앨범 등 서브페이지로의 이동이 가능합니다</p>
             <br />
             <p>아래는 서브 페이지의 간단한 설명입니다. <br />페이지명을 클릭하면 해당 페이지로 이동합니다.</p>
             <br />

             <p><a href="/Register.aspx">-회원가입-</a></p>
             <p>회원가입을 할 수 있는 페이지 입니다.</p><br />

             <p><a href="/myLogin.aspx">-로그인-</a></p>
             <p>회원가입 후 로그인이 가능한 페이지 입니다.</p><br />

             <p><a href="/MemberOnly/Modify.aspx">-마이페이지-</a></p>
             <p>로그인 후 계정정보 수정이 가능한 페이지 입니다.</p><br />

             <p><a href="/Album/List.aspx">-앨범-</a></p>
             <p>자유롭게 사진을 포함한 게시글을 올릴 수 있는 갤러리 입니다.</p><br />

             <p><a href="/Board/Board_List.aspx">-게시판</a></p>
             <p>자유롭게 첨부파일을 포함한 게시글을 올릴 수 있는 게시판 입니다.</p><br />

             <p><a href="/MemberOnly/CalendarEx.aspx">-달력-</a></p>
             <p>게임에서 중요한 약속이나 할 일을 기록할 수 있는 달력 페이지 입니다.</p><br />

             <p><a href="/MemberOnly/DBtest.aspx">-마이 메이플-</a></p>
             <p>자신의 메이플스토리 캐릭터의 상세 스텟 정보를 확인할 수 있는 페이지 입니다.<br />캐릭터 정보 등록 페이지는 추후에 추가될 예정입니다.</p>
               <input type="email" name="email" placeholder="Your email" required="required" aria-disabled="True" hidden="hidden"/> 
         </div> 
     </div>

    <script type="text/javascript"> 
         var modal = document.querySelector(".modal"); 
         var trigger = document.querySelector(".trigger"); 
         var closeButton = document.querySelector(".close-button"); 
         var cancelButton = document.querySelector("#cancel");

        //console.log(modal);

        function toggleModal() { 
             modal.classList.toggle("show-modal"); 
         }

        function windowOnClick(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

        trigger.addEventListener("click", toggleModal); 
         closeButton.addEventListener("click", toggleModal); 
         cancel.addEventListener("click", toggleModal); 
         window.addEventListener("click", windowOnClick); 
     </script>





</asp:Content>

