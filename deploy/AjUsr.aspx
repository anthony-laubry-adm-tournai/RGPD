<%@ Page Language="vb" EnableViewState="true" AutoEventWireup="false" CodeBehind="AjUsr.aspx.vb" Inherits="RGPD.AjUsr" MasterPageFile="~/common.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <style>
        .AjUsr
        {
            border-collapse:collapse;
            margin-left:1%;           
        }      
        .centrer
        {
            text-align:center;
        } 
        .AjUsr td
        {
            padding-top:5px;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
    <table class="AjUsr">
        <tr>
            <td>
                <asp:Label ID="lbInfo" Font-Bold="true" ForeColor="Red" Font-Size="Large" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>

    <table class="AjUsr">
        <tr>
            <td>
                <asp:Label ID="lbRole" runat="server" Font-Bold="true" Font-Underline="true" Text="Rôle"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:CheckBox ID="chkDpo" runat="server" Text="DPO" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkContact" runat="server" Text="Contact" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkAgent" runat="server" Text="Agent"/>
            </td>
        </tr>
    </table>

    <table class="AjUsr">     
        <tr>
            <td>
                <asp:Label ID="LbDisplayName" runat="server" Font-Bold="true" Font-Underline="true" Text="Nom affiché :"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:TextBox ID="tbDisplayName" CssClass="arrondi" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lbIdConnexion" runat="server" Font-Bold="true" Font-Underline="true" Text="Identifiant de connexion :"></asp:Label>&nbsp;
            </td>

            <td>
                <asp:TextBox ID="tbIdConnexion" CssClass="arrondi" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lbService" runat="server" Font-Bold="true" Font-Underline="true" Text="Sélectionnez le service de l'utilisateur :"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:DropDownList ID="cmbService" CssClass="arrondi" runat="server"></asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td >
                <asp:Label ID="lbMdp" runat="server" Font-Bold="true" Font-Underline="true" Text="Mot de passe :" ToolTip="Attention de ne pas l'oublier car une fois crypté il est impossible de voir le mot de passe en clair."></asp:Label>&nbsp;
            </td>
            <td>
                <asp:TextBox ID="tbMdp" CssClass="arrondi" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div class="centrer"><asp:Button ID="btEnregistrer" CssClass="bouton" runat="server" Text="Enregistrer" OnClick="btEnregistrer_Click" /></div>
            </td>
        </tr>
    </table>
</asp:Content>