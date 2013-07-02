using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelUserName.Text = Request.QueryString["User"];
            LabelFullName.Text = Request.QueryString["FullName"];
            LabelNumber.Text = Request.QueryString["Employeenumber"];
            LabelNRIC.Text = Request.QueryString["NRIC"];
            LabelGender.Text = Request.QueryString["Gender"];
            LabelDateJoined.Text = Request.QueryString["DateJoined"];
           

            }
        }
    }
