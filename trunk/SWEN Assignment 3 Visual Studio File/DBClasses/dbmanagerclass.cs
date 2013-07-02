using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public class dbmanagerclass
    {
        
        public static int createdonoruser(HotelUser newuser)
        {
            int rowsinserted = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].
                ConnectionString;
                conn.Open();
                
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "insert into donoruser (username,password,retypepassword,Fullname,Number,NRIC,gender,datejoined)"
                + "values (@uname,@pwd,@retypepassword,@Fullname,@Number,@NRIC,@gender,@datejoined )";
                
                comm.Parameters.AddWithValue("@uname", newuser.Username);
                comm.Parameters.AddWithValue("@pwd", newuser.Password);
                comm.Parameters.AddWithValue("@retypepassword", newuser.retypepassword1);
                comm.Parameters.AddWithValue("@Fullname", newuser.FullName1);
                comm.Parameters.AddWithValue("@gender", newuser.Gender1);
                comm.Parameters.AddWithValue("@datejoined", Convert.ToDateTime(newuser.dateJoined));
                comm.Parameters.AddWithValue("@Number", newuser.Number1);
                comm.Parameters.AddWithValue("@NRIC", newuser.NRIC1);

                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();

            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static int Updatedonoruser(HotelUser newuser)
        {
            int rowsinserted = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].
                ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Update donoruser SET username=@uname,password=@pwd,retypepassword=@retypepassword,"
                + "Fullname=@Fullname,Number=@Number,NRIC=@NRIC,gender=@gender,datejoined=@datejoined WHERE username=@uname";
                comm.Parameters.AddWithValue("@uname", newuser.Username);
                comm.Parameters.AddWithValue("@pwd", newuser.Password);
                comm.Parameters.AddWithValue("@retypepassword", newuser.retypepassword1);
                comm.Parameters.AddWithValue("@Fullname", newuser.FullName1);
                comm.Parameters.AddWithValue("@Number", newuser.Number1);
                comm.Parameters.AddWithValue("@NRIC", newuser.NRIC1);
                comm.Parameters.AddWithValue("@gender", newuser.Gender1);
                comm.Parameters.AddWithValue("@datejoined", Convert.ToDateTime(newuser.dateJoined));

                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();

            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static HotelUser searchbyusername(string username)
        {
            HotelUser result = null;
            SqlConnection conn = null;

            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].
                ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM donoruser WHERE username=@username";
                comm.Parameters.AddWithValue("@username", username);
                
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    result = new HotelUser();
                    result.Username = (string)dr["username"];
                    result.FullName1 = (string)dr["Fullname"];
                    result.Password = (string)dr["password"];
                    result.retypepassword1 = (string)dr["retypepassword"];
                    result.Number1 = Convert.ToInt32((string)dr["number"]);
                    result.NRIC1 = (string)dr["NRIC"];
                    result.Gender1 = (string)dr["gender"];
                    result.dateJoined = Convert.ToString((DateTime)dr["datejoined"]);
                 
                }

                dr.Close();
                conn.Close();

            }
            catch (SqlException e)
            {
                throw e;
            }
            return result;
        }

        public static int DeleteUser(string username)
        {
            int rowsdeleted = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Delete from DonorUser where username = @uname";
                comm.Parameters.AddWithValue("@uname", username);

                rowsdeleted = comm.ExecuteNonQuery();

                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsdeleted;

        }

        public static int Logincheck(HotelUser newdonor)
        {
            int doesuserexist = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DBscriptConnectionString"].
                ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * FROM donoruser WHERE username=@username and password=@password";

                comm.Parameters.AddWithValue("@username", newdonor.Username);
                comm.Parameters.AddWithValue("@password", newdonor.Password);

                doesuserexist = comm.ExecuteNonQuery();
                conn.Close();

            }
            catch (SqlException e)
            {
                throw e;
            }
            return doesuserexist;
        }
    }
}