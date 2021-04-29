<%@ Page Title="음식+약물=?" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sub3.aspx.cs" Inherits="sub3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        *::selection 
{
    background-color: #63CC63;
    color: white;
}

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



        .auto-style1{
            height: 1500px;
            width: 1345px;
        }

        .searching_bar
        {
            border:3px solid #A1B859;
            width:950px;
            height:50px;
            background-color:#f0f7e5;
        }

        .grid_area
        {
            border-bottom:3px solid #A1B859;
            border-right:3px solid #A1B859;
            border-left:3px solid #A1B859;
            width:950px;
            height:300px;
            overflow-y:scroll;
            overflow-x:hidden;
            margin-top:-0.1px;
        }

        .searching_bar_sub
        {
            margin-left:-200px;
            line-height:50px;
        }

        .searching_txt
        {
            width:400px;
            height:30px;
            font-size: 13pt;
            font-weight: bold;
            font-family:NanumSquareRound;
        }

        .searching_btn
        {
            border:#496003;
            background-color:#496003;
            color:white;
            height:35px;
            width:80px;
            font-family:NanumBarunGothic;
            font-weight:900;
            font-size:14pt;
            cursor:pointer;
            text-align: center;
            line-height: 35px;
        }

        .gridview1
        {
            border-bottom:none;
            border-top:none;
            border-left:none;
            border-right:none;
        }

        .gird_name
        {
            color:#496003;
            font-size:16pt;
        }

        .Header_name
        {
            color:#496003;
            border-bottom:1px solid;
        }

        .Header_ingre
        {
            border-bottom:1px solid;
        }

        .select
        {
            border-bottom:1px solid;
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
        .select_btn
        {
            text-decoration:none;
            font-size:14pt;
            color:#496003;
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
            margin-left:830px;          
        }

        .source:hover
        {
            color:#496003;
        }

        .mainbar3
{
    color:#496003;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1"><br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <center>
        <h2 style="margin-left:-860px;">제품 검색</h2><br />
        <div class="searching_bar">
            <div class="searching_bar_sub">
            <span style="font-size:14pt;">제품명 / 성분명</span>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="searching_txt"></asp:TextBox> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="검색"  style="border:#496003; background-color:#496003; color:white; width:80px;height:35px; font-family:NanumSquareRound; font-weight:900;font-size:14pt;" OnClick="Button1_Click1"/>
            &nbsp;<asp:Button ID="Button3" runat="server" Text="다시검색" style="border:#496003; background-color:#555; color:white; width:80px;height:35px; font-family:NanumSquareRound; font-weight:900;font-size:14pt;" OnClick="Button3_Click"/>
            </div>
        </div>
        </center>
        <center>
        <div class="grid_area" >
            <asp:GridView ID="GridView1" runat="server" style="width:950px;" BorderStyle="None" CellPadding="10" CellSpacing="10" GridLines="None" DataKeyNames="name" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="제품명" SortExpression="name" ShowHeader="True" >
                    <HeaderStyle CssClass="Header_name" HorizontalAlign="Left" VerticalAlign="Middle" />
                    <ItemStyle CssClass="gird_name" Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ingre1" HeaderText="성분명" SortExpression="ingre1" ShowHeader="True" >
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" CssClass="Header_ingre" />
                    <ItemStyle CssClass="grid_ingre1" Width="400px" />                    
                    </asp:BoundField>

                    <asp:TemplateField ShowHeader="True" HeaderText="선택">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" Text="+" CssClass="select_btn"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle CssClass="select" HorizontalAlign="Left" VerticalAlign="Middle"  />
                        <ItemStyle CssClass="select_btn" Font-Bold="True" HorizontalAlign="Center"/>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            
            <br />

        </div>
</center>
        <br />
        <asp:Button ID="Button4" runat="server" Text="[출처] 약학정보원 약물-음식 상호작용" ToolTip="클릭하시면 약학정보원 페이지로 이동합니다" CssClass="source" OnClick="Button4_Click"></asp:Button>
        <br />
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
             <br />
             <asp:Button ID="Button2" runat="server" Text="주의사항" Enabled="False" CssClass="enable_btn" Width="130px" Height="40px"/>
             <br />
             <hr  style="margin-top:-1px; border:2px solid black;"/>
             <br />
             <asp:Label ID="Label18" runat="server" style="font-size:18pt; color:black;"></asp:Label>
             <br />
             <br />
            <br />
             &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label2" runat="server" CssClass="gird_name"></asp:Label>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label4" runat="server"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label5" runat="server"></asp:Label>
             <br />
             <br />
             <br />
            &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label6" runat="server" CssClass="gird_name"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label7" runat="server"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label8" runat="server"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label9" runat="server"></asp:Label>
             <br />
             <br />
             <br />
            &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label10" runat="server" CssClass="gird_name"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label11" runat="server"></asp:Label>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /> &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label12" runat="server" CssClass="gird_name"></asp:Label>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label13" runat="server"></asp:Label>
             <br />
             <br />
             <br />
             &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label14" runat="server" CssClass="gird_name"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label15" runat="server"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label16" runat="server"></asp:Label>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label17" runat="server"></asp:Label>
             <br />
             <br />
        </asp:Panel>

    </div>
</asp:Content>

