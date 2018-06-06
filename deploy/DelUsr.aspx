<%@ Page Language="vb" enableviewstate="true" AutoEventWireup="false" CodeBehind="DelUsr.aspx.vb" Inherits="RGPD.DelUsr" MasterPageFile="~/common.Master" %>

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
                <asp:Label ID="lbServ" runat="server" Font-Bold="true" Font-Underline="true" Text="Service :"></asp:Label>&nbsp;
            </td>
            <td>
                <asp:DropDownList ID="cmbServ" CssClass="arrondi" AutoPostBack="true" runat="server" OnSelectedIndexChanged="cmbServ_SelectedIndexChanged"></asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lbusr" runat="server" Font-Bold="true" Font-Underline="true" Text="Utilisateur :"></asp:Label>&nbsp;
            </td>

            <td>
                <asp:DropDownList ID="cmbUsr" CssClass="arrondi" runat="server"></asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div class="centrer"><asp:Button ID="btdel" CssClass="bouton" runat="server" Text="Supprimer" OnClick="btdel_Click" /></div>
            </td>
        </tr>
    </table>
</asp:Content>

