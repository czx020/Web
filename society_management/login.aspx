<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <div class="container" runat="server">
      <form class="form-signin" action="">
        <h2 class="form-signin-heading">登陆</h2>
      <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="请输入密码" CssClass="input" TextMode="Password"> </asp:TextBox>
        
      <asp:Button ID="Button1" runat="server" Text="登入" CssClass="btn" />
      </form>

    </div> <!-- /container -->
</body>
</html>
