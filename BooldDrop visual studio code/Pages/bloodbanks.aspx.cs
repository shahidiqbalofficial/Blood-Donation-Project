using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BloodDonarBusinessLogic;
using BloodDonarObject;

public partial class Pages_bloodbanks : System.Web.UI.Page
{
    BusinessLogic businessLogic = new BusinessLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayState();
            BindBloodBankData();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "disablebb", "<script type='text/javascript'> $(document).ready(function () { $('#divbbdisplaybg').hide(); $('#divbbdisplay').hide(); }); </script>", true);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "disablebb", "<script>$(document).ready(function () { disablediv1(); });</script>", false);
        }
    }

    #region Bind ALL Blood Bank Data into Gridview
    private void BindBloodBankData()
    {
        DataSet ds = businessLogic.GetALLBloodBankDetails();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridBBDetails.DataSource = ds;
            gridBBDetails.DataBind();
        }
    }
    #endregion

    #region Bind State City and Blood Group
    private void DisplayState()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/XML/State-City-Language.xml"));
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddl_state.DataSource = ds;
            ddl_state.DataTextField = "Name";
            ddl_state.DataBind();
            ddl_state.Items.Insert(0, new ListItem(" Choose Your State ", "0")); 
            ddl_city.Items.Insert(0, new ListItem(" Choose Your City ", "0"));
            ddl_city.Enabled = false;
            ddl_state.SelectedIndex = 0;
            ddl_city.SelectedIndex = 0;
        }
    }
    #endregion

    #region Auto Gernerate Code For Blood Bank ID
    public string GetAutoGenerateBloodBankID()
    {
        BusinessObject boObject = new BusinessObject();
        boObject.SPQuery = "proc_autogenerateBloodBankID";
        string Aid = "bbid_";
        string getId = businessLogic.AutoGenerateID(boObject);
        string[] getIDList = getId.Split('_');
        int i = int.Parse(getIDList[1]);
        i++;
        Aid += i;
        return Aid;
    }
    #endregion
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_state.SelectedValue != "0")
        {
            ddl_city.Items.Clear();
            DataSet dscity = new DataSet();
            dscity.ReadXml(Server.MapPath("~/XML/State-City-Language.xml"));
            if (dscity.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dscity.Tables[0].Rows.Count; i++)
                {
                    if (ddl_state.SelectedItem.Text == dscity.Tables[0].Rows[i]["Name"].ToString())
                    {
                        string city = dscity.Tables[0].Rows[i]["City"].ToString();
                        ddl_city.Enabled = true;
                        ddl_city.Items.Insert(0, new ListItem(" Choose Your City ", "0"));
                        ddl_city.Items.Add(city);
                        break;
                    }
                }
            }
        }
        else
        {
            ddl_city.Items.Clear();
            ddl_city.Items.Insert(0, new ListItem(" Choose Your City ", "0"));
            ddl_city.Enabled = false;
        }
    }
    protected void btn_go_Click(object sender, EventArgs e)
    {
        string state = ddl_state.SelectedItem.Text;
        string city = ddl_city.SelectedItem.Text;
        BusinessObject scObj = new BusinessObject();
        scObj.State = state;
        scObj.City = city;
        DataSet dssc = businessLogic.FilterBloodBankStateCityData(scObj);
        if (dssc.Tables[0].Rows.Count > 0)
        {
            gridBBDetails.DataSource = dssc;
            gridBBDetails.DataBind();
        }
        else
        {
            BindBloodBankData();
        }
    }

    #region Post Blood Bank Details
    protected void lb_postbloodbankdetails_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("~/BloodPages/Dashboard.aspx?uid=" + Session["username"].ToString() + "&mid=m3");
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
    #endregion

    protected void gridBBDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "getmoredetails")
        {
            int index = int.Parse(e.CommandArgument.ToString());
            GridViewRow row = gridBBDetails.Rows[index];
            Label lblBBID = (Label)row.FindControl("lblbloodbankID");
            BusinessObject obj=new BusinessObject();
            obj.BloodBankID=lblBBID.Text;            
            DataSet _ds = new DataSet();
            _ds = businessLogic.GetSingleBBDetails(obj);
            if (_ds.Tables[0].Rows.Count > 0)
            {
                lblbbname.Text = _ds.Tables[0].Rows[0]["bbname"].ToString();
                lblemail.Text = _ds.Tables[0].Rows[0]["bbemail"].ToString();
                lblbbaddress.Text = _ds.Tables[0].Rows[0]["bbaddress"].ToString();
                lbllandmark.Text = _ds.Tables[0].Rows[0]["bblandmark"].ToString();
                lblcontactno.Text = _ds.Tables[0].Rows[0]["bbphone1"].ToString();
                lblalternateno.Text = _ds.Tables[0].Rows[0]["bbphone2"].ToString();
                lblstate.Text = _ds.Tables[0].Rows[0]["bbstate"].ToString();
                lblcity.Text = _ds.Tables[0].Rows[0]["bbcity"].ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "disableinfodiv", "<script>$(document).ready(function () { OpenWindow(); });</script>", false);

            }
        }
    }
    protected void gridBBDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}