<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Query_view.aspx.cs" Inherits="Product_Complaint_Box.Admin.Query_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
<p style="font-size: x-large; color: #800000; font-weight: bold; background-color: #C0C0C0">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ALL PENDING&nbsp;&nbsp;QUERIES&nbsp;</p>
<p>
    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="309px" Width="739px" DataKeyNames="Query_id" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Query_id" HeaderText="Query_id" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="query" HeaderText="Query" />
            <asp:CommandField DeleteText="Reply" HeaderText="Reply" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
        <br />
        <br />
       <p style="color:darkred; font-weight:bold">Reply Below........................</p><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="576px"></asp:TextBox>
        </center>
</p>
</asp:Content>
