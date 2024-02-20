<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="JS/jquery-ui.min.js" type="text/javascript"></script>
    <link href="CSS/regi.css" rel="stylesheet" type="text/css" />
    <script src="JS/regval.js" type="text/javascript"></script>
    <script src="JS/dashboard.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<table width="1200px">
 <tr>
  <td style="width:600px; height:840px;" >
 <!---  <img src="#" alt="Blood Donor" width="590px" height="840px" /> --->
  </td>
  <td style="width:600px;" >
  <div style="width:360px; height:110px; margin:-200px 0px 0px 50px;">
    <h1><b><font style="color:#FF0000; font-weight:bold; font-family:Times New Roman, Verdana, Tahoma, Arial;">Blood Donar Registration</font></b></h1><hr /><br />
  </div>
  <div id="loading" runat="server" class="se-pre-con"></div>
  <div class="div_error" id="error_display" align="left" style="display:none;" runat="server"><img style="margin-top:-3px; width:25px; height:25px; padding:0px 10px 0px 0px; float:left;" src="Images/Warning.png" /><label id="lblerror" runat="server"></label></div><br />
   <table class="table">  
      <tr>
        <td>
         <asp:TextBox ID="txt_first_name" runat="server" placeholder="First Name" CssClass="txt_name"/>
            &nbsp;&nbsp;<asp:TextBox ID="txt_last_name" runat="server" placeholder="Last Name" CssClass="txt_name"/>
        </td>
       </tr> 
      <tr>
       <td>
        <asp:TextBox ID="txt_username" runat="server" CssClass="txt" 
               placeholder="Username" /><label id="lbl_username" runat="server"></label>
           
       </td>
      </tr>   
      <tr>
        <td>
         <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" CssClass="txt" TextMode="Password" />
        </td>
       </tr>
      <tr>
        <td>
         <asp:TextBox ID="txt_confirm_password" runat="server" placeholder="Confirm Password" CssClass="txt" TextMode="Password" />
        </td>
       </tr>
      <tr>
        <td>
           <asp:DropDownList ID="ddl_date" runat="server" CssClass="ddl_dob">
                   <asp:ListItem Text="Date" Value="0"></asp:ListItem>
                   <asp:ListItem Text="1"></asp:ListItem>
                   <asp:ListItem Text="2"></asp:ListItem>
                   <asp:ListItem Text="3"></asp:ListItem>
                   <asp:ListItem Text="4"></asp:ListItem>
                   <asp:ListItem Text="5"></asp:ListItem>
                   <asp:ListItem Text="6"></asp:ListItem>
                   <asp:ListItem Text="7"></asp:ListItem>
                   <asp:ListItem Text="8"></asp:ListItem>
                   <asp:ListItem Text="9"></asp:ListItem><asp:ListItem Text="10"></asp:ListItem>
                   <asp:ListItem Text="11"></asp:ListItem><asp:ListItem Text="12"></asp:ListItem><asp:ListItem Text="13"></asp:ListItem><asp:ListItem Text="14"></asp:ListItem><asp:ListItem Text="15"></asp:ListItem><asp:ListItem Text="16"></asp:ListItem><asp:ListItem Text="17"></asp:ListItem><asp:ListItem Text="18"></asp:ListItem><asp:ListItem Text="19"></asp:ListItem><asp:ListItem Text="20"></asp:ListItem>
                   <asp:ListItem Text="21"></asp:ListItem><asp:ListItem Text="22"></asp:ListItem><asp:ListItem Text="23"></asp:ListItem><asp:ListItem Text="24"></asp:ListItem><asp:ListItem Text="25"></asp:ListItem><asp:ListItem Text="26"></asp:ListItem><asp:ListItem Text="27"></asp:ListItem><asp:ListItem Text="28"></asp:ListItem><asp:ListItem Text="29"></asp:ListItem><asp:ListItem Text="30"></asp:ListItem><asp:ListItem Text="31"></asp:ListItem>
           </asp:DropDownList>&nbsp;
           <asp:DropDownList ID="ddl_month" runat="server" CssClass="ddl_dob">
            <asp:ListItem Text="Of" Value="0"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="March" Value="3"></asp:ListItem>
            <asp:ListItem Text="April" Value="4"></asp:ListItem>
            <asp:ListItem Text="May" Value="5"></asp:ListItem>
            <asp:ListItem Text="June" Value="6"></asp:ListItem>
            <asp:ListItem Text="July" Value="7"></asp:ListItem>
            <asp:ListItem Text="August" Value="8"></asp:ListItem>
            <asp:ListItem Text="September" Value="9"></asp:ListItem>
            <asp:ListItem Text="October" Value="10"></asp:ListItem>
            <asp:ListItem Text="November" Value="11"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
           </asp:DropDownList>&nbsp;
           <asp:DropDownList ID="ddl_year" runat="server" CssClass="ddl_dob">
                   <asp:ListItem Text="Birth" Value="0"></asp:ListItem>
                   <asp:ListItem Text="2015"></asp:ListItem>
                   <asp:ListItem Text="2014"></asp:ListItem>
                   <asp:ListItem Text="2013"></asp:ListItem>
                   <asp:ListItem Text="2012"></asp:ListItem>
                   <asp:ListItem Text="2011"></asp:ListItem>
                   <asp:ListItem Text="2010"></asp:ListItem>
                   <asp:ListItem Text="2009"></asp:ListItem>
                   <asp:ListItem Text="2008"></asp:ListItem>
                   <asp:ListItem Text="2007"></asp:ListItem>
                   <asp:ListItem Text="2006"></asp:ListItem>
                   <asp:ListItem Text="2005"></asp:ListItem>
                   <asp:ListItem Text="2004"></asp:ListItem>
                   <asp:ListItem Text="2003"></asp:ListItem>
                   <asp:ListItem Text="2002"></asp:ListItem>
                   <asp:ListItem Text="2001"></asp:ListItem>
                   <asp:ListItem Text="2000"></asp:ListItem>
                   <asp:ListItem Text="1999"></asp:ListItem>
                   <asp:ListItem Text="1998"></asp:ListItem>
                   <asp:ListItem Text="1997"></asp:ListItem>
                   <asp:ListItem Text="1996"></asp:ListItem>
                   <asp:ListItem Text="1995"></asp:ListItem>
                   <asp:ListItem Text="1994"></asp:ListItem>
                   <asp:ListItem Text="1993"></asp:ListItem>
                   <asp:ListItem Text="1992"></asp:ListItem>
                   <asp:ListItem Text="1991"></asp:ListItem>
                   <asp:ListItem Text="1990"></asp:ListItem>
                   <asp:ListItem Text="1989"></asp:ListItem>
                   <asp:ListItem Text="1988"></asp:ListItem>
                   <asp:ListItem Text="1987"></asp:ListItem>
                   <asp:ListItem Text="1986"></asp:ListItem>
                   <asp:ListItem Text="1985"></asp:ListItem>
                   <asp:ListItem Text="1984"></asp:ListItem>
                   <asp:ListItem Text="1983"></asp:ListItem>
                   <asp:ListItem Text="1982"></asp:ListItem>
                   <asp:ListItem Text="1981"></asp:ListItem>
                   <asp:ListItem Text="1980"></asp:ListItem>
                   <asp:ListItem Text="1979"></asp:ListItem>
                   <asp:ListItem Text="1978"></asp:ListItem>
                   <asp:ListItem Text="1977"></asp:ListItem>
                   <asp:ListItem Text="1976"></asp:ListItem>
                   <asp:ListItem Text="1975"></asp:ListItem>
                   <asp:ListItem Text="1974"></asp:ListItem>
                   <asp:ListItem Text="1973"></asp:ListItem>
                   <asp:ListItem Text="1972"></asp:ListItem>
                   <asp:ListItem Text="1971"></asp:ListItem>
                   <asp:ListItem Text="1970"></asp:ListItem>
                   <asp:ListItem Text="1969"></asp:ListItem>
                   <asp:ListItem Text="1968"></asp:ListItem>
                   <asp:ListItem Text="1967"></asp:ListItem>
                   <asp:ListItem Text="1966"></asp:ListItem>
                   <asp:ListItem Text="1965"></asp:ListItem>
                   <asp:ListItem Text="1964"></asp:ListItem>
                   <asp:ListItem Text="1963"></asp:ListItem>
                   <asp:ListItem Text="1962"></asp:ListItem>
                   <asp:ListItem Text="1961"></asp:ListItem>
                   <asp:ListItem Text="1960"></asp:ListItem>
                  </asp:DropDownList>
        </td>        
       </tr>
      <tr>
        <td>
         <asp:RadioButtonList ID="rb_gender" runat="server" 
                style="font-size:large; background:#fafafa; width:322px; padding:5px 26px 5px 26px; border:1px solid #dddddd;" 
                RepeatDirection="Horizontal">
              <asp:ListItem Value="M" Text="Male" Selected="True"></asp:ListItem>
              <asp:ListItem Value="F" Text="Female"></asp:ListItem>
             </asp:RadioButtonList>
        </td>
       </tr>
       <tr>
        <td>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
         <asp:DropDownList ID="ddl_state" runat="server" CssClass="ddl_sec_ques" onselectedindexchanged="ddl_state_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>                
         <asp:DropDownList ID="ddl_city" runat="server" CssClass="ddl_sec_ques"></asp:DropDownList>
       </ContentTemplate>
       <Triggers>
        <asp:AsyncPostBackTrigger ControlID="ddl_state" EventName="SelectedIndexChanged" />
       </Triggers>       
       </asp:UpdatePanel>
        </td>
       </tr>
      <tr>
       <td>
        <asp:TextBox ID="txt_email_id" runat="server" CssClass="txt" 
               placeholder="Email Address" /><label id="lbl_chk_email" runat="server" style="display:none;, color:#0000cc; font-size:0.7em; font-weight:bold;"></label>
       </td>
       </tr>
      <tr>
        <td>
         <asp:TextBox id="txt_contact_no" runat="server" CssClass="txt" placeholder="Contact No" onkeypress="return isNumber(event)" />
        </td>
       </tr>
      <tr>
       <td>
        <asp:DropDownList ID="ddl_blood_donation" runat="server" CssClass="ddl_sec_ques">          
         <asp:ListItem Text="Choose Your Blood Group" Value="0"></asp:ListItem>
         <asp:ListItem Text="A-" Value="1"></asp:ListItem>
         <asp:ListItem Text="A+" Value="2"></asp:ListItem>
         <asp:ListItem Text="AB-" Value="3"></asp:ListItem>
         <asp:ListItem Text="Ab+" Value="4"></asp:ListItem>
         <asp:ListItem Text="B-" Value="5"></asp:ListItem>
         <asp:ListItem Text="B+" Value="6"></asp:ListItem>
         <asp:ListItem Text="O-" Value="7"></asp:ListItem>
         <asp:ListItem Text="O+" Value="8"></asp:ListItem>
        </asp:DropDownList>
       </td>
      </tr>
      <tr>
       <td>
        <asp:Button id="Btn_Register" runat="server" CssClass="btn_reg_Register" 
               Text="Register" OnClick="Btn_Register_Click" ></asp:Button>
       </td>
      </tr>
      <tr>
       <td>
        <p>If you are already a member of <b>Blood Donar</b> :&nbsp;<a class="a_login" href="Login.aspx">Login Here</a></p>
       </td>
      </tr>
    </table>  
  </td>
 </tr>
</table>

</asp:Content>

