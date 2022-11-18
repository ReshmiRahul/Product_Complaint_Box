<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.Master" AutoEventWireup="true" CodeBehind="Product_View.aspx.cs" Inherits="Product_Complaint_Box.User.Product_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
                <tr>
                    <td>&nbsp;</td>
                    <td style="font-size: x-large; background-color: #C0C0C0; font-weight: bold; color: #800000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCTS LIST</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="Product_Id" CssClass="auto-style5" Height="226px" Width="395px"  >
                            <Columns>            
                                <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />  
                                <asp:BoundField DataField="Price" HeaderText="Product Price" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
        </table>
</asp:Content>
