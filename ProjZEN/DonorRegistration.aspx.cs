using System;
using BLL.Manager;
using BLL.Property;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjZEN
{
    public partial class DonorRegistration : System.Web.UI.Page
    {
        DonorManager Dobj = new DonorManager();
        DonorProp DProp = new DonorProp();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            DProp.Email = EmailText.Text;
            DProp.Password = PasswordText.Text;
            DProp.D_age = Convert.ToInt32(TxtAge.Text);
            DProp.D_Address = TxtAddress.Text;
            DProp.D_Name = NameText.Text;
            DProp.D_Gender = rbmale.Checked ? "Male" : "Female";
            DProp.D_bgroup = GroupList.SelectedItem.Text;
            DProp.D_Contact = ContactText.Text;
            DProp.D_SecContact = Contact2Text.Text;
            DProp.Reg_date = System.DateTime.Now;
            DProp.Image_name = FileUpload1.PostedFile.FileName;
            Dobj.DnProp = DProp; //Property Assigned
            Dobj.insertdonor();
            RegLbl.Text = "Donor Added SuccessFully";

            EmailText.Text = "";
            PasswordText.Text = "";
            TxtAge.Text = "";
            TxtAddress.Text = "";
            NameText.Text = "";
            ContactText.Text = "";
            Contact2Text.Text = "";

            Dsuccess.Visible = true;
        }
    }
}