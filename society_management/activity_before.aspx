<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="activity_before.aspx.cs" Inherits="activity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <style type="text/css">
    #box
    {
        height:1000px;
        margin-top:100px;
        margin-left:500px;

    }
    
    th,td{text-align:center}
    </style>
<div>
<div id="box">
<p>文体活动</p>
<table >
  
    </table>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/mydatabase.mdb" DeleteCommand="DELETE FROM [文体活动] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [文体活动] ( [活动名称], [活动内容], [举办时间], [报名时间], [报名地点], [报名方式], [联系电话]) VALUES ( ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [文体活动]" 
        UpdateCommand="UPDATE [文体活动] SET [活动名称] = ?, [活动内容] = ?, [举办时间] = ?, [报名时间] = ?, [报名地点] = ?, [报名方式] = ?, [联系电话] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="活动名称" Type="String" />
            <asp:Parameter Name="活动内容" Type="String" />
            <asp:Parameter Name="举办时间" Type="String" />
            <asp:Parameter Name="报名时间" Type="String" />
            <asp:Parameter Name="报名地点" Type="String" />
            <asp:Parameter Name="报名方式" Type="String" />
            <asp:Parameter Name="联系电话" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="活动名称" Type="String" />
            <asp:Parameter Name="活动内容" Type="String" />
            <asp:Parameter Name="举办时间" Type="String" />
            <asp:Parameter Name="报名时间" Type="String" />
            <asp:Parameter Name="报名地点" Type="String" />
            <asp:Parameter Name="报名方式" Type="String" />
            <asp:Parameter Name="联系电话" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</div>
</div>
    </form>
</asp:Content>

