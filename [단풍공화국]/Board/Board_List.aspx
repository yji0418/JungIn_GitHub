<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Board_List.aspx.cs" Inherits="Board_Board_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .board_kor
        {
            font-size:50px;
        }

        .util_text
        {
            font-family:메이플스토리 Light; 
            font-size:16pt; 
            background:none; 
            border:none; 
            color:black;
        }


                .header_name
        {
            display:inline;
            width:25%;
            float:left;
            color:black;
            height:50px;
        }


                .home_a pre
        {
            color:black;
            text-decoration-color:none;
        }

        .home_a pre:hover
        {
            color:#F68500;
        }

        .title_area
        {
            color:black;
        }

        .grid
        {
            font-size:16pt;
        }

        .wr_btn
        {
            font-size: 15pt;
            font-family:메이플스토리 Light;

            background-color: #F68500;
            color: black;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br /><br /><br /><br /><br /><br />

        <!--게시판 문구-->
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">자유게시판</p></div>

        <br /><br /><br /><br /><br />


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="seq" DataSourceID="SqlDataSource1" GridLines="Horizontal" BorderStyle="None" CellSpacing="5" HorizontalAlign="Center" PageSize="5" Width="1000px" CssClass="grid">
            <Columns>
                <asp:BoundField DataField="seq" HeaderText="번호" InsertVisible="False" ReadOnly="True" SortExpression="seq">
                <HeaderStyle HorizontalAlign="Center" Height="40px" />
                <ItemStyle HorizontalAlign="Center" Width="60px" Height="50px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="제목" SortExpression="title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# ShowDepth((int)Eval("depth")) %>
                        <%# ShowReplyIcon((int)Eval("inner_id")) %>
                        <%# ShowTitle( Eval("seq").ToString( ),
                                             Eval("title").ToString( ),
                                             Eval("deleted").ToString( )) %>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Height="40px" Width="330px" />
                    <ItemStyle HorizontalAlign="Left" Width="330px" CssClass="title_area" Height="50px" />
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="작성자" SortExpression="name">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" Width="80px" Height="40px" />
                <ItemStyle HorizontalAlign="Center" Height="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="wDate" HeaderText="게시일" SortExpression="wDate" DataFormatString="{0:yyyy-MM-dd}">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" Width="120px" Height="40px" />
                <ItemStyle HorizontalAlign="Center" Height="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="hit" HeaderText="조회" SortExpression="hit">
                <HeaderStyle HorizontalAlign="Center" Height="40px" />
                <ItemStyle HorizontalAlign="Center" Width="40px" Height="50px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [seq], [title], [name], [wDate], [hit], [ref_id], [inner_id], [depth], [deleted] FROM [board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/MemberOnly/Write.aspx" Text="글쓰기" CssClass="wr_btn"/>
        <br />
        <br />
        <br />
        <br />
        <br />


    </div>
</asp:Content>

