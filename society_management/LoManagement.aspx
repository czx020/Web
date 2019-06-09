<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoManagement.aspx.cs" Inherits="LoManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <style type="text/css">
    #list_view
    {
        height:600px;
        margin-top:100px;
    }
    #list_view
    {
        width:800px;
    }
    #data_page
    {
    }
 
    </style>
<div>
<div id="list_view" >

    <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="itm">
    <LayoutTemplate><div id="itm" runat="server"></div></LayoutTemplate>
    <ItemTemplate>
    <div class="itm_box">
    <p>姓名：<%#Eval("姓名") %></p>
    <p>性别：<%#Eval("性别") %></p>
    <p>年龄：<%#Eval("年龄") %></p>
    <p>联系电话：<%#Eval("联系电话") %></p>
    <p>是否享受低保：<%#Eval("是否享受低保") %></p>
    <p><a href="lo_add.aspx?sfid=<%#Eval("身份证号") %>">享受低保</a></p>
    
    <div>
    
    
    
    
    
    
    
    
    </ItemTemplate>
    </asp:ListView>
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="4">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>



    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="./mydatabase.mdb" 
        
        
        SelectCommand="SELECT 居民信息.姓名 AS Expr1, 居民信息.性别 AS Expr2, 居民信息.年龄 AS Expr3, 居民信息.身份证号 AS Expr4, 居民信息.联系电话 AS Expr5, 居民信息.文化程度 AS Expr6, 居民信息.婚姻状况 AS Expr7, 居民信息.cj_id AS Expr8, 居民信息.db_id AS Expr9, 居民信息.健康状况 AS Expr10, 居民信息.sfxg_id AS Expr11, 居民信息.xg_id AS Expr12, 居民信息.sg_id AS Expr13, 低保管理.是否享受低保, 居民信息.姓名, 居民信息.性别, 居民信息.年龄, 居民信息.身份证号, 居民信息.联系电话, 居民信息.文化程度, 居民信息.婚姻状况, 居民信息.cj_id, 居民信息.db_id, 居民信息.健康状况, 居民信息.sfxg_id, 居民信息.xg_id, 居民信息.sg_id FROM (居民信息 INNER JOIN 低保管理 ON 居民信息.db_id = 低保管理.db_id) where 居民信息.db_id='db_2'">
    </asp:AccessDataSource>







</div>





</div>



    </form>
</asp:Content>

