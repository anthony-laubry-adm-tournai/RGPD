<%@ Page Language="vb" EnableViewState="true" AutoEventWireup="false" CodeBehind="AjServ.aspx.vb" Inherits="RGPD.AjServ" MasterPageFile="~/common.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <style>
        .AjServ
        {
            border-collapse:collapse;
            margin-left:1%;           
        }      
        .centrer
        {
            text-align:center;
        } 
        .AjServ td
        {
            padding-top:5px;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
    <table class="AjServ">
        <tr>
            <asp:Label ID="lbMsg" runat="server" Font-Size="Large" Font-Bold="true" Text=""></asp:Label>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbLibServ" runat="server" Text="Libellé du service :"></asp:Label>&nbsp;
            </td>

            <td>
                <asp:TextBox ID="tbLibServ" CssClass="arrondi" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div class="centrer">
                    <asp:Button ID="btAjServ" CssClass="bouton" runat="server" Text="Ajouter" OnClick="btAjServ_Click"/></div>
            </td>
        </tr>
    </table>
</asp:Content>