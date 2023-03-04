using System;
using BLL.Manager;
using BLL.Property;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjZEN
{
    public partial class DonorProfile : System.Web.UI.Page
    {
        DonorManager Dobj = new DonorManager();
        DonorProp DProp = new DonorProp();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["DonorID"] != null)
                {
                    int Donorid = Convert.ToInt32(Session["DonorID"].ToString());
                    DProp.D_id = Donorid;
                    Dobj.DnProp = DProp;
                    DataTable dt = new DataTable();
                    dt = Dobj.GetDonorDetails();
                    if (dt.Rows.Count > 0)
                    {

                        TxtAge.Text = dt.Rows[0]["D_age"].ToString();
                        TxtAddress.Text = dt.Rows[0]["D_Address"].ToString();
                        TxtName.Text = dt.Rows[0]["D_Name"].ToString();
                        if (dt.Rows[0]["D_Gender"].ToString() == "Male")
                        {
                            rbmale.Checked = true;
                        }
                        else
                        {
                            rbfemale.Checked = true;
                        }
                        BBList.SelectedItem.Text = dt.Rows[0]["D_bgroup"].ToString();
                        TXTCONTCT.Text = dt.Rows[0]["D_Contact"].ToString();
                        TXTcontact1.Text = dt.Rows[0]["D_SecContact"].ToString();
                    }
                }

            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            int Donorid = Convert.ToInt32(Session["DonorID"].ToString());
            DProp.D_id = Donorid;
            DProp.D_age = Convert.ToInt32(TxtAge.Text);
            DProp.D_Address = TxtAddress.Text;
            DProp.D_Name = TxtName.Text;
            DProp.D_Gender = rbmale.Checked ? "Male" : "Female";
            DProp.D_bgroup = BBList.SelectedItem.Text;
            DProp.D_Contact = TXTCONTCT.Text;
            DProp.D_SecContact = TXTcontact1.Text;
            DProp.Image_name = FileUpload.PostedFile.FileName;
            Dobj.DnProp = DProp; 
            Dobj.Updatedonor();
            RegLbl.Text = "Donor Added SuccessFully";

   
            TxtAge.Text = "";
            TxtAddress.Text = "";
            TxtName.Text = "";
            TXTCONTCT.Text = "";
            TXTcontact1.Text = "";

        }
    }
}