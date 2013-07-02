using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Delete : System.Web.UI.Page
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


        protected void Delete_Click(object sender, EventArgs e)
        {
            string usertodelete = UsernameLabel.Text;

            UsernameLabel.Text = null;
            FullNameLabel.Text = null;
            EmployeenumberLabel.Text = null;
            NRICLabel.Text = null;
            GenderLabel.Text = null;

            int deleted = dbmanagerclass.DeleteUser(usertodelete);

            if (deleted != 0)
            {DeleteLabel.Text = "User has been deleted" ;}
            else if(deleted ==0)
            {DeleteLabel.Text = "Error user does not exist ";}

        }

        
    }
}