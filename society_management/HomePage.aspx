<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <link href="css/HomePage.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <div class="container">
	<div class="jumbotron">
		<h1 >欢迎进入社区!</h1>
        <p>为提供优质服务而努力</p>
		<p></p>
		<p><a class="btn btn-primary btn-lg" role="button">
			了解我们</a>
		</p>
	</div>
    </div>
    <div class="middle">
        <div class="row_fix row">
            <div class="col-md-4 col-md-4_color">
                <div class="col_top"><p><a href="HomePage.aspx">社区首页</a></p></div>
                <div class="col_bottom">
                    <a href="Community _profile.aspx">社区概况</a>
                    <a href="activity.aspx">社区文体信息</a>
                    <a href="#">社区团体</a>
                    <a href="volunteer management.aspx">志愿者信息</a>
                    <a href="laid-off worker.aspx">下岗职工</a>
                </div>
            </div>
            <div class="col-md-4 col-md-4_color">
                    <div class="col_top"><p>居民</p></div>
                <div class="col_bottom">
                    <a href="Resident archives.aspx">居民档案</a>
                    <a href='Resident health.aspx?jk=疾病人群'>居民健康档案</a>
                    <a href="user_add.aspx">居民信息添加</a>
                </div>
            </div>
            <div class="col-md-4_last col-md-4 col-md-4_color">
                    <div class="col_top"><p>民政</p></div>
                    <div class="col_bottom">
                        <a href="LoManagement.aspx">低保管理</a>
                        <a href="DisabledImformation.aspx">残疾人管理</a>
                        <a href="#">治安管理</a>
                        <a href="DisputeResolution.aspx">纠纷调解记录管理</a>
                        
                    </div>
            </div>
    </div>
    </div>

    </div>
    
</asp:Content>

