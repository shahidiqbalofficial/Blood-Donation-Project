using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BloodDonarObject;

public partial class registration : System.Web.UI.Page
{
    BloodDonarBusinessLogic.BusinessLogic boBusniessLogic = new BloodDonarBusinessLogic.BusinessLogic();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayState();
        }
    }
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
            ddl_state.SelectedIndex = 0;
            ddl_city.SelectedIndex = 0;
        }
    }
    public string GetAutoGenerateID()
    {
        BusinessObject boObject = new BusinessObject();
        boObject.SPQuery = "proc_autogenerateblooddonarID";
        string Aid = "bdid_";
        string getId = boBusniessLogic.AutoGenerateID(boObject);
        string[] getIDList = getId.Split('_');
        int i = int.Parse(getIDList[1]);
        i++;
        Aid += i;
        return Aid;
    }
    protected void Btn_Register_Click(object sender, EventArgs e)
    {
        try
        {
            BloodDonarObject.BusinessObject boObj = new BusinessObject();
            boObj.DonarId = GetAutoGenerateID();
            boObj.DonarUsernamer = txt_username.Text.Trim();
            boObj.DonarPassword = txtpassword.Text.Trim();
            boObj.DonarFullName = txt_first_name.Text.Trim() + " " + txt_last_name.Text.Trim();
            boObj.DonarDateOfBirth = ddl_date.SelectedItem.Text + "-" + ddl_month.SelectedValue.ToString() + "-" + ddl_year.SelectedItem.Text;
            boObj.DonarGender = rb_gender.SelectedValue.ToString();
            boObj.DonarState = ddl_state.SelectedItem.Text;
            boObj.DonarCity = ddl_city.SelectedItem.Text;
            boObj.DonarEmailID = txt_email_id.Text.Trim();
            boObj.DonarPhone = txt_contact_no.Text.Trim();
            boObj.DonarBloodGroup = ddl_blood_donation.SelectedItem.Text.Trim();
            boObj.Status = "active";
            boBusniessLogic.InsertBloodDonarBL(boObj);
            Response.Redirect("~/login.aspx");
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
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
                    ddl_city.Items.Insert(0, new ListItem(" Choose Your City ", "0"));
                    ddl_city.Items.Add(city);
                    break;
                }
            }
        }


    }
}