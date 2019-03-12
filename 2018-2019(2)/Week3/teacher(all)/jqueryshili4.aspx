<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jqueryshili4.aspx.cs" Inherits="jqueryshili4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script src="jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {
            $("#tab li").each(function (index) {
                $(this).mouseover(function () {
                    $("#kk>div.divcur").removeClass("#kk divcur");
                    $("#tab>li.cur").removeClass("#tab cur");
                    //alert(index);
                    // $("div:eq(" + index + ")").addClass("divcur");
                    $("#kk>div").eq(index).addClass("#kk divcur");
                    $("#tab>li").eq(index).addClass("#tab cur");
                });
            });
        });
          
    </script>

    <style type="text/css">
        #tab
        {
            margin:0;
            list-style:none;
            padding:0 0 31px;
            border-bottom:1px solid #11a3ff;
            
            }
          #tab  li
            {
                float:left;
                background:#BBDDFF;
                margin-right:4px;
                padding:5px;
                border:1px solid #11a3ff;
                height:20px;
                
                }
           #tab  .cur
             {
                 background-color:#fee;
                 border-bottom:1px solid #fee;
                 color:green;
                 }   
         
           #kk>div
            {
               
                padding:10px;
                height:130px;
                width:600px;
                background-color:#fee;
                border:1px solid #11a3ff;
                border-top:none;
                display:none;
              
               
                
                }  
                  #kk  div img
                  {
                      width:90px;
                      height:75px;
                      border:1px solid #ededed;
                      padding:3px;
                      }
      #kk   .divcur
         {
         display:block;
             } 
           
      .imgdiv
        {width:100px;
         height:100px;
         display:inline-block;
         float:left !important;
        
         margin:20px;
        
         padding:2px;
            } 
           
          
           
            
   
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <ul id="tab">
    <li class="cur">特色蛋糕</li>
    <li>美味巧克力</li>
    <li>精品面包</li>
    </ul>

    <div id="kk">
        <asp:Panel ID="Panel1" runat="server" class="divcur">

        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
       
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        </asp:Panel>
   
    </div>
    
  
    </form>
</body>
</html>
