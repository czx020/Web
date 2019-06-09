<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resident archives.aspx.cs" Inherits="Resident_archives" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <style type="text/css"> 
    .fl
    {
        float:left;
    }
    .clr
    {
        clear:both;
    }
    #box
    { width:1500px;
      height:auto;
      margin-top:100px;
      margin-left:400px;
    }
    #itm_imformation table 
    {
        width:1400px;
        text-align:center;
    }
    #itm_imformation table  td
    {
      width:110px;
      float:left;
      margin-left:40px;
      text-align:center;
      padding-bottom:20px;

    }
        #itm_imformation table  tr
    {
      width:1000px;
    }
     .table table
    {
        width:1400px;
        text-align:center;
    }
    .table table th
    {
       width:62px;
       margin-left:84px;
       float:left;

    }
    .data_page
    {
        margin:0 auto;
        width:500px;
    }
    
    
    </style>
 <div>
<div id="box">
<h1>居民信息</h1>
<div class="table">
<table><tr>
<th>姓名</th>
<th>性别</th>
<th>身份证号</th>
<th>联系电话</th>
<th>文化程度</th>
<th>婚姻状况</th>


</tr></table></div>
    <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="a"  DataKeyNames="身份证号"
        DataSourceID="AccessDataSource1">
    <LayoutTemplate>
    
    <div id="a" runat="server"></div>
    </LayoutTemplate>

    <ItemTemplate>

    <div>
    <div id="itm_imformation" class="fl">
    <table>
        <tr><td><%#Eval("姓名") %></td>
            <td><%#Eval("性别") %></td>
            <td><%#Eval("身份证号") %></td>
            <td><%#Eval("联系电话") %></td>
            <td><%#Eval("文化程度") %></td>
            <td><%#Eval("婚姻状况") %></td>

            <td><a><asp:Button ID="Button2" runat="server" Text="删除用户" CommandName="delete"/></a></td>
            <td><a href="UserDetails.aspx?sf=<%#Eval("身份证号") %>">用户详细信息</a></td></tr>
        
        </table></div>




    <div class="clr"></div>
    
    
    
    </div>
  
    </ItemTemplate>
    <EditItemTemplate></EditItemTemplate>

    </asp:ListView>
    <div class="data_page">
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="3">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="./mydatabase.mdb" SelectCommand="SELECT * FROM [居民信息]" 
        DeleteCommand="DELETE FROM [居民信息] WHERE [身份证号] = ?" 
        InsertCommand="INSERT INTO [居民信息] ([姓名], [性别], [年龄], [身份证号], [联系电话], [文化程度], [婚姻状况], [cj_id], [db_id], [健康状况], [sfxg_id], [xg_id], [sg_id]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        UpdateCommand="UPDATE [居民信息] SET [姓名] = ?, [性别] = ?, [年龄] = ?, [联系电话] = ?, [文化程度] = ?, [婚姻状况] = ?, [cj_id] = ?, [db_id] = ?, [健康状况] = ?, [sfxg_id] = ?, [xg_id] = ?, [sg_id] = ? WHERE [身份证号] = ?">
        <DeleteParameters>
            <asp:Parameter Name="身份证号" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="String" />
            <asp:Parameter Name="年龄" Type="Int32" />
            <asp:Parameter Name="身份证号" Type="String" />
            <asp:Parameter Name="联系电话" Type="String" />
            <asp:Parameter Name="文化程度" Type="String" />
            <asp:Parameter Name="婚姻状况" Type="String" />
            <asp:Parameter Name="cj_id" Type="String" />
            <asp:Parameter Name="db_id" Type="String" />
            <asp:Parameter Name="健康状况" Type="String" />
            <asp:Parameter Name="sfxg_id" Type="String" />
            <asp:Parameter Name="xg_id" Type="String" />
            <asp:Parameter Name="sg_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="String" />
            <asp:Parameter Name="年龄" Type="Int32" />
            <asp:Parameter Name="联系电话" Type="String" />
            <asp:Parameter Name="文化程度" Type="String" />
            <asp:Parameter Name="婚姻状况" Type="String" />
            <asp:Parameter Name="cj_id" Type="String" />
            <asp:Parameter Name="db_id" Type="String" />
            <asp:Parameter Name="健康状况" Type="String" />
            <asp:Parameter Name="sfxg_id" Type="String" />
            <asp:Parameter Name="xg_id" Type="String" />
            <asp:Parameter Name="sg_id" Type="String" />
            <asp:Parameter Name="身份证号" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </div>
    </div>
    </form>
</asp:Content>

