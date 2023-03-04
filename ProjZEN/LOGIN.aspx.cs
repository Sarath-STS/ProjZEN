using BLL.Manager;
using BLL.Property;
using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjZEN
{
    public partial class LOGIN : System.Web.UI.Page
    {

        Manager LogMngr_Obj = new Manager();
        BLL.Property.Login LogPropObj = new BLL.Property.Login();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                errlbl.Text = "";
            }
           
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            errlbl.Text = "";
            if (txtmail.Text != string.Empty && txtpass.Text != string.Empty) 
            {
                LogPropObj.Email = txtmail.Text;
                LogPropObj.Password = txtpass.Text;
                LogMngr_Obj.LogRegPro_Obj = LogPropObj;
                
                int LoginStatus = LogMngr_Obj.VerifyLogin();
                
                if (LoginStatus > 0)
                {
                    int Usertype = LogMngr_Obj.GetLoginDetails();
                    if (Usertype == 1)
                    {
                        Response.Redirect("Admin.aspx");
                    }

                    else if (Usertype == 2) 
                    {
                        DataTable dt = new DataTable();
                        dt = LogMngr_Obj.Getdonorpersonaldetails();
                        if (dt.Rows.Count > 0) 
                        {
                            Session["DonorID"] = dt.Rows[0]["D_id"].ToString();
                            Session["DonorName"] = dt.Rows[0]["D_Name"].ToString();
                        }
                        Response.Redirect("Donotion.aspx");
                    }
                    else
                    {
                        DataTable dt = new DataTable();
                        dt = LogMngr_Obj.Userpersonaldetails();
                        if (dt.Rows.Count > 0)
                        {
                            Session["UserID"] = dt.Rows[0]["U_id"].ToString();
                            Session["UserName"] = dt.Rows[0]["U_Name"].ToString();
                        }
                        Response.Redirect("UserProfile.aspx");
                    }
                    
                }
                else
                {
                    errlbl.Text = "Invalid EmailId and Password";
                }
                
            }
            else
            {
                errlbl.Text = "Please enter EmailId and Password";
            }
        }

       


    }


}
