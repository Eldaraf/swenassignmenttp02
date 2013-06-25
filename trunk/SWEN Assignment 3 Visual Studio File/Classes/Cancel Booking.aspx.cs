using SWEN_Assignment_3.DBClasses;
using System;
using System.Collections.Generic;
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
    }
}