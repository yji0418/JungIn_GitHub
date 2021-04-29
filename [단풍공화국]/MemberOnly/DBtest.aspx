<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DBtest.aspx.cs" Inherits="DBtest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
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
        .auto-style1 {
            width: 500px;
            height:100px;
            align-content:center;
            text-align:center;
            font-size:14pt;
        }
        .auto-style2 {
            background-color: #ffa669;
        }

        .auto-style4{
            width:622px;
            height:500px;
                        text-align:center;
            align-content:center;
        }

        .auto-style5 {
            background-color: #ffa669;
            width:150px;
            text-align:center;
            align-content:center;
        }

        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            color: #0000CC;
        }

        .auto-style8 {
            width: 300px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div><p style="font-family:메이플스토리 Light; font-size:30pt; font-weight:700;">마이 메이플</p></div>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
        <br />
        <br />
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Width="150px" ToolTip="maple.gg로 이동"/>
        <br />
        <br />
        <br />
        <strong>

        <asp:Label ID="Label3" runat="server" style="font-size:18pt;font-weight:700;"></asp:Label>

        </strong>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">레벨</td>
                <td class="auto-style2">직업</td>
                <td class="auto-style2">서버</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />

 

        <table class="auto-style4">
            <tr>
                <td class="auto-style5">스텟 공격력</td>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><span class="auto-style6">HP</span> / <span class="auto-style7">MP</span></td>
                <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style6"></asp:Label>
&nbsp;/
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">STR</td>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">DEX</td>
                <td class="auto-style8">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">INT</td>
                <td class="auto-style8">
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">LUK</td>
                <td class="auto-style8">
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">크리티컬 데미지</td>
                <td class="auto-style8">
                    <asp:Label ID="Label14" runat="server"></asp:Label>
                    %</td>
            </tr>
            <tr>
                <td class="auto-style5">보스 공격력</td>
                <td class="auto-style8">
                    <asp:Label ID="Label15" runat="server"></asp:Label>
                    %</td>
            </tr>
            <tr>
                <td class="auto-style5">방어율 무시</td>
                <td class="auto-style8">
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                    %</td>
            </tr>
        </table>

 

        <br />
        <br />
        <br />
    </div>
</asp:Content>

