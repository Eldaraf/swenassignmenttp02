using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            HotelUser newUser = new HotelUser();
            
            HotelUser usernametaken = dbmanagerclass.searchbyusername(newUser.Username);
            if (usernametaken == null)
            {
                newUser.Username = UserNameTextBox.Text;
                newUser.Password = passwordTextBox.Text;
                newUser.retypepassword1 = Retypepassword.Text;
                newUser.retypepassword1 = Retypepassword.Text;
                newUser.FullName1 = FullNameTextBox.Text;
                newUser.Number1 = Convert.ToInt32(Employeenumbertextbox.Text);
                newUser.NRIC1 = NRICTextBox.Text;
                newUser.Gender1 = GenderRadioButtonList.SelectedItem.Text; 
                newUser.dateJoined = DDLDay.SelectedValue + "-" + DDLMon.SelectedValue + "-" + TbxYear.Text; ;

                int result = dbmanagerclass.createdonoruser(newUser);

                if (result <= 0)
                {
                    Console.WriteLine("Donor was not created");
                }

                else
                {
                    Server.Transfer("ThankYou.aspx?User=" + newUser.Username + "&FullName=" + newUser.FullName1
                    + "&Employeenumber=" + newUser.Number1 + "&NRIC=" + newUser.NRIC1 + "&Gender="
                    + newUser.Gender1 + "&DateJoined=" + newUser.dateJoined);
                    Console.WriteLine("User was successfully Registered");
                }
            }
            else
            {
                ErrorLabel.Text = "Username has been Taken please use another username, User not created";
                newUser = null;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserNameTextBox.Text = null;
            passwordTextBox.Text = null;
            Retypepassword.Text = null;
            Retypepassword.Text = null;
            FullNameTextBox.Text = null;
            FirstNameTextBox.Text = null;
            LastNameTextBox.Text = null;
            Employeenumbertextbox.Text = null;
            NRICTextBox.Text = null;
            GenderRadioButtonList.SelectedValue = null;
            DDLDay.SelectedValue = null;
            DDLMon.SelectedValue = null;
            TbxYear.Text = null;

        }
    }
}