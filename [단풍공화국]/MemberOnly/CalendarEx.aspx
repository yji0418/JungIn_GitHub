<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalendarEx.aspx.cs" Inherits="MemberOnly_CalendarEx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 45px;
        }
        .auto-style5 {
            height: 20px;
            width: 45px;
        }
        .auto-style7 {
            width: 1078px;
        }
        .auto-style8 {
            width: 1072px;
            height: 300px;
        }
        .auto-style9 {
            text-align: left;
            height: 359px;
            width: 652px;
        }
        .auto-style10 {
            height: 359px;
            width: 410px;
            text-align: left;
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

        .Calen
        {
            font-family:메이플스토리 Light;
            font-size:16pt;
        }

        .auto-style11 {
            height: 140px;
            text-align: left;
        }

        .sub_btn
        {
            font-family:메이플스토리 Light;
            font-size:14pt;
            height:30px;
            width:80px;
            background-color:#F68500;
            border:none;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style7"> 
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">할일 기록</p></div>
            
        <br /><br /><br />
        <table class="auto-style8">
            <tr>
                <td class="auto-style10" style="vertical-align: top">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#F68500" DayNameFormat="Shortest" Font-Names="메이플스토리 Light" Font-Size="12pt" ForeColor="black" Height="308px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="477px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" CssClass="Calen">
                        <DayHeaderStyle BackColor="#ffc094" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="20pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#ffa669" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="메이플스토리 Light" Font-Size="8pt" ForeColor="#333333" Width="1%"/>
                        <TitleStyle BackColor="#F68500" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="20pt" />
                        <TodayDayStyle BackColor="#F86500" />
                    </asp:Calendar>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" style="margin-left:150px;"></asp:Label>
                </td>
                <td class="auto-style9" style="vertical-align: top">
                    <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" Width="100%" BackColor="White" BorderColor="#F86500" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="30px">
                        <AlternatingItemStyle BackColor="#ffe8d9" />
                        <FooterStyle BackColor="#ffa669" Height="30px" />
                        <FooterTemplate>
                            일일보스를 까먹지 말자!
                        </FooterTemplate>
                        <HeaderStyle BackColor="#F86500" ForeColor="White" Height="30px" />
                        <HeaderTemplate>
                            <strong>오늘의 일정</strong>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style4">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("seq") %>' Height="17px" ImageUrl="~/Images/done.gif" Width="15px" CommandName="Done"/>
                                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("seq") %>' Height="17px" ImageUrl="~/Images/deleteX.gif" Width="15px" CommandName="Delete"/>
                                    </td>
                                    <td>
                                        <strong>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("sTime") %>'></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"></td>
                                    <td class="auto-style3">
                                        <strong>
                                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# DoneCheck(Eval("toDo"),Eval("hasDone")) %>' style="color: #666666"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                    <div>
                        <br />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="vertical-align: central" colspan="2">
                        새 할일 : <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" style="font-family:메이플스토리 Light; font-size:12pt;"></asp:TextBox>
                        <br /><br />
                        시작 시간 :
                        <asp:DropDownList ID="DropDownList1" runat="server" style="font-family:메이플스토리 Light; font-size:12pt;" Height="30px" Width="200px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" style="font-family:메이플스토리 Light; font-size:12pt;" Height="30px" Width="200px">
                        </asp:DropDownList>
&nbsp;<asp:Button ID="Button5" runat="server" Text="등록" OnClick="Button5_Click" CssClass="sub_btn"/>
                        <br />
                        <br />
                        <strong>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                        </strong>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>

