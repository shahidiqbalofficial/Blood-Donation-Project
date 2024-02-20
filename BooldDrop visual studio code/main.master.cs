using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                t1_log.Visible = false;
                spanwelcome.Visible = true;
                spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            }
            else
            {
                t1_log.Visible = true;
                spanwelcome.Visible = false;
                divdash.Attributes.Add("display", "none");
            }
        }
    }
    protected void lb_login_Click(object sender, EventArgs e)
    {
        t1_log.Visible = false;
        divdash.Attributes.Add("display", "none");
        Response.Redirect("~/login.aspx");
    }
    protected void lb_newuser_Click(object sender, EventArgs e)
    {
        t1_log.Visible = false;
        divdash.Attributes.Add("display", "none");
        Response.Redirect("~/registration.aspx");
    }
    protected void lnkbutton_signout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        t1_log.Visible = false;
        spanwelcome.Visible = false;
        divdash.Attributes.Add("display", "none");
        Response.Redirect("~/login.aspx");
    }
    
    public void lbhome_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            divdash.Attributes.Add("display", "block");
            spanwelcome.Visible = true;
            spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            Response.Redirect("~/Pages/home.aspx");
        }
        else
        {
            divdash.Attributes.Add("display", "none");
            Response.Redirect("~/Pages/home.aspx");
        }
    }
    public void lbaboutus_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            divdash.Attributes.Add("display", "block");
            spanwelcome.Visible = true;
            spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            Response.Redirect("~/Pages/aboutus.aspx");
        }
        else
        {
            divdash.Attributes.Add("display", "none");
            Response.Redirect("~/Pages/aboutus.aspx");
        }
    }
    public void lbbloodbank_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            divdash.Attributes.Add("display", "block");
            spanwelcome.Visible = true;
            spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            Response.Redirect("~/Pages/bloodbanks.aspx");
        }
        else
        {
            divdash.Attributes.Add("display", "none");
            Response.Redirect("~/Pages/bloodbanks.aspx");
        }
    }
    public void lbsearchdonar_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            divdash.Attributes.Add("display", "block");
            spanwelcome.Visible = true;
            spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            Response.Redirect("~/Pages/serarchdonar.aspx");
        }
        else
        {
            divdash.Attributes.Add("display", "none");
            Response.Redirect("~/Pages/serarchdonar.aspx");
        }
    }
    public void lbcontactus_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            divdash.Attributes.Add("display", "block");
            spanwelcome.Visible = true;
            spanwelcome.InnerText = "Welcome " + Session["username"].ToString();
            Response.Redirect("~/Pages/contactus.aspx");
        }
        else
        {
            divdash.Attributes.Add("display", "none");
            Response.Redirect("~/Pages/contactus.aspx");
        }
    }
    public void LB_Dashboard_Click(object sender, EventArgs e)
    {
        divdash.Attributes.Add("display", "none");
        Response.Redirect("~/BloodPages/Dashboard.aspx");
    }
}
