﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xiagangzhigong.aspx.cs" Inherits="HomePage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="css/HomePage.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/xiagangzhigong.css" rel="stylesheet" type="text/css" />
   <div class="container">
	<div class="jumbotron">
		<h1 >欢迎登陆页面！</h1>
		<p>这是一个超大屏幕（Jumbotron）的实例</p>
		<p><a class="btn btn-primary btn-lg" role="button">
			学习更多</a>
		</p>
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
      <div class="row">
       
        <div class="col-md-4">.col-md-4</div>
         <div class="col-md-8">.col-md-8</div>
       </div>
</asp:Content>

