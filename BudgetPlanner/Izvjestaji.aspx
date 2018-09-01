<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Izvjestaji.aspx.cs" Inherits="Izvjestaji" MasterPageFile="~/Glavna.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <br />
<br />
<table align="center" class="auto-style10 godisnji-izvjestaji">
    <tr>
        <td class="auto-style11">
    
        <asp:Label ID="Label1" runat="server" Text="Prosječni mjesečni prihodi:"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBoxProsjecniMjesecni" runat="server" OnInit="TextBox1_TextChanged" OnTextChanged="TextBox1_TextChanged1" ReadOnly="True" Width="100px"></asp:TextBox>
    
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Maksimalni mjesečni prihodi:</td>
        <td>
            <asp:TextBox ID="TextBoxMaksimalni" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Minimalni mjesečni prihodi:</td>
        <td>
            <asp:TextBox ID="TextBoxMinimalni" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Ukupni prihodi u godini dana:</td>
        <td>
            <asp:TextBox ID="TextBoxUkupniPrihodi" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Prosječna mjesečna potrošnja:</td>
        <td>
            <asp:TextBox ID="TextBoxProsjecnjaPotrosnja" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Maksimalna mjesečna potrošnja u godini dana:</td>
        <td>
            <asp:TextBox ID="TextBoxMaksimalnaPotrosnja" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Minimalna potrošnja u godini dana:</td>
        <td>
            <asp:TextBox ID="TextBoxMinimalnaPotrosnja" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Ukupna mjesečna potrošnja u godini dana:</td>
        <td>
            <asp:TextBox ID="TextBoxUkupnaPotrosnja" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
            kn</td>
    </tr>
    <tr>
        <td class="auto-style11">Kategorija koja najviše sudjeluje u potrošnji:</td>
        <td>
            <asp:TextBox ID="TextBoxNajvecaKategorija" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Kategorija koja najmanje sudjeluje u potrošnji:</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBoxNajmanjaKategorija" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            <br />
            <br />
            <br />
            <asp:Label ID="LabelOdnosNaslov" runat="server" Text="Odnos ukupnih godišnjih prihoda i troškova:"></asp:Label>
            <br />
        </td>
        <td class="auto-style13">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><asp:Label ID="LabelOdnos" runat="server"></asp:Label>
        </td>
        <td class="auto-style13">
            &nbsp;</td>
    </tr>
</table>
    <p class="auto-style9">
    
        &nbsp;</p>
    <p class="auto-style9">
            &nbsp;</p>
    <p>
            <asp:TextBox ID="TextBoxOdnosi" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBoxOdnosi2" runat="server" Visible="False"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style9 {
            text-align: left;
        }
    .auto-style10 {
        width: 57%;
        height: 587px;
    }
    .auto-style11 {
        width: 406px;
    }
        .auto-style12 {
            width: 406px;
            height: 59px;
        }
        .auto-style13 {
            height: 59px;
        }
        .auto-style14 {
            width: 406px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
    </style>
</asp:Content>
