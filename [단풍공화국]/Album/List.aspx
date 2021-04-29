<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Album_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .auto-style1{
            height:800px;
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

   <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">스크린샷 앨범</p></div><br /><br />
    <asp:Button ID="Button1" runat="server" Text="사진 올리기" PostBackUrl="~/Album/AddPhoto.aspx" style="font-family:메이플스토리 Light; font-size:16pt; background:#F68500; border:none;" width="120px" Height="40px" />    
    <br /><br /><br /><br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="imgID" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3">
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <a href='Show.aspx?imgID=<%# Eval("imgID") %>'><asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Photos/" + Eval("fName") %>' Height="180px" Width="400px" /></a>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("pDate","{0:yyyy-MM-dd}") %>'></asp:Label>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [imgID], [title], [name], [fName], [pDate] FROM [Photos] ORDER BY [imgID] DESC"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/orange.gif" style="float:left;margin-top:100px;"/>
        </div>
</asp:Content>

