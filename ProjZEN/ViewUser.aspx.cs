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
    public partial class ViewUser : System.Web.UI.Page
    {
        UserManager DMObj = new UserManager();
        public UserProp DProp = new UserProp();
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
            dt = DMObj.GetAllUserDetails();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        
    }
}