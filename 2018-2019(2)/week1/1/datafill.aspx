<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datafill.aspx.cs" Inherits="datafill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>组合条件查询</title>
    <style type="text/css">
        #Panel2
        { background-color:#eaeaea;
          border-bottom:1px outset #eaeaea;
          border-right:1px outset #eaeaea;
          border-top:1px inset #dedede;
          border-left:1px inset #dedede;
            }
        table
        {
            width:800px;
        
            }
            .data_td
            {padding:5px;
             width:100px;
             border:1px solid #eaeaea;
             text-align:center;
             font-size:12px;
             font-family:宋体;
                }
          .head
          { color:White;
            font-size:14px;
            font-family:微软雅黑;
            background-color:Blue;
            text-align:center;
              }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server">
        
        请选择学生的籍贯：<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="学生籍贯" DataValueField="学生籍贯">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/tianpingdian.mdb" SelectCommand="SELECT  distinct [学生籍贯] FROM [成绩实例]">
        </asp:AccessDataSource>
        <asp:RadioButton ID="rbtn1" runat="server"  Text="与"  AutoPostBack="false"/>
       请选择学生的性别： <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="查   询" />
        </asp:Panel>
    <hr/>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    </div>
    </form>
</body>
</html>
