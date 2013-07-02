<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="WebApplication1.Update" %>

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
            width: 183px;
            height: 30px;
        }
        .style6
        {
            height: 30px;
        }
        .style7
        {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter the UserName you 
        wish to update in the box<br />
        and then click the search button<br />
        <br />
        <asp:TextBox ID="TextBoxSearchbar" runat="server" Width="111px" 
           ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxSearchbar" ErrorMessage="User does not exist" 
            ValidationGroup="Search"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="searchbutton" runat="server" onclick="Button1_Click" Text="Search" ValidationGroup="Search" />
        <br />
        <br />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        User Details are listed below<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style5">
                    UserName</td>
                <td class="style6">
                    <asp:TextBox ID="UserNameTextBox" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" 
                        ErrorMessage="Username cannot be empty" 
                        ControlToValidate="UserNameTextBox"  ValidationGroup="Confirm"
                         Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password</td>
                <td class="style4">
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="PasswordandRetypepasswordValidator" runat="server" 
                        ControlToCompare="PasswordTextBox" ControlToValidate="RetypePasswordTextBox" 
                        Display="Dynamic" 
                        ErrorMessage="Password and Retype Password must be identical" 
                        ValidationGroup="Confirm"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
                        ErrorMessage="Password cannot be empty" Display="dynamic" 
                        ControlToValidate="PasswordTextBox" ValidationGroup="Confirm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Retype Password</td>
                <td class="style4">
                    <asp:TextBox ID="RetypePasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RetypePasswordValidator" runat="server" 
                        ErrorMessage="Retype Password cannot be empty" 
                        ControlToValidate="RetypePasswordTextBox" Display="Dynamic" 
                        ValidationGroup="Confirm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Full Name</td>
                <td class="style6">
                    <asp:TextBox ID="FullNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FullNameValidator" runat="server" 
                        ErrorMessage="Full Name cannot be empty" 
                        ControlToValidate="FullNameTextBox" Display="Dynamic" 
                        ValidationGroup="Confirm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Number</td>
                <td class="style4">
                    <asp:TextBox ID="EmployeeNumberTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NumberValidator" runat="server" 
                        ErrorMessage="Number cannot be empty" 
                        ControlToValidate="EmployeeNumberTextBox" Display="Dynamic" 
                        ValidationGroup="Confirm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    NRIC</td>
                <td>
                    <asp:TextBox ID="NRICTextBox" runat="server" MaxLength="9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NRICvalidator" runat="server" 
                        ErrorMessage="NRIC cannot be empty" ControlToValidate="NRICTextBox" 
                        ValidationGroup="Confirm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Gender</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="Confirm">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td class="style7">
                    Date Joined</td>
                <td>
                    <asp:TextBox ID="DateJoinedTextbox" runat="server" ValidationGroup="Confirm"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Updatebutton" runat="server" Text="Confirm update" ValidationGroup="Confirm" onclick="Update_Click" 
            />
        &nbsp;&nbsp;<br />
        <br />
&nbsp;<asp:Label ID="UpdateLabel" runat="server" ForeColor="Red"></asp:Label>
            
        <br />
        <br />
        if you click 
        the links without confirming the updates 
        <br />
        The updates are not saved<br />
        <br />
    <asp:HyperLink ID="HomepageLink" runat="server" 
        NavigateUrl="~/UsersControl.aspx">Return to Users Control Page</asp:HyperLink>
            
        <br />
        <br />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
&nbsp;&nbsp;&nbsp; click on the Logout link to log out of the system</div>
    </form>
</body>
</html>
