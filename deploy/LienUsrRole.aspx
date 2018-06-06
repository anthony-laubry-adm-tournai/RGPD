<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="LienUsrRole.aspx.vb" Inherits="RGPD.LienUsrRole" MasterPageFile="~/common.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
     <script type="text/javascript">
            <%
            If Not String.IsNullOrEmpty(Session("Action")) Then
            If Session("Action").ToString.Equals("AjRole") Then
            %>
                window.onload = function () { alert('Rôle attribué.'); };
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
    <table id="tableUser">
        <tr>
            <td><asp:Label ID="lbLstService" runat="server" Text="Liste des services :" Font-Underline="true" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbLstService" CssClass="arrondi" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cmbLstService_SelectedIndexChanged" ></asp:DropDownList></td>
        </tr>

        <tr>
            <td><asp:Label ID="lbLstUsr" runat="server" Text="Liste des agents par service :" Font-Underline="true" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbLstUsr" CssClass="arrondi" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cmbLstUsr_SelectedIndexChanged" ></asp:DropDownList></td>
        </tr>

        <tr>
            <td><asp:Label ID="lbLstRole" runat="server" Text="Rôle a affecté :" Font-Underline="true" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbLstRole" CssClass="arrondi" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td id="trEnr"><asp:Button ID="btValid" CssClass="bouton" runat="server" Text="Enregistrer" OnClick="btValid_Click"  /></td>
        </tr>      
    </table>
</asp:Content>