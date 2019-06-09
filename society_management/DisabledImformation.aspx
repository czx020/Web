<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisabledImformation.aspx.cs" Inherits="DisabledImformation" %>

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
    
    </style>
<div>
<div id="list_view">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="itm">
    <LayoutTemplate><div id="itm" runat="server"></div></LayoutTemplate>
    <ItemTemplate>
    <div class="itm_box">
    <p>姓名：<%#Eval("姓名") %></p>
    <p>性别：<%#Eval("性别") %></p>
    <p>年龄：<%#Eval("年龄") %></p>
    <p>联系电话：<%#Eval("联系电话") %></p>
    <p>是否伤残人士：<%#Eval("是否残疾人") %></p>
    <%--<p><a href="lo_add.aspx?sfid=<%#Eval("身份证号") %>">享受低保</a></p>--%>
    
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
        
        
        SelectCommand="SELECT 居民信息.姓名, 居民信息.性别, 居民信息.年龄, 居民信息.联系电话, 残疾人管理.是否残疾人 FROM (居民信息 INNER JOIN 残疾人管理 ON 居民信息.cj_id = 残疾人管理.cj_id) where (居民信息.cj_id = 'cj_1') or (居民信息.cj_id = 'cj_2')">
    </asp:AccessDataSource>







</div>






</div>



    </form>
</asp:Content>

