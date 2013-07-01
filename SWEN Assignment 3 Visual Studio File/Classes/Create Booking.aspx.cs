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
            BookingDetails bd = new BookingDetails();
            CheckIn ci = new CheckIn();

            gd.nric = nricTB.Text;
            gd.firstName = firstNameTB.Text;
            gd.lastName = lastNameTB.Text;
            gd.phoneNumber = phoneNumberTB.Text;
            gd.emailAddress = emailAddressTB.Text;
            gd.numberOfGuest = Convert.ToInt32(noOfGuestTB.Text);

            bd.bookingID = bookingIDTB.Text;
            bd.nric = nricTB.Text;
            bd.noOfGuest = Convert.ToInt32(noOfGuestTB.Text);
            bd.roomStatus = roomStatusRB.SelectedValue;
            bd.roomNumber = roomNumberDDL.Text;
            bd.roomLocation = roomLocationTB.Text;
            bd.roomType = roomTypeTB.Text;

            ci.bookingID = bookingIDTB.Text;

            int rows = DBManager.InsertGuestDetails(gd);
            int rows2 = DBManager.InsertGuestBookingDetails(bd);
            int rows3 = DBManager.InsertCheckInDetails(ci);
            if (rows > 0)
            {
                string querystring = "nric=" + firstNameTB.Text + "&"
                    + "firstName=" + firstNameTB.Text + "&"
                    + "lastName=" + lastNameTB.Text + "&"
                    + "phoneNumber=" + phoneNumberTB.Text + "&"
                    + "emailAddress=" + emailAddressTB.Text + "&"
                    + "numberOfGuest" + noOfGuestTB.Text;

                errormsg.Text = "Update Successful!";
            }
            else
            {
                errormsg.Text = "Error, cannot create";
            }

            if (rows2 > 0)
            {
                string querystring = "bookingID=" + bookingIDTB.Text + "&"
                   + "nric=" + nricTB.Text + "&"
                   + "noOfGuest=" + noOfGuestTB.Text + "&"
                   + "roomStatus=" + roomStatusRB.SelectedValue + "&"
                   + "phoneNumber=" + phoneNumberTB.Text + "&"
                   + "roomNumber=" + roomNumberDDL.SelectedItem + "&"
                   + "roomLocation=" + roomLocationTB.Text + "&"
                   + "roomType=" + roomTypeTB.Text;

                errormsg.Text = "Booking is Successful!";
            }
            else
            {
                errormsg.Text = "Error, cannot create";
            }
            if (rows3 > 0)
            {
                string querystring = "bookingID=" + bookingIDTB.Text;

                errormsg.Text = "Booking is Successful!";
            }
            else
            {
                errormsg.Text = "Error, cannot create";
            }
        }


        
        protected void Button2_Click(object sender, EventArgs e)
        {
           Response.Redirect("Home Page.aspx");
        }

        protected void bookingIDTB_TextChanged(object sender, EventArgs e)
        {

        }
    }
}