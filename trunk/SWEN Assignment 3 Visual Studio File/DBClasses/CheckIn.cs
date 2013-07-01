using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN_Assignment_3.DBClasses
{
    public class CheckIn
    {
        public string bookingID { get; set; }
        public DateTime checkInTime { get; set; }
        public DateTime checkInDate { get; set; }

    }
}