<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_add.aspx.cs" Inherits="user_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <style type="text/css">
    #box
    {
       
    }
    #table
    {
        margin:0 auto;
        margin-top:150px;
        margin-left:650px;
        width:600px;
        height:800px;
        background-color:#EEE9E9;
        padding-top:40px;
        padding-left:100px;
    }
    #table p
    {
       font-size:20px;
       font-weight:30px;
    }
    #table input
    {
        height:30px;
        border-radius:10px;
        text-align:center;
        width:45%;
    }
     #table .bt_1
    {
        margin-left:260px;
        width:100px;
    }
    #table .bt_1 input:hover
    {
        color:#E066FF;
    }
    </style>
<div id="box">
<div id="table">
<h2>居民信息添加</h2>
<p>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p><br />
<p>性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;别：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p><br />
<p>年&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;龄：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p><br />
<p>身份证号：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p><br />
<p>联系电话：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p><br />
<p>文化程度：<asp:DropDownList ID="DropDownList6" runat="server">
    <asp:ListItem>高中</asp:ListItem>
    <asp:ListItem>小学</asp:ListItem>
    <asp:ListItem>大专及以上</asp:ListItem>
    <asp:ListItem>文盲</asp:ListItem>
    </asp:DropDownList>
</p><br />
<p>婚姻状况：<asp:DropDownList ID="DropDownList7" runat="server">
    <asp:ListItem>未婚</asp:ListItem>
    <asp:ListItem>已婚</asp:ListItem>
    </asp:DropDownList>
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
        DataFile="./mydatabase.mdb" SelectCommand="SELECT * FROM [是否下岗]">
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
 <p>是否低保户：<asp:DropDownList ID="DropDownList4" runat="server" 
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
    <p class="bt_1"><asp:Button ID="Button1" runat="server" Text="添加"  Width="60px" Height="30px" 
        onclick="Button1_Click"/></p>

    </div>



</div>





    </form>
</asp:Content>

