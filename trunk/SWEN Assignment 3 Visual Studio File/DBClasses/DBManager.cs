using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Configuration;
using System.Web;

namespace SWEN_Assignment_3.DBClasses
{
    public class DBManager
    {
        public static int InsertGuestDetails (Guest_Details gd)
        {
            int rowadded = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO Guest_Details(nric, firstName, lastName, phoneNumber, emailAddress, numberOfGuest) VALUES(@nric, @firstName, @lastName, @phoneNumber, @emailAddress, @numberOfGuest)";
                
                comm.Parameters.AddWithValue("@nric", gd.nric);
                comm.Parameters.AddWithValue("@firstName", gd.firstName);
                comm.Parameters.AddWithValue("@lastName", gd.lastName);
                comm.Parameters.AddWithValue("@phoneNumber", gd.phoneNumber);
                comm.Parameters.AddWithValue("@emailAddress", gd.emailAddress);
                comm.Parameters.AddWithValue("@numberOfGuest", gd.numberOfGuest);

                rowadded = comm.ExecuteNonQuery();

            }

            catch (SqlException e)
            {
                throw e;
            }
            return rowadded;
                
        }
    }
}