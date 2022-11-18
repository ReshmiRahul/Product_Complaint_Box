<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.Master" AutoEventWireup="true" CodeBehind="complaint_status_view.aspx.cs" Inherits="Product_Complaint_Box.User.complaint_status_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="color: #800000; font-size: x-large; font-weight: bold; background-color: #C0C0C0">
        YOUR COMPLAINTS STATUS ARE HERE....</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="240px" Width="616px">
            <Columns>
                <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
                <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
