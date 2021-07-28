<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="WE.User.ProfileInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style3
    {
        width: 49%;
        margin-left: 372px;
            height: 299px;
        }
    .style4
    {
        color: #FFFFFF;
        font-weight: bold;
        font-size: 18pt;
        background-color: #CC3300;
            text-align: center;
        }
        .style5
        {
            width: 208px;
            height: 167px;
            text-align: center;
        }
        .style6
        {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3" frame="box" style="background-color: #FFFFFF">
    <tr>
        <td class="style4" colspan="4">Profile update</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Height="19px" placeholder="Your full name" Width="219px"></asp:TextBox>
        </td>
        <td rowspan="6" valign="middle">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:ImageField ControlStyle-Height="200" ControlStyle-Width="200" DataImageUrlField="Photo" HeaderText="Photo">
                        <ControlStyle Height="200px" Width="200px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Photo</td>
        <td>
            <asp:FileUpload ID="Photo_Upload" runat="server" Width="228px" placeholder="Insert Photo" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Height="21px" placeholder="Enter your email" Width="219px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Mobile No.</td>
        <td>
            <asp:TextBox ID="txtMobile_No" runat="server" Height="22px" placeholder="Valid moblile number" Width="219px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" Height="50px" placeholder="Valid moblile number" Width="256px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style6"></td>
        <td class="style6">&nbsp;
                <asp:ImageButton ID="Imgbtn_Update" runat="server" Height="46px" ImageUrl="~/image/update.jpg" onclick="Imgbtn_Register_Click" Width="165px" />
        </td>
        <td class="style6"></td>
    </tr>
</table>
</asp:Content>
