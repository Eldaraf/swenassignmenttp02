﻿using System;
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

            gd.nric = nricTB.Text;
            gd.firstName = firstNameTB.Text;
            gd.lastName = lastNameTB.Text;
            gd.phoneNumber = phoneNumberTB.Text;
            gd.emailAddress = emailAddressTB.Text;
            gd.numberOfGuest = Convert.ToInt32(noOfGuestTB.Text);

            bd.bookingID = bookingIDTB.Text;
            bd.nric = nricTB.Text;
            bd.noOfGuest = Convert.ToInt32(noOfGuestTB.Text);
            bd.roomStatus = roomStatusTB.Text;
            bd.roomNumber = roomNumberTB.Text;
            bd.roomLocation = roomNumberTB.Text;
            bd.roomType = roomTypeTB.Text;

            int rows = DBManager.InsertGuestDetails(gd);
            int rows2 = DBManager.InsertGuestBookingDetails(bd);
            if (rows > 0)
            {
                string querystring = "nric=" + firstNameTB.Text + "&"
                    + "firstName=" + firstNameTB.Text + "&"
                    + "lastName=" + lastNameTB.Text + "&"
                    + "phoneNumber=" + phoneNumberTB.Text + "&"
                    + "emailAddress=" + emailAddressTB.Text + "&"
                    + "numberOfGuest" + noOfGuestTB.Text;

                Server.Transfer("Home Page.aspx?" + querystring);
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
                   + "roomStatus=" + roomStatusTB.Text + "&"
                   + "phoneNumber=" + phoneNumberTB.Text + "&"
                   + "roomNumber=" + roomNumberTB.Text + "&"
                   + "roomLocation=" + roomLocationTB.Text + "&"
                   + "roomType=" + roomTypeTB.Text;
            }
            else
            {
                errormsg.Text = "Error, cannot create";
            }
        }
    }
}