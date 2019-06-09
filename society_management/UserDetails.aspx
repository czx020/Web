<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <style type="text/css">
    #a
    {
        width:500px;
        margin-top:150px;
        margin:0 auto;
        height:800px;
        padding-top:100px;
    }
    </style>
<div>
<div id="a">
    <p>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;名：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p><br />
<p>性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;别：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p><br />
<p>年&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;龄：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p><br />
<p>身份证号：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p><br />
<p>联系电话：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p><br />
<p>文化程度：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p><br />
<p>婚姻状况：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p><br />
<p>健康状况：<asp:DropDownList ID="DropDownList8" runat="server">
    <asp:ListItem>正常</asp:ListItem>
    <asp:ListItem>疾病人群</asp:ListItem>
    </asp:DropDownList>
</p><br />
<p>工作状况：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="AccessDataSource1" DataTextField="是否下岗" DataValueField="sfxg_id">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/mydatabase.mdb" SelectCommand="SELECT * FROM [是否下岗]">
    </asp:AccessDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="AccessDataSource2" DataTextField="下岗时间" DataValueField="xg_id">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="./mydatabase.mdb" 
        SelectCommand="SELECT * FROM [下岗管理] WHERE ([sfxg_id] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="sfxg_id" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
        DataSourceID="AccessDataSource3" DataTextField="是否上岗培训" DataValueField="sg_id">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
        DataFile="./mydatabase.mdb" 
        SelectCommand="SELECT * FROM [上岗培训记录] WHERE ([sfxg_id] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="sfxg_id" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource></p>
    <br />
 <p>是否享受低保：<asp:DropDownList ID="DropDownList4" runat="server" 
         DataSourceID="AccessDataSource4" DataTextField="是否享受低保" DataValueField="db_id">
    </asp:DropDownList>
     <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
         DataFile="./mydatabase.mdb" SelectCommand="SELECT * FROM [低保管理]">
     </asp:AccessDataSource>
    </p><br />
 <p>是否伤残人士：<asp:DropDownList ID="DropDownList5" runat="server" 
         DataSourceID="AccessDataSource5" DataTextField="是否残疾人" DataValueField="cj_id">
    </asp:DropDownList>
     <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
         DataFile="./mydatabase.mdb" SelectCommand="SELECT * FROM [残疾人管理]">
     </asp:AccessDataSource>
    </p><br />
    <p class="bt_1"><asp:Button ID="Button1" runat="server" Text="更改"  Width="60px" Height="30px" 
        onclick="Button1_Click"/></p>





</div>
</div>










    </form>
</asp:Content>

