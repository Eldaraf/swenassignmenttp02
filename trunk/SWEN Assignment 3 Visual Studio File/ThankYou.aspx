<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="WebApplication1.ThankYou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            width: 113px;
            height: 168px;
        }
    </style>
</head>
<body style="font-family: Calibri">
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><strong>Thank You!</strong></span><br />
        <br />
        Thank you for registering with Delonix Regia Hotel System !
        <br />
        <img alt="" class="style2" 
            src="file:///C:/Users/1101387G/Desktop/my%20WDAD/smiling%20old%20man%20single.jpg" /><br />
        Here are your details:<br />
        <br />
        Username : <asp:Label ID="LabelUserName" runat="server"></asp:Label>
        <br />
        Full Name :
        <asp:Label ID="LabelFullName" runat="server"></asp:Label>
        <br />
        Employee&#39;s 
        Number: <asp:Label ID="LabelNumber" runat="server"></asp:Label>
        <br />Employee's NRIC
        : <asp:Label ID="LabelNRIC" runat="server"></asp:Label>
        <br />
        Gender : <asp:Label ID="LabelGender" runat="server"></asp:Label>
        <br />
        Date Joined:&nbsp; 
        <asp:Label ID="LabelDateJoined" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
