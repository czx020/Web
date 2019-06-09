<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resident health.aspx.cs" Inherits="Resident_health" %>

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
    <p>身体状况：<%#Eval("健康状况") %></p>
    <p><a href="recovered.aspx?sfid=<%#Eval("身份证号") %>">已康复</a></p>
    
    <div>
    
    
    
    
    
    
    
    
    </ItemTemplate>
    </asp:ListView>







    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="./mydatabase.mdb" 
        SelectCommand="SELECT * FROM [居民信息] WHERE ([健康状况] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="健康状况" QueryStringField="jk" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>







</div>






</div>



    </form>



</asp:Content>

