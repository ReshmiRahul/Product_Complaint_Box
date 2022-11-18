<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest_Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Product_Complaint_Box.Guest.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1 align="center" style="font-weight: bold; font-size: x-large; color: #800000; background-color: #C0C0C0">
        LOGIN HERE</h1>
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextPassword" runat="server" Visible="True" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Cancel" />
            </td>
            <td>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
