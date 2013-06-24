using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN_Assignment_3.DBClasses
{
    public class Guest_Details
    {
        public string nric { get; set; }
        public string lastName { get; set; }
        public string firstName { get; set; }
        public string phoneNumber { get; set; }
        public string emailAddress { get; set; }
        public int numberOfGuest { get; set; }
    }
}