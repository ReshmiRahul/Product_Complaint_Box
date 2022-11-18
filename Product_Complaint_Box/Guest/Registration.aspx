<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest_Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Product_Complaint_Box.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 29px;
        }
    .auto-style7 {
        width: 100%;
        margin-left: 151px;
    }
    .auto-style8 {
        width: 480px;
    }
    .auto-style9 {
        width: 480px;
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style8" style="font-size: x-large; color: #800000; font-weight: bold; background-color: #C0C0C0" >CUSTOMER REGISTRATION<br />
            <br />
        </td>
        <td style="background-color: #C0C0C0"></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <br />
            NAME</td>
        <td>
            <br />
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <br />
            EMAIL</td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <br />
            PHONE NUMBER</td>
        <td>
            <br />
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <br />
            PASSWORD<br />
        </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="Pass" runat="server" OnTextChanged="Phone0_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" Text="SUBMIT" OnClick="Submit_Click" style="height: 29px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
