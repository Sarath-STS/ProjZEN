using BLL.Manager;
using BLL.Property;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjZEN
{
    public partial class DonationHistory : System.Web.UI.Page
    {
         DonorHistory DonHi = new DonorHistory();
        RequestManager RMobj = new RequestManager();
        DonorManager DMObj = new DonorManager();
        public DonorProp DProp = new DonorProp();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["DonorID"] != null)
                {
                    bindgrid();
                }
            }
        }
        public void bindgrid()
        {
            int Donorid = Convert.ToInt32(Session["DonorID"].ToString());
            DProp.D_id = Donorid;
            DMObj.DnProp = DProp;
            DataTable dt = new DataTable();
            dt = DMObj.GetdonorHistory();
            grdHistory.DataSource = dt;
            grdHistory.DataBind();
            DvHistory.Visible = true;
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["DonorID"] != null)
            {
                int Donorid = Convert.ToInt32(Session["DonorID"].ToString());
                DonHi.D_id = Donorid;
                DonHi.Donate_Date = Convert.ToDateTime(txtDate.Text);
                DonHi.Description = TxtDescription.Text;
                RMobj.DonHistory = DonHi;
                RMobj.Insertdonhistory();
                bindgrid();
                RegLbl.Text = "Donotion History Added Successfully";
            }
        }
    }
}