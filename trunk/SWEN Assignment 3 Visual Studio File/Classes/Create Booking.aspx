<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create Booking.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Create_Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 317px; " class="auto-style1">
    
        Booking ID:
        <asp:TextBox ID="bookingIDTB" runat="server" OnTextChanged="bookingIDTB_TextChanged"></asp:TextBox>
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
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="roomNumberDDL" runat="server" style="margin-left: 0px" OnSelectedIndexChanged="roomNumberDDL_SelectedIndexChanged">
            <asp:ListItem>Room 1</asp:ListItem>
            <asp:ListItem>Room 2</asp:ListItem>
            <asp:ListItem>Room 3</asp:ListItem>
            <asp:ListItem>Room 4</asp:ListItem>
        </asp:DropDownList>
        <br />
        Room Status:<asp:RadioButtonList ID="roomStatusRB" runat="server" Height="24px" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Flow" style="margin-left: 0px" Width="191px">
            <asp:ListItem>Unavailable</asp:ListItem>
            <asp:ListItem>Available</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;
        <br />
        Room Location:
        <asp:TextBox ID="roomLocationTB" runat="server"></asp:TextBox>
        <br />
        Room Type:
        <asp:TextBox ID="roomTypeTB" runat="server"></asp:TextBox>
        <br />
    
        <asp:Label ID="errormsg" runat="server" Text=""></asp:Label>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Booking" style="text-align: left" Width="108px" OnClick="Button1_Click" />
    
        &nbsp; <asp:Button ID="Button2" runat="server" Text="Home Page" OnClick="Button2_Click" Width="93px" />
    
    </div>
    </form>
</body>
</html>
