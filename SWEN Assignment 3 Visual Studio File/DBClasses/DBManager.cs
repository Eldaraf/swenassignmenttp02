﻿using System;
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
        public static int InsertGuestDetails (GuestDetails gd)
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

        public static int InsertGuestBookingDetails (BookingDetails bd)
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
                comm.CommandText = "INSERT INTO Room_Details(bookingID, nric, roomStatus, noOfGuest, roomNumber, roomLocation, roomType) VALUES(@bookingID, @nric, @noOfGuest, @roomStatus, @roomNumber, @roomLocation, @roomType)";

                comm.Parameters.AddWithValue("@bookingID", bd.bookingID);
                comm.Parameters.AddWithValue("@nric", bd.nric);
                comm.Parameters.AddWithValue("@noOfGuest", bd.noOfGuest);
                comm.Parameters.AddWithValue("@roomStatus", bd.roomStatus);
                comm.Parameters.AddWithValue("@roomNumber", bd.roomNumber);
                comm.Parameters.AddWithValue("@roomLocation", bd.roomLocation);
                comm.Parameters.AddWithValue("@roomType", bd.roomType);

                rowadded = comm.ExecuteNonQuery();

            }

            catch (SqlException e)
            {
                throw e;
            }
            return rowadded;
        }

        public static bool LoginCheck(String user, String pass)
        {
            bool result = false;
            SqlConnection conn = null;

            try
            {
                //establish connection with DB
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EldsDBConnString"].ConnectionString;
                conn.Open(); //open connection with DB

                //Prepare SQL command and pass parameters
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * FROM Guest_Details WHERE nric=@nric INNER JOIN Room_Details ON (Guest_Details.@nric = Room_Details.@nric)";
                comm.Parameters.AddWithValue("@username", user);
                comm.Parameters.AddWithValue("@password", pass);
                SqlDataReader dr = comm.ExecuteReader();

                //if data exist, set status = true
                if (dr.Read())
                {
                    result = true;
                }

                dr.Close();
                conn.Close();
            }
            catch (SqlException f)
            {
                throw f;
            }
            return result;
        }
    }
}