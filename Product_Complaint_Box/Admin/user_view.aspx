<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="user_view.aspx.cs" Inherits="Product_Complaint_Box.Admin.user_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="login_id" Height="285px"  Width="480px" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" value='<%Eval(login_id%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="login_id" HeaderText="Login ID" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:CommandField HeaderText="Status" DeleteText="Confirm" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
