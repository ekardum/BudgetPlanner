<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/css/login.css" type="text/css" />
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
            color: #000099;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 29%;
            height: 338px;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 34px;
            width: 271px;
            text-align: center;
        }
        .auto-style10 {
            width: 271px;
            text-align: center;
        }
        .auto-style11 {
            height: 34px;
            width: 271px;
            text-align: center;
            font-size: xx-large;
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><span class="auto-style6">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        </strong></div>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style11">
                    <strong>Login<br /><br />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLoginUser" ErrorMessage="Morate unijeti korisničko ime!" ForeColor="#F96B19" OnDataBinding="ButtonLogin_Click"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBoxLoginUser" placeholder="Korisničko ime" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLoginPassword" ErrorMessage="Morate unijeti lozinku!" ForeColor="#F96B19" OnDataBinding="ButtonLogin_Click"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBoxLoginPassword" placeholder="Lozinka" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
    
        <strong>&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="auto-style10">
    
        <strong><asp:Button ID="ButtonRegistrirajSe" runat="server" BackColor="White" EnableTheming="True" ForeColor="#43A047" OnClick="ButtonRegistrirajSe_Click" Text="Registrirajte se" BorderStyle="None" CausesValidation="False" />
        </strong>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
