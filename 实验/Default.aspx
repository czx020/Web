<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
            div
            {
                text-align : center ;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button2" runat="server" Text="1到10的和" onclick="Button2_Click" />
        <hr />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="蛇" GroupName="animal"/>
        <asp:RadioButton ID="RadioButton2" runat="server" Text = "鸡儿" GroupName="animal"/>
        <asp:RadioButton ID="RadioButton3" runat="server" Text = "狗" GroupName="animal"/>
        <asp:RadioButton ID="RadioButton4"  runat="server" Text = "猪" GroupName="animal"/> <br />
        <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <hr />
        <br />
         请输入一个成绩：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="确定" onclick="Button3_Click" />
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="" ForeColor="red"></asp:Label>
         <br /><br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="不及格" GroupName="score" />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="及格" GroupName="score"/>
        <asp:RadioButton ID="RadioButton7" runat="server" Text="良好" GroupName="score"/>
        <asp:RadioButton ID="RadioButton8" runat="server" Text="优秀" GroupName="score"/>    
    </div>
    <hr />
    <div>你觉得谁是弟弟？<br /><br />
        <asp:RadioButton ID="RadioButton9" runat="server" Text="张晓刚" GroupName="didi" AutoPostBack = true
            oncheckedchanged="RadioButton9_CheckedChanged" />
        <asp:RadioButton ID="RadioButton10" runat="server" Text="薛尚" GroupName="didi" AutoPostBack = true
            oncheckedchanged="RadioButton10_CheckedChanged"/>
        <asp:RadioButton ID="RadioButton11" runat="server" Text="黄梓航" GroupName="didi" AutoPostBack = true
            oncheckedchanged="RadioButton11_CheckedChanged"/>
        <asp:RadioButton ID="RadioButton12" runat="server" Text="杨伟庭" GroupName="didi" AutoPostBack = true
            oncheckedchanged="RadioButton12_CheckedChanged"/><br /><br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br /><br />
        <asp:Button ID="Button4" runat="server" Text="是他!" OnClick ="Button_Click" Height="56px" Width="153px" />
            
    </div>
    </form>
</body>
</html>
    </div>
    </form>
</body>
</html>
