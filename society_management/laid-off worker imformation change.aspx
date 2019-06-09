<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="laid-off worker imformation change.aspx.cs" Inherits="laid_off_worker_imformation_change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">
<div style="margin-top:200px;">
<h1>下岗职工工作状态：</h1>
<h2>姓名：<asp:Label ID="L_1" runat="server" Text=""></asp:Label></h2>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="AccessDataSource1" DataTextField="是否下岗" DataValueField="sfxg_id">
    </asp:DropDownList>
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/mydatabase.mdb" SelectCommand="SELECT * FROM [是否下岗]">
    </asp:AccessDataSource>
     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="AccessDataSource2" DataTextField="下岗时间" DataValueField="xg_id">
    </asp:DropDownList>
     <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/mydatabase.mdb" 
        SelectCommand="SELECT [xg_id], [下岗时间], [sfxg_id] FROM [下岗管理] WHERE ([sfxg_id] = ?)">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList1" Name="sfxg_id" 
                 PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
    </asp:AccessDataSource>
     <asp:DropDownList ID="DropDownList3" runat="server" 
        DataSourceID="AccessDataSource3" DataTextField="是否上岗培训" DataValueField="sg_id">
    </asp:DropDownList>




    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
        DataFile="./mydatabase.mdb" 
        SelectCommand="SELECT * FROM [上岗培训记录] WHERE ([sfxg_id] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="sfxg_id" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>




<h4>
    <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" Autopost="true" /></h4>

    </div>
    </form>






</asp:Content>

