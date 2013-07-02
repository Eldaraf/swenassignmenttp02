<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="WebApplication1.Logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 391px;
            height: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        You have logged out of the system<br />
        Come back soon!<br />
        <br />
        <img alt="" class="style1" src="file:///C:/Users/1101387G/Desktop/my%20WDAD/goodbye.jpg" /><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Homepage.aspx">Return to Homepage</asp:HyperLink>
        <br />
        <br /></div>
    </form>
</body>
</html>
