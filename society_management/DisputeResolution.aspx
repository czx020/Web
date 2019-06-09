<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisputeResolution.aspx.cs" Inherits="DisputeResolution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
    #box
    {
        width:500px;
        margin :0 auto;
        margin-top:100px;   
     



</style>
    <form id="form1" runat="server">
<div>
<div id="box">
<h2>纠纷调解记录</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
        DataSourceID="AccessDataSource2">
        <AlternatingItemTemplate>
            <tr style="">
             
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="时间Label" runat="server" Text='<%# Eval("时间") %>' />
                </td>
                <td>
                    <asp:Label ID="纠纷原因Label" runat="server" Text='<%# Eval("纠纷原因") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="是否得到解决CheckBox" runat="server" 
                        Checked='<%# Eval("是否得到解决") %>' Enabled="false" />
                </td>
                   <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="是否解决" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
               
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="时间TextBox" runat="server" Text='<%# Bind("时间") %>' />
                </td>
                <td>
                    <asp:TextBox ID="纠纷原因TextBox" runat="server" Text='<%# Bind("纠纷原因") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="是否得到解决CheckBox" runat="server" 
                        Checked='<%# Bind("是否得到解决") %>' />
                </td>
                 <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="确定" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
             
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="时间TextBox" runat="server" Text='<%# Bind("时间") %>' />
                </td>
                <td>
                    <asp:TextBox ID="纠纷原因TextBox" runat="server" Text='<%# Bind("纠纷原因") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="是否得到解决CheckBox" runat="server" 
                        Checked='<%# Bind("是否得到解决") %>' />
                </td>
                   <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
               
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="时间Label" runat="server" Text='<%# Eval("时间") %>' />
                </td>
                <td>
                    <asp:Label ID="纠纷原因Label" runat="server" Text='<%# Eval("纠纷原因") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="是否得到解决CheckBox" runat="server" 
                        Checked='<%# Eval("是否得到解决") %>' Enabled="false" />
                </td>
                 <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="是否解决" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ID</th>
                                <th runat="server">
                                    时间</th>
                                <th runat="server">
                                    纠纷原因</th>
                                <th runat="server">
                                    是否得到解决</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
              
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="时间Label" runat="server" Text='<%# Eval("时间") %>' />
                </td>
                <td>
                    <asp:Label ID="纠纷原因Label" runat="server" Text='<%# Eval("纠纷原因") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="是否得到解决CheckBox" runat="server" 
                        Checked='<%# Eval("是否得到解决") %>' Enabled="false" />
                </td>
                  <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>



    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="./mydatabase.mdb" DeleteCommand="DELETE FROM [民事纠纷] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [民事纠纷] ([ID], [时间], [纠纷原因], [是否得到解决]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [民事纠纷]" 
        UpdateCommand="UPDATE [民事纠纷] SET [时间] = ?, [纠纷原因] = ?, [是否得到解决] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="时间" Type="String" />
            <asp:Parameter Name="纠纷原因" Type="String" />
            <asp:Parameter Name="是否得到解决" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="时间" Type="String" />
            <asp:Parameter Name="纠纷原因" Type="String" />
            <asp:Parameter Name="是否得到解决" Type="Boolean" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>



    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/mydatabase.mdb" SelectCommand="SELECT * FROM [民事纠纷]">
    </asp:AccessDataSource>




</div>


</div>





    </form>
</asp:Content>

