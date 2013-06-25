<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update Booking.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Update_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 392px; text-align: right">
    <form id="form1" runat="server">
    <div>
    
        NRIC:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
        <br />
        <br />
        NRIC:
        <asp:TextBox ID="nricTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
First Name:
        <asp:TextBox ID="firstNameTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
       Last Name:
        <asp:TextBox ID="lastNameTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Phone Number:
        <asp:TextBox ID="phoneNumberTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Email Address: 
        <asp:TextBox ID="emailAddressTB" runat="server" ReadOnly="True"></asp:TextBox>
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
        <asp:TextBox ID="noOfGuestTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Room Status:
        <asp:TextBox ID="roomStatusTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Room Number
        <asp:TextBox ID="roomNumberTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Room Location:
        <asp:TextBox ID="roomLocationTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        Room Type:
        <asp:TextBox ID="roomTypeTB" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
    
        <asp:Label ID="errormsg" runat="server" Text=""></asp:Label>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update Booking" style="text-align: left" Width="113px" OnClick="Button1_Click" />
    
        &nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button3" runat="server" Text="Home" OnClick="Button3_Click" Width="59px" />
    
    </div>
    </form>
</body>
</html>
