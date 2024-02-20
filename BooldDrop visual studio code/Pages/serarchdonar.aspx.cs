using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BloodDonarBusinessLogic;
using BloodDonarObject;

public partial class Pages_serarchdonar : System.Web.UI.Page
{
    BusinessLogic businesLogic = new BusinessLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBloodDonarData();
            DisplayState();
        }
    }
    private void BindBloodDonarData()
    {
        DataSet ds = new DataSet();
        ds = businesLogic.GetAllBloodDonarData();
        if (ds.Tables[0].Rows.Count > 0)
        {
            ViewState["donardata"] = ds;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
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
        BusinessObject _scObject = new BusinessObject();
        _scObject.State = ddl_state.SelectedItem.Text;
        _scObject.City = ddl_city.SelectedItem.Text;
        _scObject.DonarBloodGroup = ddl_bloodgroup.SelectedItem.Text;
        DataSet ds = businesLogic.FilterBloodDonarStateCityData(_scObject);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindBloodDonarData();
    }
}