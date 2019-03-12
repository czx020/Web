<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabshili.aspx.cs" Inherits="tabshili" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#tabfirst li").each(function (index) {
                var LiNode = $(this);
                $(this).mouseover(function () {
                    timeoutid = setTimeout(function () {
                        $("div.content").removeClass("content");
                        $("#tabfirst li.tabin").removeClass("tabin");
                        $("#kk>div").eq(index).addClass("content");
                        LiNode.addClass("tabin");
                    }, 300);

                }).mouseout(function () {
                    clearTimeout(timeoutid);
                })

            })

        });
    </script>
    <style type="text/css">
        ul, #Panel1,#Panel2,#Panel3
        {
            margin:0px;
            padding:0px;
            list-style:none;
            }
         #Panel1,#Panel2,#Panel3
         {
             float:left;
             display:inline-block;
             background-color:#f40;
             padding:5px;
             margin-right:5px;
             margin-bottom:5px;
             border:1px solid #ffffff;
             color:#fff;
             
              }
              .tabin
              {
                  background-color:#f40;
                   border:1px solid #6e6e6e;
                  }
                  .contentfirst
                  {
                       clear:both;
                        background-color:#ccc;
                        color:#fff;
                        width:300px;
                        height:180px;
                        padding:10px;
                        display:none;
                      }
                  .content
                  {
                      display:block;
                     
                     
                      }
                 img
                 {
                    width:50px;
                    height:50px;
                     }
                 table
                 {
                     border:0;
                     border-collapse:collapse;
                     
                 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ul id="tabfirst">
        <asp:Panel ID="Panel1" runat="server" CssClass="tabin">蛋糕</asp:Panel>
        <asp:Panel ID="Panel2" runat="server">面包</asp:Panel>
        <asp:Panel ID="Panel3" runat="server">巧克力</asp:Panel>
    </ul>
    <div id="kk">
    <div class="content contentfirst">
        
    </div>
     <div class="contentfirst"></div>
      <div class="contentfirst"></div>
      </div>

    </div>
    </form>
</body>
</html>
