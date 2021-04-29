<%@ Page Title="무슨 뜻일까?" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sub4.aspx.cs" Inherits="sub4" %>

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



      .auto-style1
        {
            height: 1500px;
            width: 1280px;
        }

        .go_kor
        {
            font-size:30px;
            margin-left:200px;
        }

        .searching_bar
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            width:300px;
            height:40px;
            margin-left:130px;
        }

        .searching_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .searching_btn:hover
        {
              color:#496003;          
        }

        .auto-stlye2
        {
            height:150px;
            width:1050px;
            border:2px solid #01561f;
            margin-left:150px;
            background-color:#f0f7e5;
        }

        .alpha_btn
        {
            border:none;
            background:none;
            font-family:NanumSquareRound;
            font-weight:800;
            font-size:15pt;
            margin-top:10px;
            cursor:pointer;
        }

        .alpha_btn:hover
        {
            color:#496003;  
        }

        .kor_btn
        {
            border:none;
            font-family:NanumSquareRound;
            font-weight:800;
            font-size:18pt;
            background-color: #a0b858;
            color:black;
            height:35px;
            width:80px;

        }

        table
        {
            border-collapse:collapse;
        }

        tr,td
        {
            border: 2px, solid black;
        }

        .c_table
        {
            width:1050px;
        }




        .newStyle1 {
            font-family: "나눔스퀘어라운드 ExtraBold";
            border-style: solid;
        }
        .auto-style2 {
            width: 1050px;
            height: 700px;
            border: 2px solid #000000;
            margin-left:74px;
            
        }
        .auto-style3 {
            height: 52px;
            border-bottom: 2px solid #000000;
            border-right: 2px solid #000000;
            text-align:center;
        }
        .auto-style4 {
            height: 52px;
            width: 300px;
            border-bottom: 2px solid #000000;
            border-right: 2px solid #000000;
            text-align:center;
        }

        .auto-style5 {
            width: 300px;
            border-bottom: 2px solid #000000;
            border-right: 2px solid #000000;          
        }

        .auto_style6
        {

        }

        .grid_view
        {

        }

        .auto-style6 {

        }

        .auto-style7 {
            color: #496003;
            font-size:25px;
            font-weight:900;
        }

        .auto-style8
        {
            font-size:18px;
            font-weight:900;
        }

        .refresh
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .refresh:hover
        {
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
            margin-left:980px;          
        }

        .source:hover
        {
            color:#496003;
        }

        .mainbar4
{
    color:#496003;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br />
        <br />
        <br /><br />
        <center>
        

        <asp:TextBox ID="TextBox1" runat="server" CssClass="searching_bar"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="|  검 색  |" CssClass="searching_btn" OnClick="Button1_Click"/>
            
    </center>

        <br /><br /><br /><br />

        <div class="auto-stlye2">

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button5" runat="server" Text="한글" CssClass="kor_btn"/>&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="ㄱ" CssClass="alpha_btn" OnClick="Button2_Click"/>
&nbsp;<asp:Button ID="Button3" runat="server" Text="ㄴ" CssClass="alpha_btn" OnClick="Button3_Click"/>
&nbsp;<asp:Button ID="Button4" runat="server" Text="ㄷ" CssClass="alpha_btn" OnClick="Button4_Click"/>
&nbsp;<asp:Button ID="Button6" runat="server" Text="ㄹ" CssClass="alpha_btn" OnClick="Button6_Click" />
&nbsp;<asp:Button ID="Button7" runat="server" Text="ㅁ"  CssClass="alpha_btn" OnClick="Button7_Click"/>
&nbsp;<asp:Button ID="Button8" runat="server" Text="ㅂ" CssClass="alpha_btn" OnClick="Button8_Click"/>
&nbsp;<asp:Button ID="Button9" runat="server" Text="ㅅ" CssClass="alpha_btn" OnClick="Button9_Click"/>
&nbsp;<asp:Button ID="Button10" runat="server" Text="ㅇ" CssClass="alpha_btn" OnClick="Button10_Click"/>
&nbsp;<asp:Button ID="Button11" runat="server" Text="ㅈ" CssClass="alpha_btn" OnClick="Button11_Click"/>
&nbsp;<asp:Button ID="Button12" runat="server" Text="ㅊ" CssClass="alpha_btn" OnClick="Button12_Click"/>
&nbsp;<asp:Button ID="Button13" runat="server" Text="ㅋ" CssClass="alpha_btn" OnClick="Button13_Click"/>
&nbsp;<asp:Button ID="Button14" runat="server" Text="ㅌ" CssClass="alpha_btn" OnClick="Button14_Click"/>
&nbsp;<asp:Button ID="Button15" runat="server" Text="ㅍ" CssClass="alpha_btn" OnClick="Button15_Click"/>
&nbsp;<asp:Button ID="Button16" runat="server" Text="ㅎ" CssClass="alpha_btn" OnClick="Button16_Click"/>

<!--알파벳----------------------------------------------------------------------------------->
                <br /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button17" runat="server" Text="영어" CssClass="kor_btn" />&nbsp; &nbsp; <asp:Button ID="Button18" runat="server" Text="A" CssClass="alpha_btn" OnClick="Button18_Click"/>
&nbsp;<asp:Button ID="Button19" runat="server" Text="B" CssClass="alpha_btn" OnClick="Button19_Click"/>
&nbsp;<asp:Button ID="Button20" runat="server" Text="C" CssClass="alpha_btn" OnClick="Button20_Click"/>
&nbsp;<asp:Button ID="Button21" runat="server" Text="D" CssClass="alpha_btn" OnClick="Button21_Click"/>
&nbsp;<asp:Button ID="Button22" runat="server" Text="E" CssClass="alpha_btn" OnClick="Button22_Click"/>
&nbsp;<asp:Button ID="Button23" runat="server" Text="F" CssClass="alpha_btn" OnClick="Button23_Click"/>
&nbsp;<asp:Button ID="Button24" runat="server" Text="G" CssClass="alpha_btn" OnClick="Button24_Click"/>
&nbsp;<asp:Button ID="Button25" runat="server" Text="H" CssClass="alpha_btn" OnClick="Button25_Click"/>
&nbsp;<asp:Button ID="Button26" runat="server" Text="I" CssClass="alpha_btn" OnClick="Button26_Click" style="width: 16px"/>
&nbsp;<asp:Button ID="Button27" runat="server" Text="J" CssClass="alpha_btn" OnClick="Button27_Click"/>
&nbsp;<asp:Button ID="Button28" runat="server" Text="K" CssClass="alpha_btn" OnClick="Button28_Click"/>
&nbsp;<asp:Button ID="Button29" runat="server" Text="L" CssClass="alpha_btn" OnClick="Button29_Click"/>
&nbsp;<asp:Button ID="Button30" runat="server" Text="M" CssClass="alpha_btn" OnClick="Button30_Click"/>
&nbsp;<asp:Button ID="Button31" runat="server" Text="N" CssClass="alpha_btn" OnClick="Button31_Click"/>
&nbsp;<asp:Button ID="Button32" runat="server" Text="O" CssClass="alpha_btn" OnClick="Button32_Click"/>
&nbsp;<asp:Button ID="Button33" runat="server" Text="P" CssClass="alpha_btn" OnClick="Button33_Click"/>
&nbsp;<asp:Button ID="Button34" runat="server" Text="Q" CssClass="alpha_btn" OnClick="Button34_Click"/>
&nbsp;<asp:Button ID="Button35" runat="server" Text="R" CssClass="alpha_btn" OnClick="Button35_Click"/>
&nbsp;<asp:Button ID="Button36" runat="server" Text="S" CssClass="alpha_btn" OnClick="Button36_Click"/>
&nbsp;<asp:Button ID="Button37" runat="server" Text="T" CssClass="alpha_btn" OnClick="Button37_Click"/>
&nbsp;<asp:Button ID="Button38" runat="server" Text="U" CssClass="alpha_btn" OnClick="Button38_Click"/>
&nbsp;<asp:Button ID="Button39" runat="server" Text="V" CssClass="alpha_btn" OnClick="Button39_Click"/>
&nbsp;<asp:Button ID="Button40" runat="server" Text="W" CssClass="alpha_btn" OnClick="Button40_Click"/>
&nbsp;<asp:Button ID="Button41" runat="server" Text="X" CssClass="alpha_btn" OnClick="Button41_Click"/>
&nbsp;<asp:Button ID="Button42" runat="server" Text="Y" CssClass="alpha_btn" OnClick="Button42_Click" style="width: 27px"/>
&nbsp;<asp:Button ID="Button43" runat="server" Text="Z" CssClass="alpha_btn" OnClick="Button43_Click"/>
            </div>
  
        <br /><br /><br />


        <center>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">용어</td>
                <td class="auto-style3">해석</td>
            </tr>

            <tr>
                <td class="auto-style5"><div style="height: 650px; overflow-y: scroll;">

                    <asp:GridView ID="GridView1" runat="server" BorderStyle="None" CellPadding="5" CellSpacing="10" ShowHeader="False" DataKeyNames="explain_title" GridLines="None" SelectedRowStyle-BackColor="#CCFFCC" Width="300px">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" Text="+" style="color:#496003;text-decoration:none;font-size:14pt;"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

<SelectedRowStyle BackColor="#CCFFCC"></SelectedRowStyle>
                    </asp:GridView>

                    </div>
                </td>
                <td class="auto-style6">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="explain_title" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <br /><br />
                            &nbsp;<asp:Label ID="explain_titleLabel" runat="server" Text='<%# Eval("explain_title") %>' CssClass="auto-style7" />
                            <br /><br /><br />
                            <hr />
                            <br>
                            </br><br />
                            &nbsp;<asp:Label ID="explain_contentLabel" runat="server" Text='<%# Eval("explain_content") %>' CssClass="auto-style8" />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrSelfDBConnectionString %>" SelectCommand="SELECT [explain_title], [explain_content] FROM [explain] WHERE ([explain_title] = @explain_title)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="explain_title" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </tr>
                    
    </div>
                </td>
            
        </table>
        </center>
    <br />
    <asp:Button ID="Button45" runat="server" Text="[출처] 건강보험심사평가원" ToolTip="클릭하시면 건강보험심사평가원 페이지로 이동합니다." CssClass="source" OnClick="Button45_Click"/>
    <br /><br /><br /><br />
    <center>
    <asp:Button ID="Button44" runat="server" Text="|  새 로 고 침  |" OnClick="Button44_Click" CssClass="refresh" />   
        </center> 
    </div>
</asp:Content>

