using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class HotelUser
    {
        private string username; 

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string retypepassword;

        public string retypepassword1
        {
            get { return retypepassword; }
            set { retypepassword = value; }
        }

        private string FullName;

        public string FullName1
        {
            get { return FullName; }
            set { FullName = value; }
        }
        private int Number;

        public int Number1
        {
            get { return Number; }
            set { Number = value; }
        }
        private string NRIC;

        public string NRIC1
        {
            get { return NRIC; }
            set { NRIC = value; }
        }
        private string Gender;

        public string Gender1
        {
            get { return Gender; }
            set { Gender = value; }
        }
        private string DateJoined;

        public string dateJoined
        {
            get { return DateJoined; }
            set { DateJoined = value; }
        }
    }
}