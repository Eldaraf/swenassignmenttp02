<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check Room Availability.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Check_Room_Availability" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Room 1:<br />
        Availability:
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        Status:
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Room 2:<br />
        Availability: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        Status:
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Room 3:<br />
        Availability: <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <br />
        Status:
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Room 4:<br />
        Availability: <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <br />
        Status:
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Home Page" />
    
    </div>
    </form>
</body>
</html>
