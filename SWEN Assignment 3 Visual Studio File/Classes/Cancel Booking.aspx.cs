using SWEN_Assignment_3.DBClasses;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN_Assignment_3.Classes
{
    public partial class Cancel_Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Button3.Visible = true;
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int row = DBManager.Deleteguest(nricsearch.Text);
            if (row > 0)
            {
                errormsg.Text = "Delete Confirmed";
            }
            else
            {
                errormsg.Text = "Cannot Delete";
            }
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
                com.Parameters.AddWithValue("@nric", nricsearch.Text);

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
        }
    }
}