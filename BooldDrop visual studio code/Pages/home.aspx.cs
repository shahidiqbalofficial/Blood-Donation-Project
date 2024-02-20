using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkbutton_signout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/login.aspx");
    }
}