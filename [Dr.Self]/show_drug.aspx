<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show_drug.aspx.cs" Inherits="show_drug" %>

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


        .auto-style1{
            height: 1600px;
            width: 1350px;
        }

        .auto-style2 {
            width: 1151px;
            height: 337px;
            text-align:center;
        }
        .auto-style3 {
            width: 414px;
            text-align: center;
        }
        .auto-style4 {
            width: 156px;
            background-color: #CCCCCC;
            text-align:center;
        }

        .enable_btn
        {
            border-right:2px solid black; 
            border-left:2px solid black; 
            border-top:2px solid black;
            border-bottom:1px solid black;
            background:none;
            background-color:#c7c3c2;
            font-family:NanumBarunGothic;
            font-weight:900;
            font-size:18pt;
            color:black;
            text-align:center; 
        }

        .gird_name
        {
            color:#496003;
            font-size:18pt;
            margin-left:10px;
        }

        .effect_label
        {
            font-size:14pt;
            margin-left:10px;
        }

        .grid_explain
        {
            font-size:14pt;
            padding-top:5px;
            margin-left:14px;
        }

        a
        {
            text-decoration:none;
        }

        .source
        {
            cursor:pointer;
            border:none;
            background:none;
            font-family:NanumSquareRound;
            font-weight:900;
            font-size:13pt;
            color:black;
            margin-left:1060px;         
             
        }

        .source:hover
        {
            color:#496003;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
        <br /><br /><br />
        <h2 style="display:inline;">제품 상세 정보</h2><asp:Button ID="Button1" runat="server" Text="[출처] 약학정보원"  CssClass="source" OnClick="Button1_Click" ToolTip="클릭하시면 약학정보원 페이지로 이동합니다"/>
        <hr />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" rowspan="6">
                    <asp:Image ID="Image1" runat="server" Height="320px" Width="500px" />
                </td>
                <td class="auto-style4">제품명</td>
                <td style="border-bottom:2px solid #c7c3c2">
                    <strong>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">성분 / 함량</td>
                <td style="border-bottom:2px solid #c7c3c2">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">투여경로</td>
                <td style="border-bottom:2px solid #c7c3c2;background-color:white;">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">제형</td>
                <td style="border-bottom:2px solid #c7c3c2;background-color:white;">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">색상</td>
                <td style="border-bottom:2px solid #c7c3c2;background-color:white;">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">회사명</td>
                <td style="border-bottom:2px solid #c7c3c2;background-color:white;">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <h3 style="margin-left:-1000px;">효능</h3>
        <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="효능 / 효과" Enabled="False" CssClass="enable_btn" Width="150px" Height="40px"/>
                <br />
                <hr  style="margin-top:-1px; border:2px solid black;"/>
                &nbsp;<br />

        
        <asp:Label ID="Label9" runat="server" CssClass="effect_label"></asp:Label>
        <br />
         <br />
        
        <asp:Label ID="Label10" runat="server" CssClass="effect_label"></asp:Label>
        <br />
        <br />
        
        <asp:Label ID="Label11" runat="server" CssClass="effect_label"></asp:Label>
        <br />
        <br />
        
        <asp:Label ID="Label12" runat="server" CssClass="effect_label"></asp:Label>
        <br />
        <br />
        
        <asp:Label ID="Label13" runat="server" CssClass="effect_label"></asp:Label>
        <br />
        <br />
        <br />

                <asp:Button ID="Button2" runat="server" Text="주의사항" Enabled="False" CssClass="enable_btn" Width="150px" Height="40px"/>
                <br />
                <hr  style="margin-top:-1px; border:2px solid black;"/>
                &nbsp;<br />
                
                <asp:Label ID="Label14" runat="server" CssClass="gird_name"></asp:Label>
        <br />
        
        <asp:Label ID="Label15" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        
        <asp:Label ID="Label16" runat="server" CssClass="grid_explain"></asp:Label>
                <br />
        
        <asp:Label ID="Label17" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        <br />
        <br />
        
        <asp:Label ID="Label18" runat="server" CssClass="gird_name"></asp:Label>
        <br />
        
        <asp:Label ID="Label19" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        
        <asp:Label ID="Label20" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        
        <asp:Label ID="Label21" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        <br />
        <br />
        
        <asp:Label ID="Label22" runat="server" CssClass="gird_name"></asp:Label>
        <br />
        
        <asp:Label ID="Label23" runat="server" CssClass="grid_explain"></asp:Label>
        <br />
        <br />
        <br />
        
        <asp:Label ID="Label24" runat="server" CssClass="gird_name"></asp:Label>
        <br />
        
        <asp:Label ID="Label25" runat="server" CssClass="grid_explain"></asp:Label>
                <br />
    </div>
</asp:Content>

