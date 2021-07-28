<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="AppointementDetails.aspx.cs" Inherits="ECS.Patient.AppointementDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
    {
        width: 75%;
        margin-left: 230px;
            height: 479px;
        }
    .auto-style7 {
        color: #CC3300;
        font-weight: 700;
        font-size: 20pt;
        text-align: center;
        font-family: "ARIAL Black";
        background-color: #FFFFFF;
    }
        .auto-style8 {
            width: 101px;
        }
        .style5
        {
            width: 349px;
            height: 268px;
            text-align: center;
        }
        .auto-style9 {
            height: 46px;
            width: 101px;
        }
        .style6
        {
            height: 46px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3" frame="box" style="border: 3px solid #CC3300; background-color: #FFFFFF">
    <tr>
        <td class="auto-style7" colspan="5">Appointment Details</td>
    </tr>
    <tr>
        <td class="auto-style8">Dr. Name</td>
        <td>
            <asp:TextBox ID="txtDrName" runat="server" Height="18px" placeholder="Enter your email" Width="243px" ReadOnly="True"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtDrName" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
        </td>
        <td rowspan="10" valign="middle">
            <img alt="" class="style5" src="../image/opp.png" /></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Patient Name</td>
        <td>
            <asp:TextBox ID="txtPatientName" runat="server" Height="17px" placeholder="Your full name" Width="253px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPatientName" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Photo</td>
        <td>
            <asp:FileUpload ID="Photo_Upload" runat="server" Width="228px" placeholder="Insert Photo" />
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Photo_Upload" ErrorMessage="Enter jpg/gif/png format only" ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Photo_Upload" ErrorMessage="Add photo" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Gender</td>
        <td>
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Address</td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" Height="59px" placeholder="Enter your address" Width="316px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Height="18px" placeholder="Enter your email" Width="243px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Mobile No.</td>
        <td>
            <asp:TextBox ID="txtMobile_No" runat="server" Height="18px" placeholder="Valid moblile number" Width="219px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile_No" ErrorMessage="Should be exact 10 digit" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server" Height="18px" placeholder="Enter username" Width="190px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter date" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Time</td>
        <td>
            <asp:TextBox ID="txtTime" runat="server" Height="18px" placeholder="Enter password" Width="151px" TextMode="Time"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtTime" ErrorMessage="Enter time" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="style6">&nbsp;
                <asp:ImageButton ID="Imgbtn_Submit" runat="server" Height="36px" ImageUrl="~/image/submit_arrow.png" onclick="Imgbtn_Register_Click" Width="156px" />
        </td>
        <td class="style6">&nbsp;</td>
        <td class="style6"></td>
    </tr>
</table>
</asp:Content>
