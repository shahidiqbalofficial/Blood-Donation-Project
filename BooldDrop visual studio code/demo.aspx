<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="JS/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="JS/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function countChar(val) {
        var len = val.value.length;
        if (len >= 160) {
            val.value = val.value.substring(0, 160);
        }
        else {
            $("#spantextcount").text(160 - len);
        }
    }
</script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <span id="spantextcount" style="float:right; color:Gray;">160</span>
  <asp:TextBox ID="txtstatus" runat="server" onkeyup='countChar(this);' TextMode="MultiLine" Width="600px" Height="50px" style="padding:5px;"></asp:TextBox>  
    </div>
    </form>
</body>
</html>
