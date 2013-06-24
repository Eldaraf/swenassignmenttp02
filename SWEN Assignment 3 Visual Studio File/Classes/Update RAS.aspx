<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update RAS.aspx.cs" Inherits="SWEN_Assignment_3.Classes.Update_RAS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 333px; text-align: right">
    
        Room 1:<br />
        Availability:
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Status:
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Room 2:<br />
        Availability: <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Status:
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Room 3:<br />
        Availability: <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Status:
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Room 4:<br />
        Availability: <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        Status:
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
    
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update Room Status" Width="134px" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
