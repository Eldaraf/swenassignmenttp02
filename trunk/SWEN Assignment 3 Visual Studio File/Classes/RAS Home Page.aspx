<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RAS Home Page.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; height: 193px">
    
    <div>
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Booking" Width="123px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update Booking" Width="123px" OnClick="Button2_Click" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Cancel Booking" Width="123px" OnClick="Button3_Click" />
&nbsp;
            
        <asp:Button ID="Button4" runat="server" Text="Check Room Availability" Width="159px" OnClick="Button4_Click" />
            
&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Update Room Availability" OnClick="Button5_Click" Width="169px" />
            
    </div>
    </form>
</body>
</html>
