<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <title></title>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function () {
                $(".a1").css("border", "2px solid red");
            });

            $("#Button3").click(function () {
                $(".a1").css("border", "3px solid green");
            });

        });
       





    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="button" />
        
        <input id="Text1" type="text" runat="server" />
        <input id="Button3" type="button" value="button"  />
        <br />
        <br />
        
        
        <input id="Text2" type="text" />
        <input id="Text3" type="text" class ="a1" />
        <input id="Text4" type="text" class ="a1" />
        
        </div>
    </form>
</body>
</html>
