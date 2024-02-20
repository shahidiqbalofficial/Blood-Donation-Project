<%@ Page Title="" Language="C#" MasterPageFile="~/main.master"  AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="BloodPages_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/dash.css" rel="stylesheet" type="text/css" />
    <script src="../JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="../JS/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../JS/loginout.js" type="text/javascript"></script>
    <script src="../JS/dashboard.js" type="text/javascript"></script>
   <script type="text/javascript">
       $(document).ready(function () {
           var userid = GetParameterValues("uid");
           var menuid = GetParameterValues("mid");
           if (menuid == "m1") {
               $("#divstatus").show();
               $("#divbloodbank").hide();
               $("#divaccount").hide();
               $("#divbloodbankdetails").hide();
               $("#divmenu5").hide();
           }
           if (menuid == "m2") {
               $("#divstatus").hide();
               $("#divaccount").show();
               $("#divbloodbank").hide();
               $("#divbloodbankdetails").hide();
               $("#divmenu5").hide();
           }

           if (menuid == "m3") {
               $("#divbloodbank").show();
               $("#divstatus").hide();
               $("#divaccount").hide();
               $("#divbloodbankdetails").hide();
               $("#divmenu5").hide();
           }

//           if (menuid == "m4") {
//               $("#divstatus").hide();
//               $("#divaccount").hide();
//               $("#divbloodbank").hide();
//               $("#divbloodbankdetails").show(); 
//               $("#divmenu5").hide();
//           }
//           if (menuid == "m5") {
//               $("#divstatus").hide();
//               $("#divaccount").hide();
//               $("#divbloodbank").hide();
//               $("#divbloodbankdetails").hide();
//               $("#divmenu5").show();
//           }

           function GetParameterValues(param) {
               var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
               for (var i = 0; i < url.length; i++) {
                   var urlparam = url[i].split('=');
                   if (urlparam[0] == param) {
                       return urlparam[1];
                   }
               }
           }



           //Dashboard Get and Display time and Date in Post Status

           var d = new Date();
           var date = d.getDay();
           var d = new Date();
           var month = new Array();
           month[0] = "January";
           month[1] = "February";
           month[2] = "March";
           month[3] = "April";
           month[4] = "May";
           month[5] = "June";
           month[6] = "July";
           month[7] = "August";
           month[8] = "September";
           month[9] = "October";
           month[10] = "November";
           month[11] = "December";
           var n = month[d.getMonth()];
           var year = d.getFullYear();
           $('[id$=spandate]').text("Today Date : " + date + " " + n + " " + year);

           /*
           ------ Post Status -----
           */
           function countChar(val) {
               var len = val.value.length;
               if (len >= 160) {
                   val.value = val.value.substring(0, 160);
               }
               else {
                   $("#spancount").text(160 - len);
               }
           };
       });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Blood Donar Post Status --->
<div id="divstatus" >
  <div style="padding:30px 15px 20px 25px;">
  <fieldset style="width:610px; height:150px; border:1px solid #dddddd;">
    <legend style="font-size:1.2em; font-family:Times New Roman Tahoma Verdana;">Post Your Status :</legend>    
    <span id="spancount" style="float:right; color:Gray;">160</span>
  <asp:TextBox ID="txtstatusmsg" runat="server" onkeyup="countChar(this)" 
          TextMode="MultiLine" Width="600px" Height="50px" style="padding:5px;"></asp:TextBox>  
  <asp:Button ID="btn_post" CssClass="btnpost" Text="Post" runat="server" 
          onclick="btn_post_Click" />
  <span id="spandate" runat="server" style="float:right; color:Gray; top:175px; right:599px; position:absolute; margin-right:-35px;"></span>
  </fieldset>
</div>
<div style="width:650px; height:100px; padding:30px 15px 20px 25px; position:absolute; left:25px;">
 <div id="divlatestpost" >
 <h2>Latest Post</h2>
 <hr/>
  <asp:Panel ID="panelstatuspost" runat="server" Height="520px" ScrollBars="Vertical">
  </asp:Panel>
 </div>
 
