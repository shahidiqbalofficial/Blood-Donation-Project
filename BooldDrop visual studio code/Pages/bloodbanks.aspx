<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="bloodbanks.aspx.cs" Inherits="Pages_bloodbanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/bb.css" rel="stylesheet" type="text/css" />
    <script src="../JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="../JS/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../JS/loginout.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            function disablediv1() {
                $("#divbbdisplaybg").hide();
                $('[id$=divbbdisplay]').hide();
            }
            $("#spanclose").click(function () {
                $("#divbbdisplaybg").hide();
                $('[id$=divbbdisplay]').hide();
            });
            function OpenWindow() {
                $("#divbbdisplaybg").show();
                $('[id$=divbbdisplay]').show();
            }
        });
    </script>
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
   <td>
     <td><span>Find Blood Bank : </span></td>
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
        
     <td><asp:Button id="btn_go" Text=" Search " CssClass="button" runat="server" 
             onclick="btn_go_Click" /></td>
    </tr>
   </table>
 </div>
 <div id="divsearchresult">
  <asp:GridView ID="gridBBDetails" runat="server" AutoGenerateColumns="False" 
         HeaderStyle-CssClass="HeaderStyle" onrowcommand="gridBBDetails_RowCommand" 
         onrowdatabound="gridBBDetails_RowDataBound">
      <AlternatingRowStyle CssClass="alternategridview" />
   <Columns>    
       <asp:TemplateField HeaderText="Name">
           <EditItemTemplate>
               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bbname") %>'></asp:TextBox>
           </EditItemTemplate>
           <ItemTemplate>
           <asp:Label ID="lblbloodbankID" runat="server" Visible="false" Text='<%# Bind("bbid") %>'></asp:Label>
               <asp:Label ID="Label1" runat="server" Text='<%# Bind("bbname") %>'></asp:Label>
           </ItemTemplate>
           <HeaderStyle Width="150px" CssClass="grdpadding" />
           <ItemStyle Width="150px" CssClass="grdpadding" />
       </asp:TemplateField>

       <asp:TemplateField HeaderText="Address">
           <EditItemTemplate>
               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bbaddress") %>'></asp:TextBox>
           </EditItemTemplate>
           <ItemTemplate>
               <asp:Label ID="Label2" runat="server" Text='<%# Bind("bbaddress") %>'></asp:Label>
           </ItemTemplate>
           <HeaderStyle Width="250px" CssClass="grdpadding" />
           <ItemStyle Width="350px" CssClass="grdpadding" />
       </asp:TemplateField>

       <asp:TemplateField HeaderText="Contact No">
           <EditItemTemplate>
               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("bbphone1") %>'></asp:TextBox>
           </EditItemTemplate>
           <ItemTemplate>
               <asp:Label ID="Label3" runat="server" Text='<%# Bind("bbphone1") %>'></asp:Label>
           </ItemTemplate>
           <HeaderStyle Width="100px" CssClass="grdpadding" />
           <ItemStyle Width="100px" CssClass="grdpadding" />
       </asp:TemplateField>

       <asp:TemplateField HeaderText="State">
           <EditItemTemplate>
               <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bbstate") %>'></asp:TextBox>
           </EditItemTemplate>
           <ItemTemplate>
               <asp:Label ID="Label4" runat="server" Text='<%# Bind("bbstate") %>'></asp:Label>
           </ItemTemplate>
           <HeaderStyle Width="100px" CssClass="grdpadding" />
           <ItemStyle Width="100px" CssClass="grdpadding" />
       </asp:TemplateField>

       <asp:TemplateField HeaderText="City">
           <EditItemTemplate>
               <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("bbcity") %>'></asp:TextBox>
           </EditItemTemplate>
           <ItemTemplate>
               <asp:Label ID="Label5" runat="server" Text='<%# Bind("bbcity") %>'></asp:Label>
           </ItemTemplate>
           <HeaderStyle Width="100px" CssClass="grdpadding" />
           <ItemStyle Width="100px" CssClass="grdpadding" />
       </asp:TemplateField>

       <asp:TemplateField>
           <ItemTemplate>
            <asp:LinkButton ID="lb_more" Text="more" CommandName="getmoredetails" CommandArgument="<%# Container.DataItemIndex %>" runat="server"></asp:LinkButton>
           </ItemTemplate>
           <HeaderStyle Width="50px" CssClass="grdpadding" />
           <ItemStyle Width="50px" CssClass="grdpadding" />
       </asp:TemplateField>

    
   </Columns>
<HeaderStyle CssClass="HeaderStyle"></HeaderStyle>
  </asp:GridView>
 </div> 
 
 <div id="divrsmenucontainer">
 <asp:LinkButton ID="lb_postbloodbankdetails" CssClass="addpost" 
         Text="Post Blood Bank Details" runat="server" 
         onclick="lb_postbloodbankdetails_Click"></asp:LinkButton> 
 </div>
<div id="divbbdisplaybg"></div>
<div align="center" id="divbbdisplay" runat="server" style="width:900px; background:#dddddd; border:1px solid #fafafa; height:450px; position:fixed; top:17%; left:15%; right:0px; padding:5px;">
<span style="float:left; font-size:1.3em; font-family:Times New Roman Tahoma Segoe UI; padding:5px 7px 5px 7px; color:#0000cc;">Blood Bank Information :</span><span id="spanclose" style="float:right; padding:5px; font-weight:bold;">X</span><br /><br />
<hr />
<table class="displytable">
  <tr>
   <td class="dt_td_n">Blood Bank Name :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblbbname" runat="server"></asp:Label></td>
   <td class="dt_td_n">Email Address :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblemail" runat="server"></asp:Label></td>
  </tr>
  <tr>
   <td class="dt_td_n">Address :</td>
   <td colspan="3" class="dt_td_n_Address" style="height:50px;"><asp:Label ID="lblbbaddress" runat="server"></asp:Label></td>
  </tr>
  <tr>
   <td class="dt_td_n">Landmark :</td>
   <td colspan="3" class="dt_td_n_Address"><asp:Label ID="lbllandmark" runat="server"></asp:Label></td>
  </tr>
  <tr>
   <td class="dt_td_n">Contact No :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblcontactno" runat="server"></asp:Label></td>
   <td class="dt_td_n">Alternate No :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblalternateno" runat="server"></asp:Label></td>
  </tr>
  <tr>
   <td class="dt_td_n">State :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblstate" runat="server"></asp:Label></td>
   <td class="dt_td_n">City :</td>
   <td class="dt_td_n_l"><asp:Label ID="lblcity" runat="server"></asp:Label></td>
  </tr>
</table>
</div>
</div>
</asp:Content>

