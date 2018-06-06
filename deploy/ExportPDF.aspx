<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="ExportPDF.aspx.vb" Inherits="RGPD.ExportPDF" MasterPageFile="~/common.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">

    <table id="exportPDF">
        <tr>
            <th style="text-decoration:underline;">Exportation des traitements en PDF</th>
        </tr> 
        <tr>
            <td ><asp:CheckBox ID="chkTous" runat="server" Text="Tous" /><br /><br /></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label1" class="labeltitre" runat="server" Text="Tous les traitements"></asp:Label></td>            
       </tr>
        <tr>
            <td><asp:Button ID="btExportAll" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportAll_Click" /><br /><br /></td>
        </tr>
        <%
            If Utilisateur.UnRole.Libelle.ToLower.Equals("dpd") then
        %>
        <tr>
            <td><asp:Label ID="Label2" class="labeltitre" runat="server" Text="Tous les traitements d'un service"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbService" CssClass="arrondi" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btExportService" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportService_Click" /><br /><br /></td>
        </tr>
        
        <tr>
            <td><asp:Label ID="Label4" class="labeltitre" runat="server" Text="Un traitement"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:DropDownList ID="cmbService_2" CssClass="arrondi" AutoPostBack="true" runat="server" OnSelectedIndexChanged="cmbService_2_SelectedIndexChanged"></asp:DropDownList></td>
            <td><asp:DropDownList ID="cmbTraitement" CssClass="arrondi" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Button ID="btExportUnTrt" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportUnTrt_Click" /><br /><br /></td>
        </tr>

        <%
        ElseIf Utilisateur.UnRole.Libelle.ToLower.Equals("contact") Then
        %>
            <tr>
               <td><asp:Label ID="Label5" class="labeltitre" runat="server" Text="Un traitement"></asp:Label></td> 
            </tr>
            <tr>
                <td><asp:DropDownList ID="cmbTrtCtc" CssClass="arrondi" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Button ID="btExportUnTrtSrv" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportUnTrt_Click" /><br /><br /></td>
            </tr>
        <%
        End If
        %>

        <tr>
            <td>
                <asp:Label ID="Label3" class="labeltitre" runat="server" Text="Tous les traitements entre deux dates"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Calendar ID="dateDeb" runat="server"></asp:Calendar>
            </td>
            <td>
                <asp:Calendar ID="dateFin" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btExportDate" CssClass="bouton" runat="server" Text="Exporter" OnClick="btExportDate_Click" />
            </td>
        </tr>
    </table> 











    <%-- <table id="exportPDF">
        <tr>
            <th style="text-decoration:underline;">Exportation des traitements en PDF</th>
        </tr> 
        <tr>
            <td ><asp:CheckBox ID="chkTous" runat="server" Text="Tous" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Tous les traitements : "></asp:Label></td>            
            <td><asp:Button ID="btExportAll" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportAll_Click" /></td>
       </tr>
        <%
            If Utilisateur.UnRole.Libelle.ToLower.Equals("dpd") then
        %>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Traitements d'un service"></asp:Label></td>
            <td><asp:DropDownList ID="cmbService" CssClass="arrondi" runat="server"></asp:DropDownList></td>
            <td><asp:Button ID="btExportService" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportService_Click" /></td>
        </tr>
        
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Un traitement"></asp:Label></td>
            <td><asp:DropDownList ID="cmbService_2" CssClass="arrondi" AutoPostBack="true" runat="server" OnSelectedIndexChanged="cmbService_2_SelectedIndexChanged"></asp:DropDownList></td>
            <td><asp:DropDownList ID="cmbTraitement" CssClass="arrondi" runat="server"></asp:DropDownList></td>
            <td><asp:Button ID="btExportUnTrt" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportUnTrt_Click" /></td>
        </tr>

        <%
        ElseIf Utilisateur.UnRole.Libelle.ToLower.Equals("contact") Then
        %>
            <tr>
               <td><asp:Label ID="Label5" runat="server" Text="Un traitement :"></asp:Label></td>
                <td><asp:DropDownList ID="cmbTrtCtc" CssClass="arrondi" runat="server"></asp:DropDownList></td>
                 <td><asp:Button ID="btExportUnTrtSrv" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportUnTrt_Click" /></td>
             
            </tr>
        <%
        End If
        %>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Traitements entre deux dates :"></asp:Label>
            </td>
            <td>
                 <asp:Calendar ID="dateDeb" runat="server"></asp:Calendar>
            </td>
            <td>
                <asp:Calendar ID="dateFin" runat="server"></asp:Calendar>
            </td>
            <td>
                <asp:Button ID="btExportDate" CssClass="boutonPDF" runat="server" Text="Exporter" OnClick="btExportDate_Click" />
            </td>
        </tr>
    </table>    --%>
   
</asp:Content>