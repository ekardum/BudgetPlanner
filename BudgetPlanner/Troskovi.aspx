<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Troskovi.aspx.cs" Inherits="Financije" MasterPageFile="~/Glavna.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <div class="auto-style46 glavni-naslov">
    
        <br />
        TROŠKOVI PO MJESECIMA:</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style39">
    
        <asp:Label ID="Label1" runat="server" Text="Kategorija troškova"></asp:Label>
    
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style40">
        <asp:DropDownList AutoPostBack="true" ID="DropDownListGrupa" runat="server" OnSelectedIndexChanged="DropDownListGrupa_SelectedIndexChanged" Height="27px" Width="153px">
            <asp:ListItem>Hrana</asp:ListItem>
            <asp:ListItem>Izlasci</asp:ListItem>
            <asp:ListItem>Kupovina</asp:ListItem>
            <asp:ListItem>Putovanja</asp:ListItem>
            <asp:ListItem>Kino</asp:ListItem>
            <asp:ListItem>Auto</asp:ListItem>
        </asp:DropDownList>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style41">
            <asp:Label ID="Label2" runat="server" Text="Siječanj"></asp:Label>
            </td>
            <td class="auto-style27">
            <asp:Label ID="Label3" runat="server" Text="Veljača"></asp:Label>
            </td>
            <td class="auto-style27">
            <asp:Label ID="Label4" runat="server" Text="Ožujak"></asp:Label>
            </td>
            <td class="auto-style27">
            <asp:Label ID="Label5" runat="server" Text="Travanj"></asp:Label>
            </td>
            <td class="auto-style27">
            <asp:Label ID="Label6" runat="server" Text="Svibanj"></asp:Label>
            </td>
            <td class="auto-style27">
            <asp:Label ID="Label7" runat="server" Text="Lipanj"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style42">
                <br />
            <asp:TextBox ID="TextBoxSIJ" runat="server" OnTextChanged="TextBoxSIJ_TextChanged" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxSIJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
                <br />
            </td>
            <td class="auto-style28">
                <br />
            <asp:TextBox ID="TextBoxVELJ" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxVELJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                <br />
            <asp:TextBox ID="TextBoxOZU" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxOZU" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                <br />
            <asp:TextBox ID="TextBoxTRA" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxTRA" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                <br />
            <asp:TextBox ID="TextBoxSVI" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxSVI" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
                <br />
            <asp:TextBox ID="TextBoxLIP" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxLIP" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">
            <asp:Label ID="Label8" runat="server" Text="Srpanj"></asp:Label>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label9" runat="server" Text="Kolovoz"></asp:Label>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label10" runat="server" Text="Rujan"></asp:Label>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label11" runat="server" Text="Listopad"></asp:Label>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label12" runat="server" Text="Studeni"></asp:Label>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label13" runat="server" Text="Prosinac"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">
                <br />
            <asp:TextBox ID="TextBoxSRP" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxSRP" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style30">
                <br />
            <asp:TextBox ID="TextBoxKOL" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBoxKOL" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style30">
                <br />
            <asp:TextBox ID="TextBoxRUJ" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBoxRUJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style30">
                <br />
            <asp:TextBox ID="TextBoxLIS" runat="server" CssClass="auto-style2" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBoxLIS" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style30">
                <br />
            <asp:TextBox ID="TextBoxSTU" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBoxSTU" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style30">
                <br />
            <asp:TextBox ID="TextBoxPRO" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="TextBoxPRO" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">
        <asp:Button ID="ButtonSpremiTroskovi" runat="server" OnClick="ButtonSpremi_Click" Text="Spremi" />
&nbsp;<asp:Button ID="ButtonOdustaniTroskovi" runat="server" OnClick="Button2_Click" Text="Odustani" Visible="False" />
            </td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistracijaConnectionString %>" SelectCommand="SELECT [Grupa], [Sijecanj], [Veljaca], [Ozujak], [Travanj], [Svibanj], [Lipanj], [Srpanj], [Kolovoz], [Rujan], [Listopad], [Studeni], [Prosinac] FROM [Financije] WHERE (([Korisnik] = @Korisnik) AND ([Tip] = 'trosak'))" DeleteCommand="DELETE FROM Financije WHERE (Grupa = @grupa) AND (Korisnik = @korisnik)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridViewTroskovi" DefaultValue="" Name="grupa" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="korisnik" SessionField="New" />

            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Korisnik" SessionField="New" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridViewTroskovi" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" Height="205px" HorizontalAlign="Center" Width="1358px" ForeColor="Black" GridLines="None" DataKeyNames="grupa" OnSelectedIndexChanged="GridViewTroskovi_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Grupa" HeaderText="Grupa" SortExpression="Grupa" />
                <asp:BoundField DataField="Sijecanj" HeaderText="Sijecanj" SortExpression="Sijecanj" />
                <asp:BoundField DataField="Veljaca" HeaderText="Veljaca" SortExpression="Veljaca" />
                <asp:BoundField DataField="Ozujak" HeaderText="Ozujak" SortExpression="Ozujak" />
                <asp:BoundField DataField="Travanj" HeaderText="Travanj" SortExpression="Travanj" />
                <asp:BoundField DataField="Svibanj" HeaderText="Svibanj" SortExpression="Svibanj" />
                <asp:BoundField DataField="Lipanj" HeaderText="Lipanj" SortExpression="Lipanj" />
                <asp:BoundField DataField="Srpanj" HeaderText="Srpanj" SortExpression="Srpanj" />
                <asp:BoundField DataField="Kolovoz" HeaderText="Kolovoz" SortExpression="Kolovoz" />
                <asp:BoundField DataField="Rujan" HeaderText="Rujan" SortExpression="Rujan" />
                <asp:BoundField DataField="Listopad" HeaderText="Listopad" SortExpression="Listopad" />
                <asp:BoundField DataField="Studeni" HeaderText="Studeni" SortExpression="Studeni" />
                <asp:BoundField DataField="Prosinac" HeaderText="Prosinac" SortExpression="Prosinac" />
                <asp:CommandField DeleteText="Obriši" ShowDeleteButton="True" />
            </Columns>

            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    <br />
    <br />
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 410px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style25 {
            height: 33px;
            width: 207px;
        }
        .auto-style26 {
            height: 83px;
            width: 207px;
        }
        .auto-style27 {
            width: 207px;
        }
        .auto-style28 {
            height: 70px;
            width: 207px;
        }
        .auto-style29 {
            height: 25px;
            width: 207px;
        }
        .auto-style30 {
            height: 68px;
            width: 207px;
        }
        .auto-style31 {
            height: 120px;
            width: 207px;
        }
        .auto-style39 {
        height: 33px;
        width: 196px;
    }
    .auto-style40 {
        height: 83px;
        width: 196px;
    }
    .auto-style41 {
        width: 196px;
    }
    .auto-style42 {
        height: 70px;
        width: 196px;
    }
    .auto-style43 {
        height: 25px;
        width: 196px;
    }
    .auto-style44 {
        height: 68px;
        width: 196px;
    }
    .auto-style45 {
        height: 120px;
        width: 196px;
    }
        .auto-style46 {
            text-align: center;
        }
    </style>
</asp:Content>

