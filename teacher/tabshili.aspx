<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabshili.aspx.cs" Inherits="tabshili" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {       
            $("#tabfirst li").each(function (index) {
                $(this).mouseover(function () {
                    $("#tabfirst>li.first").removeClass("#tabfirst first");
                    $("#show>div.one").removeClass("#show one");
                    //alert(index);
                    // $("div:eq(" + index + ")").addClass("divcur");
                    $("#show>div").eq(index).addClass("#show one");
                    $("#tabfirst>li").eq(index).addClass("#tabfirst first");
                });
            });
        });     
    </script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <ul id="tabfirst">
            <li class="first">蛋糕</li>
            <li>面包</li>
            <li>巧克力</li>
        </ul>
        <div id="show">
            <asp:Panel ID="Panel1" runat="server" class="one" >
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
            </asp:Panel>
        </div>

    </form>
</body>
</html>
