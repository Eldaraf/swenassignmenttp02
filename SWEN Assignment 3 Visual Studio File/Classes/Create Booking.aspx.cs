using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SWEN_Assignment_3.DBClasses;

namespace SWEN_Assignment_3.Classes
{
    public partial class Create_Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkInTimeTB.Text = DateTime.Now.ToShortTimeString();
            checkInDateTB.Text = DateTime.Now.ToLongDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GuestDetails gd = new GuestDetails();
            gd.nric = nricTB.Text;
            gd.firstName = firstNameTB.Text;
            gd.lastName = lastNameTB.Text;
            gd.phoneNumber = phoneNumberTB.Text;
            gd.emailAddress = emailAddressTB.Text;

            int rows = DBManager.InsertGuestDetails(gd);
            if (rows > 0)
            {
                string querystring = "nric=" + firstNameTB.Text + "&"
                    + "firstName=" + firstNameTB.Text + "&"
                    + "lastName=" + lastNameTB.Text + "&"
                    + "phoneNumber=" + phoneNumberTB.Text + "&"
                    + "emailAddress=" + emailAddressTB.Text;

                Server.Transfer("Home Page.aspx?" + querystring);
            }
            else
            {
                errormsg.Text = "Error, cannot create";
            }
        }
    }
}