</div>
</div>
<div id="divaccount" style="display:none;">
 <div style="padding:10px 15px 20px 25px;">
  <fieldset style="width:610px; height:500px; border:1px solid #dddddd; padding:20px 15px;">
    <legend style="font-size:1.2em; font-family:Times New Roman Tahoma Verdana; padding:20px 15px;">Account Details :</legend>    
    <table id="tableaccount">
     <tr>
     <td>Username :</td>
     <td><asp:Label ID="lblusername" runat="server"></asp:Label></td>
     </tr>
     <tr>
      <td>Full Name :</td>
      <td><asp:Label ID="lblfullname" runat="server"></asp:Label></td>
     </tr>
     <tr>
      <td>Date Of Birth :</td>
      <td>
      <asp:Label ID="lbldob" runat="server"></asp:Label>
      </td>
     </tr>
     <tr>
      <td>Gender :</td>
      <td><asp:Label ID="lblgender" runat="server"></asp:Label></td>
     </tr>
     <tr>
      <td>Email ID :</td>
      <td><asp:Label ID="lblemailid" runat="server"></asp:Label></td>
     </tr>
     <tr>
     <td>Phone Number :</td>
     <td><asp:Label ID="lblphone" runat="server"></asp:Label></td>
     </tr>
     <tr>
      <td>Blood Group :</td>
      <td><asp:Label ID="lblbloodgroup" runat="server"></asp:Label></td>
     </tr>
    </table>
    </fieldset>
    </div>
</div>
<div id="divbloodbank" style="display:none;">
 <div style="padding:10px 15px 20px 25px;">
  <fieldset style="width:610px; height:500px; border:1px solid #dddddd; padding:20px 15px;">
    <legend style="font-size:1.2em; font-family:Times New Roman Tahoma Verdana; padding:20px 15px;">Blood Bank Details :</legend>    
    <table id="tablebloodbank">
     <tr>
     <td>Blood Bank Name :</td>
     <td><asp:TextBox ID="txt_bloodbankname" CssClass="txt" placeholder="Name of the Blood Bank" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
      <td>Blood Bank Address :</td>
      <td><asp:TextBox ID="txt_bloodbankaddress" TextMode="MultiLine" placeholder="Address of the Blood Bank" Height="50px" Width="360px" style="padding:5px;" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
      <td>LandMark :</td>
      <td><asp:TextBox ID="txt_bloodbanklandmark" CssClass="txt" placeholder="Landmark of the Blood Bank" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
      <td>Email ID :</td>
      <td><asp:TextBox ID="txt_bloodbankemail" CssClass="txt" placeholder="Email ID of the Blood Bank" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
      <td>Contact No :</td>
      <td>
      <asp:TextBox ID="txt_bloodbankphone1" placeholder="Contact No. of the Blood Bank" CssClass="txt" runat="server"></asp:TextBox>
      </td>
     </tr>
     <tr>
      <td>Alternate Contact No :</td>
      <td><asp:TextBox ID="txt_bloodbankphone2" placeholder="Alternate No. of the Blood Bank" CssClass="txt" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
      <td>Choose State :</td>
      <td><asp:DropDownList ID="ddl_bbstate" width="385px" CssClass="txt" runat="server" 
              AutoPostBack="True" onselectedindexchanged="ddl_bbstate_SelectedIndexChanged"></asp:DropDownList></td>
     </tr>
     <tr>
      <td>City :</td>
      <td><asp:DropDownList ID="ddl_bbcity" width="385px" CssClass="txt" runat="server"></asp:DropDownList></td>
     </tr>
    </table>
    <div style="padding-top:30px;" align="center">
     <asp:Button ID="btn_Add" runat="server" Text=" Add " 
            style="padding:5px 10px 5px 10px; width:75px;" onclick="btn_Add_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="btn_cancel" runat="server" Text=" Cancel " 
            style="padding:5px 10px 5px 10px; width:75px;" onclick="btn_cancel_Click" />
    </div>
    </fieldset>
    </div>
</div>

<%--<div id="divbloodbankdetails" style="display:none;">
 <div style="padding:50px 150px 50px 150px;">
   
 </div>
</div>
<div id="divmenu5" style="display:none;">
 <div style="padding:50px 150px 50px 150px;">
   This is menu 5
 </div>
</div>--%>

<!-- Dashboard Right Hand Menubar -->
<div id="divdashmenu">
<ul id="ulmenu">
 <li><a id="a1" href="dashboard.aspx?mid=m1">Post Status</a></li>
 <li><a id="a2" href="dashboard.aspx?mid=m2">Account</a></li>
 <li><a id="a3" href="dashboard.aspx?mid=m3">Add Blood Bank Details</a></li>
 <%--<li><a id="a4" href="dashboard.aspx?mid=m4">Blood Bank</a></li>
 <li><a id="a5" href="dashboard.aspx?mid=m5">Menu 5</a></li>--%>
</ul>
</div>

</asp:Content>

