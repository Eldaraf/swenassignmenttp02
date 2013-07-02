using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DisplayUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HotelUser outputsearcheduser = dbmanagerclass.searchbyusername(TextBoxSearchbar.Text);

            if (outputsearcheduser != null)
            {
                UsernameLabel.Text = outputsearcheduser.Username;
                FullNameLabel.Text = outputsearcheduser.FullName1;
                EmployeenumberLabel.Text = Convert.ToString(outputsearcheduser.Number1);
                NRICLabel.Text = outputsearcheduser.NRIC1;
                GenderLabel.Text = outputsearcheduser.Gender1;
                ErrorLabel.Text = "";
            }

            else
            {
                UsernameLabel.Text = null;
                FullNameLabel.Text = null;
                EmployeenumberLabel.Text = null;
                NRICLabel.Text = null;
                GenderLabel.Text = null;
                ErrorLabel.Text = "User does not exist";
            }
        }

        protected void ClearAllbutton_Click(object sender, EventArgs e)
        {
            UsernameLabel.Text = null;
            FullNameLabel.Text = null;
            EmployeenumberLabel.Text = null;
            NRICLabel.Text = null;
            GenderLabel.Text = null;
            TextBoxSearchbar.Text = null;
            ErrorLabel.Text = "";
            DeleteLabel.Text = "";
        }
    }
}