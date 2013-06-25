<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
    <div>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Booking" Width="123px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update Booking" Width="123px" OnClick="Button2_Click" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Cancel Booking" Width="123px" OnClick="Button3_Click" />
&nbsp;
        &nbsp;
            
    </div>
    </form>
</body>
</html>
