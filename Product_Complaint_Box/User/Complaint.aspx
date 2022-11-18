<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="Product_Complaint_Box.User.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="Product_Id"  >
                            <Columns>
            
                                <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />  
                                <asp:BoundField DataField="Price" HeaderText="Product Price" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
        </table>
        <div>
            <h2 align="center" style="font-weight: bold; color: #800000; background-color: #C0C0C0">Register Your Complaints Here</h2>
            <table align="center">
                <tr>
                    <td>
                        <br />
                        <br />
                        Product Name</td>
                    <td>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" ></asp:DropDownList>


                   </td>
                  </tr>
                  <tr>
                      <td>Complaint Box :</td>
                      <td>
                          <br />
                          <textarea id="TextArea1" name="TextArea1" cols="20" rows="3"></textarea><br />
&nbsp;</td>
                  </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Register Here" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
