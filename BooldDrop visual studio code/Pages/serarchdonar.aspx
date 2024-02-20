<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="serarchdonar.aspx.cs" Inherits="Pages_serarchdonar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/bb.css" rel="stylesheet" type="text/css" />
    <script src="../JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="../JS/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../JS/loginout.js" type="text/javascript"></script>
    <style type="text/css">
     .gridtable
     {
         border-collapse:collapse;    
         margin:10px 15px;   
     }
     .td1, .td2
     {
         border:1px solid #dddddd;
         padding:5px 7px 5px 7px;
     }
     .td1
     {
         width:120px;
         background:#848484;
         color:#ffffff;
     }
     .td2
     {
         width:200px;
         padding:5px 7px 5px 7px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="padding:10px 15px 10px 15px;">
 <div id="divbsearch">   
 <table>
 <tr>
  <td>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
   <table>
    <tr>
     <td><span>Find Blood Donor : </span></td>
     <td><asp:DropDownList ID="ddl_state" CssClass="ddl" runat="server" 
             AutoPostBack="True" onselectedindexchanged="ddl_state_SelectedIndexChanged"></asp:DropDownList></td>
     <td><asp:DropDownList ID="ddl_city" CssClass="ddl" runat="server"></asp:DropDownList></td>
     </tr>
     </table>
     </ContentTemplate>
   <Triggers>
    <asp:AsyncPostBackTrigger ControlID="ddl_state" EventName="SelectedIndexChanged" />   
   </Triggers>
   </asp:UpdatePanel>
   </td>
     <td>
       <asp:DropDownList ID="ddl_bloodgroup" CssClass="ddl" runat="server">
         <asp:ListItem Text="Blood Group" Value="0"></asp:ListItem>
         <asp:ListItem Text="A+ " Value="1"></asp:ListItem>
         <asp:ListItem Text="A- " Value="2"></asp:ListItem>
         <asp:ListItem Text="B+ " Value="3"></asp:ListItem>
         <asp:ListItem Text="B- " Value="4"></asp:ListItem>
         <asp:ListItem Text="AB+" Value="5"></asp:ListItem>
         <asp:ListItem Text="AB-" Value="6"></asp:ListItem>
         <asp:ListItem Text="O+ " Value="7"></asp:ListItem>
         <asp:ListItem Text="O- " Value="8"></asp:ListItem>
       </asp:DropDownList>
     </td>
     <td><asp:Button id="btn_go" Text=" Go " CssClass="button" runat="server" 
             onclick="btn_go_Click" /></td>
    </tr>
   </table>
 </div>
 </div>
 <div style="width:700px; height:150px; position:absolute; top:10%; left:30px; ">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
         ShowHeader="false" AllowPaging="True" 
         onpageindexchanging="GridView1_PageIndexChanging" PageSize="6">    
      <AlternatingRowStyle CssClass="alternategridview" />
   <Columns>
    <asp:TemplateField>
     <ItemTemplate>     
      <table class="gridtable" width="96%">
        <tr>
         <td class="td1">Name : </td> <td class="td2"><asp:Label ID="lblname" runat="server" Text='<%# Eval("donarfullname") %>'></asp:Label> </td>
         <td class="td1">Blood Group : </td><td class="td2"><asp:Label ID="lblbloodgroup" runat="server" Text='<%#Eval("donarbloodgroup")%>'> </asp:Label></td>         
        </tr>
        <tr>
         <td class="td1">State :</td><td class="td2"> <asp:Label ID="lblstate" runat="server" Text='<%#Eval("donarstate")%>'> </asp:Label> </td>         
         <td class="td1">City : </td><td class="td2"><asp:Label ID="lblcity" runat="server" Text='<%#Eval("donarcity")%>'> </asp:Label> </td>         
        </tr>
        <tr>
         <td class="td1">Contact No : </td><td class="td2"><asp:Label ID="lblphone" runat="server" Text='<%#Eval("donarphone") %>'> </asp:Label> </td>         
         <td class="td1">Email Address :</td><td class="td2"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("donaremailid") %>'> </asp:Label> </td>         
        </tr>
       </table>      
     </ItemTemplate>
    </asp:TemplateField>
   </Columns>
  </asp:GridView>
 </div>
</asp:Content>

