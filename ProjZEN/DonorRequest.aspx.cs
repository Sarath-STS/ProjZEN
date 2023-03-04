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
    public partial class DonorRequest : System.Web.UI.Page
    {
        RequestManager RMObj = new RequestManager();
        public Request RProp = new Request();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            DataTable dt = new DataTable();
            if (Session["DonorID"] != null)
            {
                int Donorid = Convert.ToInt32(Session["DonorID"].ToString());
                RProp.Requested_To = Donorid;
                RMObj.ReqProp = RProp;
                dt = RMObj.GetAllRequestForDonor();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected void lnkReject_Click(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((sender as LinkButton).NamingContainer as GridViewRow).RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int RId = Convert.ToInt32((row.FindControl("lblRId") as Label).Text);
            if (Session["DonorID"] != null)
            {
                RProp.RId = RId;
                RProp.ReasonForReject = "Rejected By "+ Session["DonorName"].ToString();
                RProp.Status = 2;
                RMObj.ReqProp = RProp;
                RMObj.UpdateRequest();
                RegLbl.Text = "Request Rejected Successfully";
            }
        }

        protected void lnkAccept_Click(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((sender as LinkButton).NamingContainer as GridViewRow).RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int RId = Convert.ToInt32((row.FindControl("lblRId") as Label).Text);
            if (Session["DonorID"] != null)
            {
                RProp.RId = RId;
                RProp.ReasonForReject = "Rejected By " + Session["DonorName"].ToString();
                RProp.Status = 1;
                RMObj.ReqProp = RProp;
                RMObj.UpdateRequest();
                RegLbl.Text = "Request Accepted Successfully";
            }
        }
    }
}