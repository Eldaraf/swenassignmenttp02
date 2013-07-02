using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SWEN_Assignment_3.DBClasses;

namespace SWEN_Assignment_3.Classes
{
    public partial class Update_Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(local);Initial Catalog=RoomBooking;Integrated Security=False;User ID=User;Password=Password_2013";
            SqlConnection con = new SqlConnection(connectionString);

            string selectSql = @"Select * FROM Guest_Details INNER JOIN Room_Details ON (Guest_Details.nric = Room_Details.nric) WHERE Guest_Details.nric=@nric";
            SqlCommand com = new SqlCommand(selectSql, con);

            try
            {
                con.Open();
                com.Parameters.AddWithValue("@nric", TextBox1.Text); 
 
                using (SqlDataReader read = com.ExecuteReader())
                {
                      
                    while (read.Read())
                    {
                        nricTB.Text = (read["nric"].ToString());
                        firstNameTB.Text = (read["firstName"].ToString());
                        lastNameTB.Text = (read["lastName"].ToString());
                        phoneNumberTB.Text = (read["phoneNumber"].ToString());
                        emailAddressTB.Text = (read["emailAddress"].ToString());
                        roomStatusTB.Text = (read["roomStatus"].ToString());
                        noOfGuestTB.Text = (read["noOfGuest"].ToString());
                        roomNumberTB.Text = (read["roomNumber"].ToString());
                        roomLocationTB.Text = (read["roomLocation"].ToString());
                        roomTypeTB.Text = (read["roomType"].ToString());

                    }
                }
            }
            finally
            {
                con.Close();
            }


            firstNameTB.ReadOnly = false;
            lastNameTB.ReadOnly = false;
            phoneNumberTB.ReadOnly = false;
            emailAddressTB.ReadOnly = false;
            roomStatusTB.ReadOnly = false;
            noOfGuestTB.ReadOnly = false;
            roomNumberTB.ReadOnly = false;
            roomLocationTB.ReadOnly = false;
            roomTypeTB.ReadOnly = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GuestDetails gd = new GuestDetails();
            BookingDetails bd = new BookingDetails();

            gd.nric = bd.nric = nricTB.Text;
            gd.firstName = firstNameTB.Text;
            gd.lastName = lastNameTB.Text;
            gd.phoneNumber = phoneNumberTB.Text;
            gd.emailAddress = emailAddressTB.Text;
            gd.numberOfGuest = Convert.ToInt32(noOfGuestTB.Text);

            bd.roomStatus = roomStatusTB.Text;
            bd.noOfGuest = Convert.ToInt32(noOfGuestTB.Text);
            bd.roomNumber = roomNumberTB.Text;
            bd.roomLocation = roomLocationTB.Text;
            bd.roomType = roomTypeTB.Text;

            int rows = DBManager.UpdateGuestDetails(gd);
            int rows2 = DBManager.UpdateGuestBookingDetails(bd);
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
                errormsg.Text = "Error, cannot Update";
            }

            if (rows2 > 0)
            {
                string querystring ="nric=" + nricTB.Text + "&"
                   + "roomStatus=" + roomStatusTB.Text + "&"
                   + "noOfGuest=" + noOfGuestTB.Text + "&" 
                   + "phoneNumber=" + phoneNumberTB.Text + "&"
                   + "roomNumber=" + roomNumberTB.Text + "&"
                   + "roomLocation=" + roomLocationTB.Text + "&"
                   + "roomType=" + roomTypeTB.Text;

                errormsg.Text = "Update Successful!";
            }
            else
            {
                errormsg.Text = "Error, cannot Update";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RAS Home Page.aspx");
        }

        }
    }