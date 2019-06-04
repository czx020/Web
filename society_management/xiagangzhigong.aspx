<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xiagangzhigong.aspx.cs" Inherits="HomePage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="css/HomePage.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/xiagangzhigong.css" rel="stylesheet" type="text/css" />
   <div class="container">
	<div class="jumbotron">
		<h1 >下岗职工管理</h1>
		
		
		
	</div>
    </div>
    <div class="masthead">  
        <nav>
          <ul class="nav nav-justified">
            <li class=""><a href="#">下岗人员档案</a></li>
            <li class=""><a href="#">上岗培训记录</a></li>
            <li class=""><a href="#">生活保障金发放</a></li>    
          </ul>
        </nav>
      </div> 
      <div class="train_records">
          <asp:ListView ID="ListView1" runat="server">
          </asp:ListView>
      </div>
      <div></div>
</asp:Content>

