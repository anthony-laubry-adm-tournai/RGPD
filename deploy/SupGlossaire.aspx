<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="SupGlossaire.aspx.vb" Inherits="RGPD.SupGlossaire" MasterPageFile="~/common.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
          <table>

            <tr>
                <th></th>
                <th class="centrer">
                    <asp:Label ID="lbTypeDonnee" runat="server" Text="Type de données"></asp:Label></th>
                <th>
                    <asp:DropDownList ID="cmbTypeDonnee" CssClass="arrondi" AutoPostBack="true" runat="server"></asp:DropDownList></th>
            </tr>
           
           <asp:Repeater ID="tbGloss" EnableViewState="false" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><asp:CheckBox ID="chkSup" runat="server" /></td>
                            <td><asp:Label ID="lbLibelle" runat="server" Text="Libellé :"></asp:Label>
                            <asp:TextBox ID="tbLibelle" CssClass="arrondi" runat="server" ReadOnly="true" Text='<%# Eval("Libelle") %>'></asp:TextBox></td>
                            <td><asp:Label ID="lbTooltip" runat="server" Text="Tooltip :"></asp:Label>
                            <asp:TextBox ID="tbTooltip" CssClass="arrondi" runat="server"  ReadOnly="true" Text='<%# Eval("Tooltip") %>'></asp:TextBox></td>
                        </tr>
                    </ItemTemplate>                    
                </asp:Repeater>       
            <tr class="centrer">
                <td colspan="3">
                    <asp:Button ID="btSup" CssClass="bouton" runat="server" Text="Supprimer les éléments cochés" /></td>
            </tr>
        </table>
</asp:Content>
