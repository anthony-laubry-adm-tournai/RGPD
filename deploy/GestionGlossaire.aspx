<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="GestionGlossaire.aspx.vb" Inherits="RGPD.GestionGlossaire" MasterPageFile="~/common.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
            <%
            If Not String.IsNullOrEmpty(Session("Action")) Then
            If Session("Action").ToString.Equals("AjoutGloss") Then
            %>
                window.onload = function () { alert('Ajout correctement effectué.'); };
            <%
        End If
    End If
        Session("Action") = nothing
            %>
        </script>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
    <div id="formulaire" class="centrer">
        <table id="ajoutTrt" runat="server">

            <tr>
                <td>
                    <asp:Label ID="lbTypeDonnee" runat="server" Font-Bold="true" Text="Type de donnée :"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="cmbTypeDonnee" CssClass="arrondi" Width="350px" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbNomDonnee" runat="server" Font-Bold="true" Text="Nom de la donnée :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="tbNomDonnee" CssClass="arrondi" Width="340px" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbDescr" runat="server" Font-Bold="true" Text="Description (optionnel) :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="tbDescr" CssClass="arrondi" Width="340px" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btAjout" CssClass="bouton" runat="server" Text="Enregistrer" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
