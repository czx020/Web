<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="css/activity.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <div class="container">
        <div class="jumbotron">
            <h1>
                社区文体信息</h1>
        </div>
    </div>
    <form id="form1" runat="server">
    <button type="button" class="btn btn-primary btn-lg modal_float" data-toggle="modal" data-target="#myModal">
        快捷通道</button>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        快捷通道</h4>
                </div>
                <div class="modal-body">
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
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        关闭</button>
                </div>
            </div>
        </div>
    </div>
    <table class="table_fix table table-hover">
        <tr>
            <th class="col-md-1">
                ID
            </th>
            <th class="col-md-1">
                活动名称
            </th>
            <th class="col-md-2">
                活动内容
            </th>
            <th class="col-md-1">
                举办时间
            </th>
            <th class="col-md-1">
                报名时间
            </th>
            <th class="col-md-1">
                报名地点
            </th>
            <th class="col-md-1">
                报名方式
            </th>
            <th class="col-md-1">
                联系电话
            </th>
            <th class="col-md-1">
                操作
            </th>
        </tr>
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="itemholder" InsertItemPosition="FirstItem"
            DataSourceID="AccessDataSource1">
            <%--InsertItemPosition="FirstItem" 放在首行 --%>
            <LayoutTemplate>
                <div runat="server" id="itemholder">
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div id="ccn">
                    <tr>
                        <%--CommandName="edit"编辑  "delete" 删除--%>
                        <%--           <asp:Button runat="server" Text="Button" OnCommand="mycmd" CommandName="group1" CommandArgument="1"></asp:Button
                <asp:Button runat="server" Text="Button" OnCommand="mycmd" CommandName="group1" CommandArgument="2"></asp:Button>
                <asp:Button runat="server" Text="Button" OnCommand="mycmd" CommandName="group2" CommandArgument="3"></asp:Button>
>--%>
                        <td>
                            <%#Eval("ID")%>
                        </td>
                        <td>
                            <%#Eval("活动名称")%>
                        </td>
                        <td>
                            <%#Eval("活动内容")%>
                        </td>
                        <td>
                            <%#Eval("举办时间")%>
                        </td>
                        <td>
                            <%#Eval("报名时间")%>
                        </td>
                        <td>
                            <%#Eval("报名地点")%>
                        </td>
                        <td>
                            <%#Eval("报名方式")%>
                        </td>
                        <td>
                            <%#Eval("联系电话")%>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="参加" class="btn btn-info btn-sm" />
                        </td>
                    </tr>
            </ItemTemplate>
            <InsertItemTemplate>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
            </ItemSeparatorTemplate>
            <EditItemTemplate>
            </EditItemTemplate>
        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/mydatabase.mdb"
            SelectCommand="SELECT * FROM [文体活动]"></asp:AccessDataSource>
    </table>
    <h3>
        已报名活动</h3>
    </form>
</asp:Content>

