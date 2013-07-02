<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayUsers.aspx.cs" Inherits="WebApplication1.DisplayUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 183px;
        }
        .style3
        {
            width: 183px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter the UserName you wish to 
        display in the box
        <br />
        and then click the search button<br />
        <br />
        <asp:TextBox ID="TextBoxSearchbar" runat="server" Width="111px" 
            ></asp:TextBox>
        <br />
        <asp:Button ID="SearchButton" runat="server" onclick="Button1_Click" Text="Search" />
        <br />
        <br />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        User Details are listed below<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    UserName</td>
                <td>
                    <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Retype Password</td>
                <td class="style4">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    Full Name</td>
                <td>
                    <asp:Label ID="FullNameLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Number</td>
                <td class="style4">
                    <asp:Label ID="EmployeenumberLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    NRIC</td>
                <td>
                    <asp:Label ID="NRICLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Gender</td>
                <td class="style4">
                    <asp:Label ID="GenderLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="ClearAllbutton" runat="server" Text="Clear all data" 
            onclick="ClearAllbutton_Click" Width="105px" />
        <br />
        <br />
        <asp:Label ID="DeleteLabel" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
    <asp:HyperLink ID="HomepageLink" runat="server" 
        NavigateUrl="~/UsersControl.aspx">Return to Users Control Page</asp:HyperLink>
                <br />
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="LogoutLink" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; click on the Logout link to log out of the system</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
