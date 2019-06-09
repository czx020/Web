<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="volunteer management.aspx.cs" Inherits="volunteer_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<style type="text/css">
    #box
    {
        width:300px;
        height:260px;
        padding-top:50px;
        float:left;
        background-color:#E0EEEE;
        margin-top:10px;
        margin-left:70px;
        border-radius:60px;
        margin-top:60px;
        position:relative;
    }
    #box:hover
    {
        color:#E066FF;
    }
    #itm_box
    {
        width:800px;
        margin-left:100px;
        background-color:#8E8E8E;
        height:800px;
        float:left;
        border-radius:10px;

    }
    #itm_box span
    {
        float:left;
        margin-left:220px;
        margin-top:40px;
    }
    #itm_box span input
    {
        border-radius:6px;
        margin-left:30px;
        font-family:@华文隶书;
    }
    #itm_box span input:hover
    {
        color:#FF69B4;
    }
    #header
    {
     width:100%;
     height:40px;
     margin-top:100px;
        
    }
    #header h2
    {
        width:150px;
        margin-left:430px;
    }

    .it_imformation
    {
        width:300px;
        height:160px;
        float:left;
        text-align:center;
        padding-bottom:100px;

       
    }
 .imf_add
 {
     float:right;
     margin-right:200px;
     width:500px;
     text-align:center;
     height:600px;
     background-color:#EED8AE;
 }
 .imf_add h4
 {
     padding-top:25px;
     font-family:@华文隶书;
 }
 .i_button
 {
     height:50px;
     width:200px;
     margin-top:10px;
     margin-left:75px;
 }
 .i_button input
 {
     margin-right:40px;
     border-radius:8px;
 }
 .i_button input:hover
 {
     color:#EE0000;
 }
 .itm_edit
 {
     width:200px;
     height:100px;
     position:absolute;
     margin-left:500px;
     margin-top:420px;
 }

.edit_inf
{
    height:30px;
    width:auto;
}

.edit_inf span
{
    width:50px;
    height:10px;
    display:none;
}
.edit_inf input
{
    border-radius:3px;
    width:200px;
    height:30px;
    font-size:20px;
}
.edit_btn
{
   margin-top:40px;
}
.edit_btn input
{
    border-radius:6px;
    width:50px;
    height:30px;
    margin-left:38px;
}
.edit_btn input:hover
{
    color:#EE0000;
}
.clr
    {
        clear:both;
    }   
    
    </style>
    <div id="bos">
        <div id="header"><h2>志愿者信息</h2> </div> 
        <div id="itm_box">  
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="zy" DataKeyNames="志愿者编号">
        <LayoutTemplate><div id="zy" runat="server"></div></LayoutTemplate>
        <ItemTemplate>

        <div id="box">

        <div class="it_imformation">
  
             <h4>志愿者姓名：<%#Eval("志愿者姓名") %></h4> 
             <p>志愿者编号：<%#Eval("志愿者编号") %></p> 
              
              <p>志愿项目：<%#Eval("志愿项目") %></p> 
              <p>志愿时长:<%#Eval("志愿时长") %></p> 
              <p>志愿星级:<%#Eval("志愿星级")%></p> 
        
        
         </div>
         <div class="clr"></div>
        <div class="i_button">
            <asp:Button ID="Button2" runat="server" Text="删除" CommandName="delete"/>
            <asp:Button ID="Button3" runat="server" Text="更改志愿时长" CommandName="edit" />
        
        </div>
        
        </div>
        
        
        
        
        
        </ItemTemplate>
        <EditItemTemplate>
        <div class="itm_edit">
        <div class="edit_inf">
        <asp:Label ID="Label1" runat="server" Text='<%#bind("志愿者姓名") %>'></asp:Label>
        <asp:Label ID="Label2" runat="server" Text='<%#bind("志愿者编号") %>'></asp:Label>
        <asp:Label ID="Label4" runat="server" Text='<%#bind("志愿项目") %>'></asp:Label>
        <asp:Label ID="Label3" runat="server" Text='<%#bind("志愿星级") %>'></asp:Label>
        <h4>志愿时长：<asp:TextBox ID="TextBox1" runat="server" Text='<%#bind("志愿时长") %>'></asp:TextBox></h4></div>
        <div class="edit_btn">
            <asp:Button ID="Button4" runat="server" Text="确定" CommandName="update" />
            <asp:Button ID="Button5" runat="server" Text="取消" CommandName="cancel"/></div>
        </div>
        </EditItemTemplate>
        </asp:ListView>
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="4">
                <Fields>
 
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                        ShowLastPageButton="True" />
 
                </Fields>
            </asp:DataPager>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="./mydatabase.mdb" SelectCommand="SELECT * FROM [志愿者信息]" 
                DeleteCommand="DELETE FROM [志愿者信息] WHERE [志愿者编号] = ?" 
                InsertCommand="INSERT INTO [志愿者信息] ([志愿者编号], [志愿者姓名], [志愿项目], [志愿时长], [志愿星级]) VALUES (?, ?, ?, ?, ?)" 
                
                UpdateCommand="UPDATE [志愿者信息] SET [志愿者姓名] = ?, [志愿项目] = ?, [志愿时长] = ?, [志愿星级] = ? WHERE [志愿者编号] = ?" 
                OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_志愿者编号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="志愿者编号" Type="String" />
                <asp:Parameter Name="志愿者姓名" Type="String" />
                <asp:Parameter Name="志愿项目" Type="String" />
                <asp:Parameter Name="志愿时长" Type="String" />
                <asp:Parameter Name="志愿星级" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="志愿者姓名" Type="String" />
                <asp:Parameter Name="志愿项目" Type="String" />
                <asp:Parameter Name="志愿时长" Type="String" />
                <asp:Parameter Name="志愿星级" Type="String" />
                <asp:Parameter Name="original_志愿者编号" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        </div>  
        <div class="imf_add">
        <h2>志愿者添加</h2>
        <h4>志愿者编号：<asp:TextBox ID="T_1" runat="server"></asp:TextBox></h4>
        <h4>志愿者姓名：<asp:TextBox ID="T_2" runat="server"></asp:TextBox></h4>
        <h4>&nbsp;志&nbsp;愿&nbsp;项&nbsp;目：<asp:TextBox ID="T_3" runat="server"></asp:TextBox></h4>
        <h4>&nbsp;志&nbsp;愿&nbsp;时&nbsp;间：<asp:TextBox ID="T_4" runat="server"></asp:TextBox></h4>
        <h4>
            <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" /></h4>
        </div>
    </div>
    </form>
</asp:Content>

