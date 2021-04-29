<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="Album_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .formview
        {
            font-family:메이플스토리 Light;
            font-size:16pt;
        }



        .auto-style2 {
            width: 100%;
            height: 334px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            width: 156px;
        }
        .auto-style5 {
            height: 42px;
            width: 156px;
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
    <div>
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">사진 보기</p></div><br /><br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/modify.gif" OnClick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/delete.gif" OnClientClick="return confirm('정말로 삭제하시겠습니까?');" OnClick="ImageButton2_Click" />
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/write.gif" PostBackUrl="~/Album/AddPhoto.aspx" />
&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/list.gif" PostBackUrl="~/Album/List.aspx" />
        <br /><br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="imgID" DataSourceID="SqlDataSource1" Width="700px" CssClass="formview">
            <EditItemTemplate>
                imgID:
                <asp:Label ID="imgIDLabel1" runat="server" Text='<%# Eval("imgID") %>' />
                <br />
                userID:
                <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                pwd:
                <asp:TextBox ID="pwdTextBox" runat="server" Text='<%# Bind("pwd") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                body:
                <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                hit:
                <asp:TextBox ID="hitTextBox" runat="server" Text='<%# Bind("hit") %>' />
                <br />
                pDate:
                <asp:TextBox ID="pDateTextBox" runat="server" Text='<%# Bind("pDate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <InsertItemTemplate>
                userID:
                <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                pwd:
                <asp:TextBox ID="pwdTextBox" runat="server" Text='<%# Bind("pwd") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                body:
                <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                hit:
                <asp:TextBox ID="hitTextBox" runat="server" Text='<%# Bind("hit") %>' />
                <br />
                pDate:
                <asp:TextBox ID="pDateTextBox" runat="server" Text='<%# Bind("pDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Photos/"+Eval("fName") %>' Width="700px" />
                <br />
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style4" style="border-bottom:2px solid #F68500;">이미지번호</td>
                        <td style="border-bottom:2px solid #F68500;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("imgID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="border-bottom:2px solid #F68500;">작성자</td>
                        <td class="auto-style3" style="border-bottom:2px solid #F68500;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="border-bottom:2px solid #F68500;">사진 제목</td>
                        <td style="border-bottom:2px solid #F68500;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="border-bottom:2px solid #F68500;">사진 설명</td>
                        <td style="border-bottom:2px solid #F68500;">
                            <asp:TextBox ID="TextBox1" runat="server" Height="50px" style="font-family:메이플스토리 Light; font-size: 12pt;" Text='<%# Bind("body") %>' TextMode="MultiLine" Width="423px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="border-bottom:2px solid #F68500;">조회수</td>
                        <td style="border-bottom:2px solid #F68500;">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("hit") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="border-bottom:2px solid #F68500;">작성일</td>
                        <td style="border-bottom:2px solid #F68500;">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("pDate") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT * FROM [Photos] WHERE ([imgID] = @imgID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="imgID" QueryStringField="imgID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

