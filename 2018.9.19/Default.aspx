<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .center
        {
            text-align:center;
            }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="start" runat=server>
        起始:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        结束:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="计算" onclick="Button1_Click" />
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <br />
    <div id="连加求和">
        起始:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        结束:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button2" runat="server" Text="计算" onclick="Button2_Click" />
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
    <div id="do-while语句">
        请输入一个2-200以内的整数:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="确认" onclick="Button3_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
    <div class=center>
        <h3>for循环，判断一个数是否为指数</h3>
        <hr />
        <a>请输入一个大于3的整数：</a>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="Button4" runat="server" Text="质数判断" onclick="Button4_Click" />
        <br /><br /><br />
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <br /><br /><hr />
    </div>
    </form>
</body>
</html>
