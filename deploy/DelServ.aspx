<%@ Page Language="vb" EnableViewState="true" AutoEventWireup="false" CodeBehind="DelServ.aspx.vb" Inherits="RGPD.DelServ" MasterPageFile="~/common.Master"%>

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
            <td colspan="2"><asp:Label ID="lbInfo" runat="server" Font-Size="Large" Text=""></asp:Label></td>
        </tr>
       <tr>
           <td>
               <asp:Label ID="lbAncLib" runat="server" Text="Service à supprimer :"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:DropDownList ID="cmbAncLib" EnableViewState="false" CssClass="arrondi" runat="server"></asp:DropDownList>
           </td>
       </tr>

        <tr>
            <td colspan="2">
                <div class="centrer">
                    <asp:Button ID="btSupServ" CssClass="bouton" runat="server" Text="Supprimer" OnClick="btSupServ_Click"/></div>
            </td>
        </tr>
    </table>
</asp:Content>