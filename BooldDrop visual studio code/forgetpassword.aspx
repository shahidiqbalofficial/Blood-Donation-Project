<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="JS/jquery-ui.min.js" type="text/javascript"></script>    
    <script src="JS/loginout.js" type="text/javascript"></script>
    <link href="CSS/login.css" rel="stylesheet" type="text/css" />
    <script src="JS/dashboard.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 50%;
            border: 1px solid #00FFFF;
            background-color: #FFFF00;
        }
        .style2
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table align="center" class="style1">
        <tr>
            <td align="center" colspan="3">
                Welcome to Forget Password
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Enter Your Email-ID</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="16pt" ForeColor="#00CC00" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>

