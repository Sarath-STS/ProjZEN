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
    public partial class ViewStatus : System.Web.UI.Page
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
            if (Session["UserID"] != null)
            {
  
                RProp.Requested_By = Convert.ToInt32(Session["UserID"].ToString());
                RMObj.ReqProp = RProp;
                dt = RMObj.GetAllRequestFromUser();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}