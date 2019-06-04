<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="css/HomePage.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <div class="container">
	<div class="jumbotron">
		<h1 >欢迎登陆页面！</h1>
		<p>这是一个超大屏幕（Jumbotron）的实例。</p>
		<p><a class="btn btn-primary btn-lg" role="button">
			学习更多</a>
		</p>
	</div>
    </div>
    <div class="middle">
        <div class="row_fix row">
            <div class="col-md-4_color col-md-4 ">
                <div class="col_top"><p>社区</p></div>
                <div class="col_bottom">
                    <a href="Community _profile.aspx">社区概况</a>
                    <a href="#">社区文体信息</a>
                    <a href="#">社区团体</a>
                    <a href="#">志愿者信息</a>
                    <a href="#">下岗职工</a>
                </div>
            </div>
            <div class="col-md-4 col-md-4_color">
                    <div class="col_top"><p>居民</p></div>
                <div class="col_bottom">
                    <a href="#">居民档案</a>
                    <a href="#">居民健康档案</a>
                    <a href="#"></a>
                </div>
            </div>
            <div class="col-md-4_last col-md-4 col-md-4_color">
                    <div class="col_top"><p>民政</p></div>
                    <div class="col_bottom">
                        <a href="#">低保管理</a>
                        <a href="#">残疾人管理</a>
                        <a href="#">治安管理</a>
                        <a href="#">纠纷调解记录管理</a>
                        <a href="#"></a>
                    </div>
            </div>
    </div>
    </div>

    </div>
    
</asp:Content>

