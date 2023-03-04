using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Manager;
using BLL.Property;

namespace ProjZEN
{
    public partial class ViewDonor : System.Web.UI.Page
    {
        DonorManager DMObj = new DonorManager();
        public DonorProp DProp = new DonorProp();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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

      
    }
}