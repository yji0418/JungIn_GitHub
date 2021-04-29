<%@ Page Title="Dr.Self 게시판" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="board.aspx.cs" Inherits="board" %>

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


        .auto-style1 
        {
            height: 1500px;
            width: 1280px;
            background-color:white;
            text-align: center;
        }

        .board_kor
        {
            font-size:50px;
        }

        .board
        {
            font-size:20px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

        .gridView
        {
            border-collapse:collapse;
            width:100%;
        }

        .gridView th
        {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        .gridView td
        {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        /*.gridView tr:hover 
        {
            background-color:#d4ffc9;
        }*/

        .write_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .write_btn:hover
        {
            color:#496003;
        }

        .gridView
        {
            text-decoration:none;
        }
        .a{
            text-decoration:none;
        }

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--게시판 문구-->
        <div class="board_kor" align="center">게시판</div>

        <!--Board 문구-->
        <div class="board" align="center">BOARD</div>

        <br /><br />

        <!--게시판 GridView-->
        <center>
        <asp:GridView ID="GridView1" runat="server" CssClass="gridView" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="seq" DataSourceID="SqlDataSource1" Width="1200px">
            <Columns>
                <asp:BoundField DataField="seq" HeaderText="번호" InsertVisible="False" ReadOnly="True" SortExpression="seq">
                <HeaderStyle Width="60px" HorizontalAlign="Center" Height="40px" />
                <ItemStyle Height="50px" HorizontalAlign="Center"/>
                </asp:BoundField>
                <asp:TemplateField HeaderText="제목" SortExpression="title">
                    <ItemTemplate>
                        <%# ShowDepth((int)Eval("depth")) %>
                        <%# ShowReplyIcon((int)Eval("inner_id")) %>
                        <%# ShowTitle(Eval("seq").ToString(), Eval("title").ToString(),Eval("deleted").ToString()) %>
                    </ItemTemplate>
                    <HeaderStyle Width="330px" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="작성자" SortExpression="name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="60px" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="wDate" HeaderText="작성일" SortExpression="wDate">
                <HeaderStyle Width="80px" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="hit" HeaderText="조회수" SortExpression="hit">
                <HeaderStyle HorizontalAlign="Center" Width="40px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrSelfDBConnectionString %>" SelectCommand="SELECT [seq], [title], [name], [wDate], [hit], [ref_id], [inner_id], [depth], [deleted] FROM [Drself_board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
        </center>

        <br /><br /><br />

        <asp:Button ID="Button2" runat="server" Text="|  글 쓰 기  |"  PostBackUrl="~/MemberOnly/board_write2.aspx" CssClass="write_btn" />
    </div>
</asp:Content>

