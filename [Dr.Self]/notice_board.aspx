<%@ Page Title="Dr.Self 공지사항" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="notice_board.aspx.cs" Inherits="board" %>

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
            text-align:left;
            border-bottom: 1px solid #ddd;
        }

        .gridView td
        {
            padding: 8px;
            text-align:left;
            border-bottom: 1px solid #ddd;
        }

        .gridView tr:hover 
        {
            background-color:#d4ffc9;
        }

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


</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--게시판 문구-->
        <div class="board_kor" align="center">공지사항</div>

        <!--Board 문구-->
        <div class="board" align="center">NOTICE</div>

        <br /><br />

        <!--게시판 GridView-->
        <center>        
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="seq" DataSourceID="SqlDataSource1" PageSize="5" Width="1200px">
                <Columns>
                    <asp:BoundField DataField="seq" HeaderText="번호" InsertVisible="False" ReadOnly="True" SortExpression="seq" >
                        <HeaderStyle Height="40px" />
                    <ItemStyle Width="30px" Height="50px" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="제목" SortExpression="title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <!--글 올리는데까지는 성공했는데 일반 게시물 write가 뜸....왜지...-->
                            <%# ShowDepth((int)Eval("depth")) %>
                            <%# ShowReplyIcon((int)Eval("inner_id")) %>
                            <%# ShowTitle(Eval("seq").ToString( ),Eval("title").ToString( ),Eval("deleted").ToString( )) %>
                        </ItemTemplate>
                        <ItemStyle Width="330px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="wDate" HeaderText="게시일" SortExpression="wDate" >
                    <ItemStyle Width="100px" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="hit" HeaderText="조회수" SortExpression="hit" >
                    <ItemStyle Width="30px" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrSelfDBConnectionString %>" SelectCommand="SELECT [seq], [title], [wDate], [hit],[depth],[inner_id],[deleted] FROM [Drself_notice] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
        </center>

        <br /><br /><br />

        <asp:Button ID="Button2" runat="server" Text="|  글 쓰 기  |"  CssClass="write_btn" OnClick="Button2_Click" PostBackUrl="~/MasterOnly/notice_write.aspx" />
    </div>
</asp:Content>

