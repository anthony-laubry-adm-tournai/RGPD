<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="StatGen.aspx.vb" Inherits="RGPD.StatGen" MasterPageFile="~/common.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
    <table>
        <tr>
            <th colspan="12"><asp:Label ID="Label1" runat="server" Text="Statistique générale." Font-Underline="true"></asp:Label></th>
        </tr>
        <tr>
            <td><asp:Label ID="lbNbTrtTot" runat="server" Text="Nombre total de traitements :"></asp:Label></td>
            <td colspan="11"><asp:TextBox ID="tbNbTrtTot" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>
        </tr>

        <asp:Repeater ID="tbServ" EnableViewState="false" runat="server" OnItemDataBound="tbServ_ItemDataBound">
            <ItemTemplate>
                <tr>
                    <td><asp:Label ID="lbService" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="tbNbTrt" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>

                    <td><asp:Label ID="lbNbToModif" runat="server" Text="A modifier :"></asp:Label></td>
                    <td><asp:TextBox ID="tbNbToModif" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>

                    <td><asp:Label ID="lbNbTrtContact" runat="server" Text="A valider par le contact :"></asp:Label></td>
                    <td><asp:TextBox ID="tbNbTrtContact" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>

                    <td><asp:Label ID="lbNbTrtDPD" runat="server" Text="A valider par le DPO :"></asp:Label></td>
                    <td><asp:TextBox ID="tbNbTrtDPD" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>

                    <td><asp:Label ID="lbNbTrtValid" runat="server" Text="Valide :"></asp:Label></td>
                    <td><asp:TextBox ID="tbNbTrtValid" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>

                    <td><asp:Label ID="lbPrct" runat="server" Text="Pourcentage :"></asp:Label></td>
                    <td><asp:TextBox ID="tbPrct" CssClass="arrondi" runat="server" ReadOnly="true" Width="25px"></asp:TextBox></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

