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

 


        public static int UpdateGuestDetails(GuestDetails gd)
        {
            int rowupdated = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE Guest_Details SET nric=@nric, firstname=@firstname, lastName=@lastName, phonenumber=@phoneNumber, emailAddress=@emailAddress, numberOfGuest=@numberOfGuest";
                comm.Parameters.AddWithValue("@nric", gd.nric);
                comm.Parameters.AddWithValue("@firstName", gd.firstName);
                comm.Parameters.AddWithValue("@lastName", gd.lastName);
                comm.Parameters.AddWithValue("@phoneNumber", gd.phoneNumber);
                comm.Parameters.AddWithValue("@emailAddress", gd.emailAddress);
                comm.Parameters.AddWithValue("@numberOfGuest", gd.numberOfGuest);

                rowupdated = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowupdated;
        }

        public static int UpdateGuestBookingDetails(BookingDetails bd)
        {
            int rowupdated = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE Room_Details SET nric=@nric, noOfGuest=@noOfGuest, roomStatus=@roomStatus, roomNumber=@roomNumber, roomLocation=@roomLocation, roomType=@roomType";
                comm.Parameters.AddWithValue("@nric", bd.nric);
                comm.Parameters.AddWithValue("@noOfGuest", bd.noOfGuest);
                comm.Parameters.AddWithValue("@roomStatus", bd.roomStatus);
                comm.Parameters.AddWithValue("@roomNumber", bd.roomNumber);
                comm.Parameters.AddWithValue("@roomLocation", bd.roomLocation);
                comm.Parameters.AddWithValue("@roomType", bd.roomType);

                rowupdated = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowupdated;
        }

    }
}