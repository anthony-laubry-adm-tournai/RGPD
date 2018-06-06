<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="ModifGlossaire.aspx.vb" Inherits="RGPD.ModifGlossaire" MasterPageFile="~/common.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
     <script type="text/javascript">
            <%
            If Not String.IsNullOrEmpty(Session("Action")) Then
            If Session("Action").ToString.Equals("ModifGloss") Then
            %>
                window.onload = function () { alert('Modification correctement effectuée.'); };
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
          <style>
              .table{
                padding: 0 0 10px 0;
              }
              .table td{
                padding-bottom: 4px;
	            padding-top:  4px;
              }
              #btValid{
                  padding: 0 0 8em 0;
              }
              #libelleGloss{
                  width: 35%;
              }
              #descGloss{
                  width: 65%;
              }

          </style>
    
    <div id="modifGloss">
              <div id="modifGlossDrop">
                  <table>
                        <tr>
                            <th>
                                <asp:Label ID="lbTypeDonnee" runat="server" Font-Bold="true" Text="Type de donnée :"></asp:Label>
                            </th>
                            <th>
                                <asp:DropDownList ID="cmbTypeDonnee" CssClass="arrondi" AutoPostBack="true" Width="350px" runat="server"></asp:DropDownList>

                            </th>
                        </tr>
                  </table>

              </div>



              <table class="table" id="tableModifGloss">
                        <tr>
                            <th>
                                <asp:Label ID="lbLibelle" runat="server" Text="Libellé"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="Label1" runat="server" Text="Description"></asp:Label>
                            </th>
                        </tr>

                <asp:Repeater ID="tbGloss" EnableViewState="false" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td id="libelleGloss"><asp:TextBox ID="tbLibelle"  CssClass="arrondi" Width="95%" runat="server" Text='<%# Eval("Libelle") %>'></asp:TextBox></td>
                            <td id="descGloss"><asp:TextBox ID="tbTooltip"  CssClass="arrondi" Width="95%" runat="server" Text='<%# Eval("Tooltip") %>'></asp:TextBox></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>       
            </table>

            <div id="btValid">
                <asp:Button ID="btModif" CssClass="bouton" runat="server" Text="Enregistrer" />
            </div>

            
        </div>
    
    
    
</asp:Content>