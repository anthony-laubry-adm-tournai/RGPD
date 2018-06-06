<%@ Page Language="vb" EnableViewState="true" AutoEventWireup="false" CodeBehind="ModServ.aspx.vb" Inherits="RGPD.ModServ" MasterPageFile="~/common.Master" %>

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
               <asp:Label ID="lbAncLib" runat="server" Text="Ancien libellé :"></asp:Label>&nbsp;
           </td>
           <td>
               <asp:DropDownList ID="cmbAncLib" EnableViewState="false" CssClass="arrondi" runat="server"></asp:DropDownList>
           </td>
       </tr>

       <tr>
           <td>
               <asp:Label ID="lbNouvLib" runat="server" Text="Nouveau libellé :"></asp:Label> &nbsp;
           </td>
           <td>
               <asp:TextBox ID="tbNouvLib" EnableViewState="false" CssClass="arrondi" runat="server"></asp:TextBox>
           </td>
       </tr>

        <tr>
            <td colspan="2">
                <div class="centrer">
                    <asp:Button ID="btModServ" CssClass="bouton" runat="server" Text="Modifier" OnClick="btModServ_Click"/></div>
            </td>
        </tr>
    </table>
</asp:Content>