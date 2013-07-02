using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            HotelUser outputsearcheduser = dbmanagerclass.searchbyusername(TextBoxSearchbar.Text);

            if (outputsearcheduser != null)
            {
                UserNameTextBox.Text = outputsearcheduser.Username;
                PasswordTextBox.Text = outputsearcheduser.Password;
                RetypePasswordTextBox.Text = outputsearcheduser.retypepassword1;
                FullNameTextBox.Text = outputsearcheduser.FullName1;
                EmployeeNumberTextBox.Text = Convert.ToString(outputsearcheduser.Number1);
                NRICTextBox.Text = outputsearcheduser.NRIC1;
                DropDownList1.SelectedItem.Text = outputsearcheduser.Gender1;
                DateJoinedTextbox.Text = outputsearcheduser.dateJoined;
            }
                
            else
            {
                UserNameTextBox.Text = null;
                PasswordTextBox.Text = null;
                RetypePasswordTextBox.Text = null;
                FullNameTextBox.Text = null;
                EmployeeNumberTextBox.Text = null;
                NRICTextBox.Text = null;
                DropDownList1.SelectedItem.Text = null;
                DateJoinedTextbox.Text = null;
                ErrorLabel.Text = "User does not exist"; }

            }

        protected void Update_Click(object sender, EventArgs e)
        {
            HotelUser Updateuser = new HotelUser();
            Updateuser.Username = UserNameTextBox.Text;
            Updateuser.Password = PasswordTextBox.Text;
            Updateuser.retypepassword1 = RetypePasswordTextBox.Text;
            Updateuser.FullName1 = FullNameTextBox.Text;
            Updateuser.Number1 = Convert.ToInt32(EmployeeNumberTextBox.Text);
            Updateuser.NRIC1 = NRICTextBox.Text;
            Updateuser.Gender1 = DropDownList1.SelectedItem.Text;
            Updateuser.dateJoined = DateJoinedTextbox.Text;
            int deleteresults;
            deleteresults = dbmanagerclass.Updatedonoruser(Updateuser);

            if (deleteresults == 0)
            {UpdateLabel.Text = "Updates were unsuccessful";}
            else
            { UpdateLabel.Text = "Updates were successful";}
        }

        

        

        

       
    }
}