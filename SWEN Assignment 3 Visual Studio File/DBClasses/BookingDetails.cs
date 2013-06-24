using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN_Assignment_3.DBClasses
{
    public class BookingDetails
    {
        public string bookingID { get; set; }
        public string nric { get; set; }
        public int noOfGuest { get; set; }
        public string roomStatus { get; set; }
        public string roomNumber { get; set; }
        public string roomLocation { get; set; }
        public string roomType { get; set; }
    }
}