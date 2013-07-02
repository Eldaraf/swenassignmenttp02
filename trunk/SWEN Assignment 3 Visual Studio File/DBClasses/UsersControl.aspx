<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersControl.aspx.cs" Inherits="WebApplication1.UsersControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 258px;
            height: 291px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Welcome Back&nbsp;
        <asp:Label ID="LabelUserName" runat="server"></asp:Label>
        !<br />
        <br />
        Your Login Is Successful! 
    
        <br />
        <br />
        Below 
        here are your commands<br />
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/DisplayUsers.aspx">Display Users</asp:HyperLink>
        &nbsp;&nbsp;&nbsp; Click here to view all the users<br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Register.aspx">Register User</asp:HyperLink>
&nbsp;&nbsp;&nbsp; Click here to register an account for a User<br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Delete.aspx">Delete User</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to delete a User&#39;s account<br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Update.aspx">Update User</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp; Click here to update a User&#39;s account<br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; click 
        on the Logout link to log out of the system<br />
        <br />
        <img alt="" class="style1" 
            src="file:///C:/Users/1101387G/Desktop/my%20WDAD/african%20caretaker.jpg" /></div>
    </form>
</body>
</html>
