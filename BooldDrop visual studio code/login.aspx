<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="JS/jquery-ui.min.js" type="text/javascript"></script>    
    <script src="JS/loginout.js" type="text/javascript"></script>
    <link href="CSS/login.css" rel="stylesheet" type="text/css" />
    <script src="JS/dashboard.js" type="text/javascript"></script>
    <script type="text/javascript">
        function LoginFail() {
            $("#error_display").css("display", "block");
            $("#lblerror").html("Invalid Username and Password ");
            $(document).ready(function () {
                $('[id$=txtpassword]').focus(function () {
                    $("#error_display").css("display", "none");
                });
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="divloginpage">
    <div class="div_error" id="error_display" align="left" style="display:none; width:380px; margin-left:0px;">
     <img style="margin-top:-3px; width:25px; height:25px; padding:0px 10px 0px 0px; float:left;" src="Images/Warning.png" /><span id="lblerror"></span>
    </div>
    <br />
<table id="tableloginpage">
<tr>
 <th colspan="3">Login :</th>
</tr>
 <tr>
  <td id="td1"><span>Username :</span></td>
  <td id="td3"><asp:TextBox ID="txtusername" CssClass="txtbox" runat="server"></asp:TextBox></td>
 </tr>
 <tr>
  <td id="td2"><span>Password :</span></td>
  <td id="td4"><asp:TextBox ID="txtpassword" CssClass="txtbox" TextMode="Password" runat="server"></asp:TextBox></td>
 </tr>
 <tr>
  <td colspan="2" id="td5" align="right">
  <asp:CheckBox ID="chk_remember" runat="server" Text=" Remember Me? " CssClass="chkremember" />
   <asp:Button ID="btn_login" CssClass="btnlogin" runat="server" Text=" Login " 
          onclick="btn_login_Click" />
  </td>
 </tr>
</table>
<p style="right:30px;">
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgetpassword.aspx">Forget your Password?</asp:HyperLink><br /><br />
<b>If your New User : <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Create New Account</asp:HyperLink></p>
<br /><br /><br /><asp:Label ID="Label2" runat="server"></asp:Label><br /><br />
</div>    
          
    
    
</asp:Content>

