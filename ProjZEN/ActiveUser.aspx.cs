using System;
using BLL.Manager;
using BLL.Property;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjZEN
{
    public partial class ActiveUser : System.Web.UI.Page
    {
        UserManager UMobj = new UserManager();
        public UserProp UProp = new UserProp();
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
            dt = UMobj.GetAllUserDetails();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void lnkviewInvoice_Click(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((sender as LinkButton).NamingContainer as GridViewRow).RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int UserID = Convert.ToInt32((row.FindControl("lblU_id") as Label).Text);

            UProp.U_id = UserID;
            UMobj.UsProp = UProp;

            UMobj.SetUserActive();

        }
    }
}
    
