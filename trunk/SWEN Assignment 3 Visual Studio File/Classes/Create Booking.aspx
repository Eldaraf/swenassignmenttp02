<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create Booking.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Create_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 278px; text-align: right">
    
        Booking ID:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        NRIC:
        <asp:TextBox ID="nricTB" runat="server"></asp:TextBox>
        <br />
First Name:
        <asp:TextBox ID="firstNameTB" runat="server"></asp:TextBox>
        <br />
       Last Name:
        <asp:TextBox ID="lastNameTB" runat="server"></asp:TextBox>
        <br />
        Phone Number:
        <asp:TextBox ID="phoneNumberTB" runat="server"></asp:TextBox>
        <br />
        Email Address: 
        <asp:TextBox ID="emailAddressTB" runat="server"></asp:TextBox>
        <br />
        <br />
        Check In Time:
        <asp:TextBox ID="checkInTimeTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Check In Date:
        <asp:TextBox ID="checkInDateTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        Number Of Guest:
        <asp:TextBox ID="noOfGuestTB" runat="server"></asp:TextBox>
        <br />
        Room Number
        <asp:TextBox ID="roomNumberTB" runat="server"></asp:TextBox>
        <br />
        Room Location:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Room Type:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Booking" style="text-align: left" Width="108px" OnClick="Button1_Click" />
    
        <asp:Label ID="errormsg" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
