<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.Master" AutoEventWireup="true" CodeBehind="Add_Queries.aspx.cs" Inherits="Product_Complaint_Box.User.Add_Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td class="auto-style4" style="font-size: x-large; background-color: #C0C0C0; color: #800000; font-weight: bold;">QUERY BOX<br />
            </td>
            <td style="background-color: #C0C0C0">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Product Name:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" ></asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Query here :</td>
            <td>
                <textarea id="TextArea1" name="TextArea1" cols="20" rows="2"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Register Query" OnClick="Button1_Click" /></td>
        </tr>
        </table>
</asp:Content>
