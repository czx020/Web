<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jqueryshili.aspx.cs" Inherits="jqueryshili" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".kaoshengname+div").hide();
            $(".kaoshengname").click(function () {
                $(".kaoshengname+div").hide();
                $("+div", this).show(500);
            });

        });
    </script>

    <style type="text/css">
        .kaoshengname
        {
            padding:5px;
            background-color:#98c7f6;
            cursor:pointer;
            }
         .kaoshengname+div
         {
             border-bottom:1px solid #03264a;
             border-top:1px solid #03264a;
             padding:10px;
             }
             
          .kaoshengname+div span
          {
            margin:15px; 
            padding-right:25px;
            border-right:1px inset #03264a;
              }
        
    </style>


   
</head>
<body>
    <form id="form1" runat="server">
    <div runat="server" id="itemholder">
   
    </div>
    </form>
</body>
</html>
