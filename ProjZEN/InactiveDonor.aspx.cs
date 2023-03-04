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
    public partial class InactiveDonor : System.Web.UI.Page
    {
        DonorManager DMObj = new DonorManager();
        public DonorProp DProp = new DonorProp();
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
            dt = DMObj.GetAllDonerDetails();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void lnkviewInvoice_Click(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((sender as LinkButton).NamingContainer as GridViewRow).RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int DonorID = Convert.ToInt32((row.FindControl("lblD_id") as Label).Text);

            DProp.D_id = DonorID;
            DMObj.DnProp = DProp;
            DMObj.SetDonorInActive();
        }
    }
}