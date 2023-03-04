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
    public partial class UserReg : System.Web.UI.Page
    {
        UserManager UserObj = new UserManager();
        UserProp UserProp = new UserProp();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserProp.U_Name = txtname.Text;
            UserProp.Email = txtemail.Text;
            UserProp.Password = txtpassword.Text;
            UserProp.U_Type = Convert.ToInt32(DropDown.SelectedValue);
            UserProp.U_Contact = TXTCONTCT.Text;
            UserProp.U_CName = TxtCName.Text;
            UserProp.U_Contact2 = TXTcontact2.Text;
            UserProp.U_CName2 = TxtCname1.Text;
            UserProp.U_Address = TxtAddress.Text;
            UserProp.Image_name = FileUpload.PostedFile.FileName;
            UserProp.Reg_date = System.DateTime.Now;

            UserObj.UsProp = UserProp;
            UserObj.Insertuser();
            RegLbl.Text = "User Added SuccessFully";

            txtemail.Text = "";
            txtpassword.Text = "";
            txtname.Text = "";
            TxtAddress.Text = "";
            TXTCONTCT.Text = "";
            TxtCName.Text = "";
            TXTcontact2.Text = "";
            TxtCname1.Text = "";

            Dsuccess.Visible = true;
        }

        
    }
}