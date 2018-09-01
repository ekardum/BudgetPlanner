<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prihodi.aspx.cs" Inherits="Financije" MasterPageFile="~/Glavna.Master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <div class="auto-style10 glavni-naslov">
    
        <br />
    
        PRIHODI PO MJESECIMA:<br />
        <br />
        <br />
</div>
        <br />
<table align="center" class="auto-style2">
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Siječanj"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Veljača"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Ožujak"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Travanj"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label6" runat="server" Text="Svibanj"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label7" runat="server" Text="Lipanj"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxSIJ" runat="server" OnTextChanged="TextBoxSIJ_TextChanged" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxSIJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxVELJ" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxVELJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxOZU" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxOZU" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxTRA" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxTRA" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxSVI" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxSVI" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style3">
            <br />
            <asp:TextBox ID="TextBoxLIP" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxLIP" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label8" runat="server" Text="Srpanj"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label9" runat="server" Text="Kolovoz"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label10" runat="server" Text="Rujan"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label11" runat="server" Text="Listopad"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label12" runat="server" Text="Studeni"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Label ID="Label13" runat="server" Text="Prosinac"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxSRP" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxSRP" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxKOL" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBoxKOL" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxRUJ" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBoxRUJ" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxLIS" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBoxLIS" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxSTU" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBoxSTU" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style5">
            <br />
            <asp:TextBox ID="TextBoxPRO" runat="server" Width="100px"></asp:TextBox>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="TextBoxPRO" EnableTheming="True" ErrorMessage="RegularExpressionValidator" ForeColor="#FFB74C" ValidationExpression="^[+]?\d+([.]\d+)?$">Unesite točan format!</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <br />
        <asp:Button ID="ButtonSpremi" runat="server" OnClick="ButtonSpremi_Click" Text="Spremi" />
            <br />
            <asp:Button ID="ButtonOdustani" runat="server" OnClick="Button2_Click" Text="Odustani" Visible="False" />
            </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
</table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourcePrihodi" runat="server" ConnectionString="<%$ ConnectionStrings:RegistracijaConnectionString %>" SelectCommand="SELECT [Sijecanj], [Veljaca], [Ozujak], [Travanj], [Svibanj], [Lipanj], [Srpanj], [Kolovoz], [Rujan], [Listopad], [Studeni], [Prosinac] FROM [Financije] WHERE (([Korisnik] = @Korisnik) AND ([Tip] = 'prihod'))">
            <SelectParameters>
                <asp:SessionParameter Name="Korisnik" SessionField="New" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSourcePrihodi" ForeColor="Black" GridLines="None" Height="102px" HorizontalAlign="Center" Width="1346px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
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
    </div>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
        height: 281px;
    }
    .auto-style3 {
        height: 69px;
    }
    .auto-style4 {
        height: 20px;
    }
    .auto-style5 {
        height: 62px;
    }
        .auto-style6 {
            width: 99%;
            height: 247px;
        }
    .auto-style9 {
        height: 36px;
    }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
