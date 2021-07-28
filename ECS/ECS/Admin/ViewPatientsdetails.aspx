<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewPatientsdetails.aspx.cs" Inherits="AC.Admin.CheckUserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style3 {
            font-size: 20pt;
            color: #CC3300;
        width: 1190px;
    }
        .auto-style6 {
        height: 29px;
        width: 1190px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 95%; background-color: #FFFFFF; margin-left: 5px;">
        <tr>
            <td class="auto-style3" style="text-align: center"><strong>Patients Details</strong></td>
        </tr>
        <tr>
            <td style="text-align: center" >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="10"  DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="924px" style="font-size: 12pt" DataKeyNames="RegID">
                    <Columns>
                        <asp:ImageField ControlStyle-Height="100" ControlStyle-Width="100" DataImageUrlField="Photo" HeaderText="Photo">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="White" ForeColor="#CC3300" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$Connectionstrings:DB%>"  selectcommand="SELECT * FROM  Register_tb " DeleteCommand="delete from Register_tb where RegID=@RegID"><%--<selectparameters>
                        <asp:sessionparameter name="Username" sessionfield="Username" />
                    </selectparameters>--%></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
