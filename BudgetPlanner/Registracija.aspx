<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/css/bootstrap.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            height: 455px;
            margin-left: 0px;
        }
        .auto-style4 {
            width: 421px;
        }
        .auto-style18 {
            width: 426px;
            text-align: right;
            height: 50px;
        }
        .auto-style19 {
            width: 421px;
            height: 50px;
        }
        .auto-style20 {
            text-align: left;
            height: 50px;
            width: 426px;
        }
        .auto-style21 {
            width: 426px;
            text-align: right;
            height: 51px;
        }
        .auto-style22 {
            width: 421px;
            height: 51px;
        }
        .auto-style23 {
            text-align: left;
            height: 51px;
            width: 426px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            color: #000099;
            font-size: xx-large;
        }
        .auto-style30 {
            width: 426px;
            height: 50px;
        }
        .auto-style31 {
            width: 426px;
        }
        .auto-style32 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style27">
    
        <div>
            <strong><br class="auto-style28" />
            </strong>
            <br />
        </div>
    
        <table class="auto-style1 table-registracija" align="center">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">
                    <span class="auto-style32">
                    <strong>Registracija</strong></span><br />
                    <br /><br />
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Ime:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBoxIme" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxIme" ErrorMessage="Morate unijeti ime!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Prezime:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxPrezime" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPrezime" ErrorMessage="Morate unijeti prezime!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Email:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Morate unijeti e-mail!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Morate unijeti ispravnu e-mail adresu!" ForeColor="#FFB74C" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Korisničko ime:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Morate unijeti korisničko ime!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Lozinka:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Morate unijeti lozinku!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Potvrda lozinke:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxConfirm" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxConfirm" ErrorMessage="Morate potvrditi lozinku!" ForeColor="#FFB74C"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirm" ErrorMessage="Obje lozinke moraju biti iste!" ForeColor="#FFB74C"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style19">
                    <asp:Button ID="ButtonRegistracija" runat="server" OnClick="ButtonRegistracija_Click" Text="Registriraj se" />
                &nbsp;<asp:Button ID="ButtonOdustaniReg" runat="server" OnClick="ButtonOdustaniReg_Click" Text="Odustani" CausesValidation="false" />
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td rowspan="1" class="auto-style31">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
