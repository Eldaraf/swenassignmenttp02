using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {         
            string StoreUsername = TextBoxUsername.Text;
            string StorePassword = TextBoxPassword.Text;
           
            HotelUser loginuser = new HotelUser();
            loginuser.Username = StoreUsername;
            loginuser.Password = StorePassword;
            int login = dbmanagerclass.Logincheck(loginuser);

            if (login <= 0)
            { LoginLabel.Text = "invalid username or password"; }
            else
            { Server.Transfer("UsersControl.aspx?Username=" + StoreUsername); }

        }

            
    }
}