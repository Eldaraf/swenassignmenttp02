<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            width: 133px;
            height: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="style1">Delonix Regia Hotel System Login Page</span></strong><br />
        <br />
        <img alt="" class="style2" 
            src="file:///C:/Users/1101387G/Desktop/my%20WDAD/smiling%20old%20man.jpg" /><br />
        <br />
        Username:<asp:TextBox ID="TextBoxUsername" runat="server" 
            style="margin-left: 9px" Width="121px" 
             ></asp:TextBox>
        <asp:RequiredFieldValidator ID="UsernameValidator1" runat="server" 
            ControlToValidate="TextBoxUsername" ErrorMessage="Username is invalid"></asp:RequiredFieldValidator>
        <br/>
        Password:<asp:TextBox 
            ID="TextBoxPassword" runat="server" 
            style="margin-left: 10px" Width="120px" TextMode="Password"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
            ControlToValidate="TextBoxPassword" ErrorMessage="Password is invalid"></asp:RequiredFieldValidator>
    
        <br />
        <br />
        <asp:Button ID="ButtonLogin" runat="server" Text="Login" 
            onclick="ButtonLogin_Click" />
    
        <br />
        <br />
        <asp:Label ID="LoginLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HomepageLink" runat="server" NavigateUrl="~/Homepage.aspx">Return to Homepage</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
