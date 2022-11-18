<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.Master" AutoEventWireup="true" CodeBehind="Query_Reply.aspx.cs" Inherits="Product_Complaint_Box.User.Query_Reply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 51%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <table class="auto-style4">
        <tr>
            <td style="font-size: x-large; font-weight: bold; color: #800000; background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MY QUERIES</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="242px" Width="571px">
                    <Columns>
                        <asp:BoundField DataField="Product_Id" HeaderText="Product_id" />
                        <asp:BoundField DataField="query" HeaderText="Query" />
                        <asp:BoundField DataField="Reply" HeaderText="Reply" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
   
   
</asp:Content>

