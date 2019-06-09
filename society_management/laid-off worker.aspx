<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="laid-off worker.aspx.cs" Inherits="laid_off_worker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="js/jquery.js" type="text/javascript"></script>
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
            <li class="li_size"><a href="#">下岗人员档案</a></li>
            <li class="li_size"><a href="#">上岗培训记录</a></li>
            <li class="li_size"><a href="#">生活保障金发放</a></li>    
          </ul>
        </nav>
      </div> 
    <form id="form1" runat="server">
    <div class="sidebar-module">
            <h4>快捷通道</h4>
            <ol class="list-unstyled">
              <li><a href="HomePage.aspx">社区首页</a></li>
              <li><a href="activity.aspx">社区文体信息</a></li>
              <li><a href="#">社区团体</a></li>
              <li><a href="volunteer management.aspx">志愿者信息</a></li>
              <li><a href="laid-off worker.aspx">下岗职工</a></li>
              <li><a href="Resident archives.aspx">居民档案</a></li>
              <li><a href="Resident health.aspx?jk=疾病人群">居民健康档案</a></li>
              <li><a href="user_add.aspx">居民信息添加</a></li>
              <li><a href="LoManagement.aspx">低保管理</a></li>
              <li><a href="DisabledImformation.aspx">残疾人管理</a></li>
              <li><a href="#">治安管理</a></li>
              <li><a href="DisputeResolution.aspx">纠纷调解记录管理</a></li>
            </ol>
          </div>
<div id="box">
<div class="list_view">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="a">
    <LayoutTemplate>
    <div runat="server" id="a"></div>
    </LayoutTemplate>
    <ItemTemplate>
    <div class="itm_box">
    <div style="background-color:#FFEBCD; width:300px; float:left; height:300px; margin-top:20px; margin-left:30px; padding:30px 30px;">
    <p>姓名：<%#Eval("姓名") %></p>
    <p>性别：<%#Eval("性别") %></p>
    <p>年龄：<%#Eval("年龄") %></p>
    <p>身份证号：<%#Eval("身份证号") %></p>
    <p>联系电话：<%#Eval("联系电话") %></p> 
    <p>工作状态：<%#Eval("下岗时间") %></p>
    <p>保障金：<%#Eval("保障金") %></p>
    <p>是否上岗培训：<%#Eval("是否上岗培训") %></p>
    <p><a href="laid-off worker imformation change.aspx?shenfenid=<%#Eval("身份证号") %>">更改信息</a></p>
    </div>
      </div>
  </ItemTemplate>
    </asp:ListView>
    </div>
    <div class="data_page">
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="4">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="./mydatabase.mdb"          
        SelectCommand="SELECT 是否下岗.是否下岗, 居民信息.姓名, 居民信息.性别, 居民信息.身份证号, 居民信息.年龄, 居民信息.联系电话, 居民信息.文化程度, 居民信息.婚姻状况, 居民信息.健康状况, 下岗管理.下岗时间, 下岗管理.保障金, 上岗培训记录.是否上岗培训 FROM (((是否下岗 INNER JOIN 居民信息 ON 是否下岗.sfxg_id = 居民信息.sfxg_id) INNER JOIN 下岗管理 ON 居民信息.xg_id = 下岗管理.xg_id) INNER JOIN 上岗培训记录 ON 居民信息.sg_id = 上岗培训记录.sg_id) WHERE (是否下岗.sfxg_id = 'sfid_1') AND (下岗管理.xg_id &lt;&gt; 'xg_0') AND (上岗培训记录.sg_id &lt;&gt; 'sg_0')">
    </asp:AccessDataSource>
</div>
    </form>
</asp:Content>

