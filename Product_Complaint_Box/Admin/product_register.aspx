<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="product_register.aspx.cs" Inherits="Product_Complaint_Box.Admin.product_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 269px;
        }
        .auto-style4 {
            width: 325px;
        }
        .auto-style5 {
            width: 325px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div _designerregion="0">
        <table class="w-100">
            <tr>
                <td class="auto-style4" style="background-color: #C0C0C0; color: #800000; font-size: x-large; font-weight: bold">PRODUCT DETAILS<br />
                </td>
                <td style="background-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <br />
                    PRODUCT NAME<br />
                </td>
                <td class="auto-style6">
                <asp:TextBox ID="pname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PRICE</td>
                <td>
                <asp:TextBox ID="prize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
   
</asp:Content>
