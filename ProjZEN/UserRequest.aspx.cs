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
    public partial class UserRequest : System.Web.UI.Page
    {
        DonorManager DMObj = new DonorManager();
        RequestManager RMObj = new RequestManager();
        public Request RProp = new Request();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
            RegLbl.Text = "";
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
            string D_bgroup = (row.FindControl("lblD_bgroup") as Label).Text;
            
            if (Session["UserID"] != null)
            {
                RProp.Requested_To = DonorID;
                RProp.Requested_By = Convert.ToInt32(Session["UserID"].ToString());
                RProp.Requested_Date = System.DateTime.Now;
                RProp.Requested_BloodGroup = D_bgroup;
                RMObj.ReqProp = RProp;
                RMObj.InsertRequest();
                RegLbl.Text = "Request Send Successfully";
            }
           
          
        }
    }
}