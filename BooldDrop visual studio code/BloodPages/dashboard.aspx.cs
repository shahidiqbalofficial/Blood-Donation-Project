using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using BloodDonarObject;
using BloodDonarBusinessLogic;

public partial class BloodPages_dashboard : System.Web.UI.Page
{
    BusinessLogic businessLogic = new BusinessLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetSingleUserData();
            DisplayStatusData();
            DisplayState();
        }
    }

    #region Get Login UserID
    private void GetSingleUserData()
    {
        if (Session["username"] != null)
        {
            string username = Session["username"].ToString();
            BusinessObject boObj = new BusinessObject();
            boObj.DonarUsernamer = username;
            DataSet ds = new DataSet();
            ds = businessLogic.GetSingleDonarDetails(boObj);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string _donarID = ds.Tables[0].Rows[0]["donarid"].ToString();
                Session["did"] = _donarID.ToString();
                lblusername.Text = ds.Tables[0].Rows[0]["donarusername"].ToString();
                lblfullname.Text = ds.Tables[0].Rows[0]["donarfullname"].ToString();
                lbldob.Text = ds.Tables[0].Rows[0]["donardob"].ToString();
                lblgender.Text = ds.Tables[0].Rows[0]["donargender"].ToString();
                lblemailid.Text = ds.Tables[0].Rows[0]["donaremailid"].ToString();
                lblphone.Text = ds.Tables[0].Rows[0]["donarphone"].ToString();
                lblbloodgroup.Text = ds.Tables[0].Rows[0]["donarbloodgroup"].ToString();

            }
        }
        else
        {
            Session["username"] = "";
            Session["did"] = "";
            Response.Redirect("~/login.aspx");
        }
    }
    #endregion

    #region Get and Display Status Post Message
    private void DisplayStatusData()
    {
        if (Session["did"] != null)
        {
            BusinessObject obj = new BusinessObject();
            obj.DonarId = Session["did"].ToString();
            obj.SPQuery = "proc_NoOfStatusPosted";
            string noofpost = businessLogic.AutoGenerateID(obj);
            int n = int.Parse(noofpost);
            DataSet ds = new DataSet();
            ds = businessLogic.DisplayStatusPost(obj);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = ds.Tables[0].Rows.Count - 1; i >= 0; i--)
                {
                    string statusID = ds.Tables[0].Rows[i]["statuspostid"].ToString();
                    string time = ds.Tables[0].Rows[i]["statuspostedtime"].ToString();
                    string postmsg = ds.Tables[0].Rows[i]["statusmessage"].ToString();
                    string nopostediting = ds.Tables[0].Rows[i]["nooftimepostedited"].ToString();

                    HtmlGenericControl divstatuscontainer = new HtmlGenericControl("div");
                    divstatuscontainer.Attributes.Add("class", "getstatuscontainer");

                    /*
                    HtmlGenericControl edit = new HtmlGenericControl("a");
                    edit.Attributes.Add("class", "aedit");
                    edit.Attributes.Add("id", "edit"+i.ToString());
                    edit.InnerText = "edit";
                    edit.Attributes.Add("href", "#");
                    edit.Attributes.Add("onclick", "editlink('"+i.ToString()+"')");
                    */


                    HtmlGenericControl spandate = new HtmlGenericControl("span");
                    spandate.Attributes.Add("class", "spandate");
                    spandate.Attributes.Add("id", i.ToString());
                    spandate.InnerText = "Status Post Date : " + time;

                    HtmlGenericControl newline = new HtmlGenericControl("br");


                    HtmlGenericControl divstatusmsg = new HtmlGenericControl("div");
                    divstatusmsg.Attributes.Add("class", "divstatusmessage");
                    divstatusmsg.Attributes.Add("id", i.ToString());

                    HtmlGenericControl spanstatusmsg = new HtmlGenericControl("span");
                    spanstatusmsg.Attributes.Add("class", "spanstatusmessage");
                    spanstatusmsg.Attributes.Add("id", "ssmsg" + i.ToString());
                    spanstatusmsg.InnerText = postmsg;

                    /*
                    HtmlGenericControl textmsg = new HtmlGenericControl("input");
                    textmsg.Attributes.Add("display", "none");
                    textmsg.Attributes.Add("class", "txt");
                    textmsg.Attributes.Add("id", "txt" + i.ToString());
                    textmsg.InnerText = postmsg;
                    */

                    divstatusmsg.Controls.Add(spanstatusmsg);
                    //divstatusmsg.Controls.Add(textmsg);
                    //divstatuscontainer.Controls.Add(edit);
                    divstatuscontainer.Controls.Add(spandate);
                    divstatuscontainer.Controls.Add(newline);
                    divstatuscontainer.Controls.Add(divstatusmsg);
                    panelstatuspost.Controls.Add(divstatuscontainer);

                }
            }
            else
            {
                HtmlGenericControl spanerror = new HtmlGenericControl("span");
                spanerror.Attributes.Add("class", "spanstatusmessage");
                spanerror.InnerText = "post whatever you want in status box";

                panelstatuspost.Controls.Add(spanerror);
            }
        }
        else
        {
            Session["username"] = "";
            Session["did"] = "";
            Response.Redirect("~/login.aspx");
        }
        
    }
    #endregion

    #region Autogernerate StatudID Code
    public string GetAutoGenerateStatusID()
    {
        BusinessObject boObject = new BusinessObject();
        boObject.SPQuery = "proc_autogeneratestatusID";
        string Aid = "psid_";
        string getId = businessLogic.AutoGenerateID(boObject);
        string[] getIDList = getId.Split('_');
        int i = int.Parse(getIDList[1]);
        i++;
        Aid += i;
        return Aid;
    }
    #endregion

    #region Autogernerate Blood Bank ID Code
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

    protected void btn_post_Click(object sender, EventArgs e)
    {
        string poststatudate = System.DateTime.Now.ToString("dd/MM/yyyy");
        BusinessObject PSObject = new BusinessObject();
        PSObject.DonarId = Session["did"].ToString();
        PSObject.StatusPostID = GetAutoGenerateStatusID();
        PSObject.StatusPostMessage = txtstatusmsg.Text;
        PSObject.StatusPostTiming = poststatudate;
        PSObject.NooftimeStatusedited = "0";
        businessLogic.InsertPostStatusData(PSObject);
        DisplayStatusData();
    }
    private void DisplayState()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/XML/State-City-Language.xml"));
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddl_bbstate.DataSource = ds;
            ddl_bbstate.DataTextField = "Name";
            ddl_bbstate.DataBind();
            ddl_bbstate.Items.Insert(0, new ListItem(" Choose Your State ", "0"));
            ddl_bbstate.SelectedIndex = 0;
            ddl_bbcity.SelectedIndex = 0;
        }
    }
    protected void ddl_bbstate_SelectedIndexChanged(object sender, EventArgs e)
    {

        DataSet dscity = new DataSet();
        dscity.ReadXml(Server.MapPath("~/XML/State-City-Language.xml"));
        if (dscity.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dscity.Tables[0].Rows.Count; i++)
            {
                if (ddl_bbstate.SelectedItem.Text == dscity.Tables[0].Rows[i]["Name"].ToString())
                {
                    string city = dscity.Tables[0].Rows[i]["City"].ToString();
                    ddl_bbcity.Items.Insert(0, new ListItem(" Choose Your City ", "0"));
                    ddl_bbcity.Items.Add(city);
                    break;
                }
            }
        }
    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        BusinessObject bbObjects = new BusinessObject();
        bbObjects.BloodBankID = GetAutoGenerateBloodBankID();
        bbObjects.BloodBankName = txt_bloodbankname.Text.Trim();
        bbObjects.BloodBankAddress = txt_bloodbankaddress.Text;
        bbObjects.BloodBankLandmark = txt_bloodbanklandmark.Text;
        bbObjects.BloodBankPhone1 = txt_bloodbankphone1.Text;
        bbObjects.BloodBankPhone2 = txt_bloodbankphone2.Text;
        bbObjects.EmailID = txt_bloodbankemail.Text;
        bbObjects.State = ddl_bbstate.SelectedItem.Text;
        bbObjects.City = ddl_bbcity.SelectedItem.Text;
        bbObjects.DonarId = Session["did"].ToString();
        bbObjects.Status = "active";
        businessLogic.InsertBBDetails(bbObjects);
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
}