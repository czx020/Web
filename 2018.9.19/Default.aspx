<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    </form>
</body>
</html>
