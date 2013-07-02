﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN_Assignment_3.Classes
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create Booking.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update Booking.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cancel Booking.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Check Room Availability.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update RAS.aspx");
        }
    }
}