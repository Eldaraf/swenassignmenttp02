<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication1.Homepage" %>

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
            height: 23px;
        }
        .style3
        {
            width: 400px;
            height: 242px;
        }
        .style4
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="HomePage" runat="server">
    <div>
    
        <span class="style4">Welcome to the 
        Hotel management Homepage!</span><br />
        <br />
        <img class="style3" 
            src="file:///C:/Users/1101387G/Desktop/my%20WDAD/smiling-disabled-senior-woman-thumb21173354.jpg" /><br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx">Login Page</asp:HyperLink>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Click here to login to your account</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp; </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
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
