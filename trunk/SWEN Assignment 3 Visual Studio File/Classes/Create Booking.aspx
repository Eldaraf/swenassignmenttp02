<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create Booking.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Create_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 251px; text-align: right">
    
        Booking ID:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        NRIC:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />First Name:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
       Last Name:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Phone Number:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Email Address: 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Check In Time:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Check In Date:
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        Number Of Guest:
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        Room Number
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Booking" style="text-align: left" Width="108px" />
    
    </div>
    </form>
</body>
</html>
