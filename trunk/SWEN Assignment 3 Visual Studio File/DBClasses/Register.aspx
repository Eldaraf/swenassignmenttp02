<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 82%;
            font-family: Calibri;
        }
        .style2
        {
            width: 132px;
        }
        .style3
        {
            font-size: x-large;
            font-family: Calibri;
        }
        .style4
        {
            width: 132px;
            height: 23px;
        }
        .style5
        {
            height: 23px;
            width: 699px;
        }
        .style6
        {
            width: 699px;
        }
        .style7
        {
            width: 132px;
            height: 20px;
        }
        .style8
        {
            width: 699px;
            height: 20px;
        }
        .style9
        {
            width: 132px;
            height: 42px;
        }
        .style10
        {
            width: 699px;
            height: 42px;
        }
        .style11
        {
            width: 36%;
            height: 9px;
        }
        .style13
        {
            width: 320px;
            height: 320px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="style3">Delonix Regia Hotel Account Registration 
        Page</span><table class="style11">
            <tr>
                <td>
                    <img class="style13" 
                        src="file:///C:/Users/1101387G/Desktop/my%20WDAD/wheelchair.jpg" />&nbsp;</td>
            </tr>
        </table>
        </strong>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Username :</td>
                <td class="style6">
                    <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FieldValidator1" runat="server" 
                        ErrorMessage="Username is required" ControlToValidate="UserNameTextBox" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password :</td>
                <td class="style6">
                    <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="retypepassword" ControlToValidate="passwordTextBox" Display="Dynamic" 
                        ErrorMessage="passwords are not identical"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="passwordTextBox" Display="Dynamic" 
                        ErrorMessage="password has not been filled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Retype Password:&nbsp; </td>
                <td class="style8">
                    <asp:TextBox ID="Retypepassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Text in this box must be identical to the password box" 
                        ControlToValidate="retypepassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee&#39;s
                    <br />
                    Full Name :</td>
                <td class="style6">
                    <asp:TextBox ID="FullNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="FullNameTextBox" ErrorMessage="Full name box is empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee First Name:</td>
                <td class="style6">
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="FirstNameTextBox" ErrorMessage="First name box is empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee Last Name:</td>
                <td class="style6">
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="LastNameTextBox" ErrorMessage="Last name box is empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee&#39;s<br />
                    Number :</td>
                <td class="style6"> 
                    <asp:TextBox ID="Employeenumbertextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Employee's number must be filled " 
                        ControlToValidate="Employeenumbertextbox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Employee&#39;s<br />
                    <span lang="EN-US" style="font-family:&quot;sans-serif&quot;">NRIC</span>:</td>
                <td class="style10">
                    <asp:TextBox ID="NRICTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        BorderStyle="None" ErrorMessage="Employee's IC must be filled"
                        ControlToValidate="NRICTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style4">
                    Gender :</td>
                <td class="style5">
                    <asp:RadioButtonList ID="GenderRadioButtonList" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Date Joined :</td>
                <td class="style5">
                    <asp:DropDownList ID="DDLDay" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DDLMon" runat="server">
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>Mar</asp:ListItem>
                        <asp:ListItem>apr</asp:ListItem>
                        <asp:ListItem>may</asp:ListItem>
                        <asp:ListItem>jun</asp:ListItem>
                        <asp:ListItem>jul</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TbxYear" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TbxYear" Display="Dynamic" ErrorMessage="Invalid year" 
                        MaximumValue="2013" MinimumValue="2000"></asp:RangeValidator>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Button ID="BtnReg" runat="server" Text="Register" onclick="BtnReg_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="63px" 
        onclick="Button1_Click" />
    <br />
    <br />
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HomepageLink" runat="server" 
        NavigateUrl="~/UsersControl.aspx">Return to Users Control Page</asp:HyperLink>
 
    </form>
</body>
</html>
