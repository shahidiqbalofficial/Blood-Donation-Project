using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BloodDonarBusinessLogic;
using BloodDonarObject;

public partial class login : System.Web.UI.Page
{
    BusinessLogic bdBusinessLogic = new BusinessLogic();
    BusinessObject bdObject = new BusinessObject();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("~/BloodPages/Dashboard.aspx");
            }
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        bdObject.DonarUsernamer = txtusername.Text.Trim();
        bdObject.DonarPassword = txtpassword.Text.Trim();
        int i = bdBusinessLogic.VerifyBloodDonarUser(bdObject);
        if (i > 0)
        {
            Session["username"] = txtusername.Text.Trim();
            Response.Redirect("~/BloodPages/dashboard.aspx?uid=" + Session["username"].ToString());
        }
        else
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "LoginFail();", true);       
        }
    }

}