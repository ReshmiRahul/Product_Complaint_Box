<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="ComplaintView.aspx.cs" Inherits="Product_Complaint_Box.Admin.ComplaintView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <table class="w-100">
        <tr>
            <td style="background-color: #C0C0C0; color: #800000; font-weight: bold; font-size: x-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALL COMPLAINTS ARE HERE&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="C_id" Height="314px" Width="937px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="C_id" HeaderText="Complaint Id" />
            <asp:BoundField DataField="Username" HeaderText="User Name" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
            <asp:BoundField DataField="Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
        </Columns>
    </asp:GridView>
    <br />
    <P style="color: #800000; font-weight: bold;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choose complaints in between two dates....</P>
    <br />
    <br />
    From :<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:<asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Complaints" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Complaints in Process" />
    <br />
    <br />
    &nbsp;<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="C_id" Height="314px" Width="937px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="C_id" HeaderText="Complaint Id" />
            <asp:BoundField DataField="Username" HeaderText="User Name" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
            <asp:BoundField DataField="Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" />
            <asp:CommandField DeleteText="View Complaint" HeaderText="Status" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="C_id" Height="314px" Width="937px"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView3_RowDeleting">
        <Columns>
            <asp:BoundField DataField="C_id" HeaderText="Complaint Id" />
            <asp:BoundField DataField="Username" HeaderText="User Name" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product Id" />
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" />
            <asp:BoundField DataField="Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" />
            <asp:CommandField DeleteText="Closed" HeaderText="Status" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
</asp:Content>
