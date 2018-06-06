<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="ValidTrtModifNonDesire.aspx.vb" Inherits="RGPD.ValidTrtModifNonDesire" MasterPageFile="~/trtCrea.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody" EnableViewState="true">
    <style>
        #content {      
            margin-left: 0%;
            width: 100%;
            padding-left: 0px;
        }
        ul{
            -webkit-padding-start: 1%;
            padding-top: 1%;
            width: 100%;
        }
        li{
            padding-bottom: 3px;
        }
        .tiretContext{
            border-radius:20px;
            padding: 2px 10px 2px 0px;
        }
        .tiretRisque{
            border-radius:20px;
            padding: 2px 10px 2px 0px;
        }
        .tiretContext:hover{
            background-color: #3EE095;
            color: white;
            border-radius:20px;
            padding: 2px 10px 2px 0px;
        }
        .tiretRisque:hover{
            background-color: #FD4664;
            color: white;
            border-radius:20px;
            padding: 2px 10px 2px 0px;
        }
        #conteneurDiv{
         width: 100%;
         margin: auto;
        }
        #gaucheDiv{
         width: 45%;
         position: relative;
         float: left;
        }
        #droiteDiv{
         width: 45%;
         position: relative;
         float: left;
        }
        .nomTrt{
            font-weight:bold;
            font-size:18px;
            border:none;
            border-radius: 20px;
            color: #091C69;
            padding: 5px 5px 5px 5px;
        }
        .donnee:hover{
            background-color: #FD4664;
            color: white;
            border-radius:20px;
            padding: 2px 5px 2px 5px;
        }
        .donnee{
            border-radius:20px;
            padding: 2px 5px 2px 5px;
        }
        input:hover + label{
            color: white;
            background-color: #FD4664;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
        input:checked + label{
            color: white;
            background-color: #FD4664;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
        input + label{
            color: black;
            background-color : white;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
    </style>


    <table style="width: 100%;">
        <tr>
            <td id="menuTD" style="position:fixed;vertical-align: top;">
                <ul>
                    <li>
                        <asp:Label ID="lbNomTrt" CssClass="nomTrt" runat="server" Text="Label"></asp:Label>
                        <hr />
                        <br/>
                    </li>
                    <li>
                        <div style="color: #3EE095; font-weight: bold;">CONTEXTE</div>
                        <hr />
                        <asp:LinkButton ID="prcpFond" CssClass="tiretContext" runat="server" OnClick="prcpFond_Click">- Principe Fondamentaux</asp:LinkButton>
                        <br /><br />
                    </li>
                        
                    <li>
                        <div style="color: #FD4664; font-weight: bold;">RISQUES</div>
                        <hr />
                        <asp:LinkButton ID="MsrExi" CssClass="tiretRisque" runat="server" OnClick="MsrExi_Click">- Mesure existante ou prévue</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="accIllDonn" CssClass="tiretRisque" runat="server" OnClick="accIllDonn_Click">- Accès illégitime à des données</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="modifNonDesire" CssClass="tiretRisque" runat="server" OnClick="modifNonDesire_Click">- Modification non désirées de données</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="dispDonnee" CssClass="tiretRisque" runat="server" OnClick="dispDonnee_Click">- Disparition de données</asp:LinkButton>  
                    </li>

                    <li>
                        <hr />
                        <asp:Button ID="btAnnuler" CssClass="bouton" Width="100%" runat="server" Text="&#192; modifier" OnClick="btAnnuler_Click" />
                    </li>
                    <li>
                        <asp:Button ID="btValider" CssClass="bouton" Width="100%" runat="server" Text="Est valide" OnClick="btValider_Click" />
                    </li>
                </ul>
                <hr />
                <ul>
                    <li style="color: #3EE095; font-weight: bold;">Pièces jointes</li>
                    <li>
                        <asp:Repeater ID="rFichier" runat="server" OnItemDataBound="rFichier_ItemDataBound">
                                <ItemTemplate>
                                    <div id="conteneurPiece">
                                        <div id="gauchePiece">
                                            <asp:HyperLink ID="hlFichier" CssClass="pieceVoir" runat="server" ><asp:Label ID="lbNomFichier" runat="server" Text=""></asp:Label></asp:HyperLink>
                                        </div>
                                        <div id="droitePiece">
                                           
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                    </li>
                </ul>
            </td>

            <td id="bodyTD" style="vertical-align: top;">
                 <div style="border: 1px solid grey; text-align: center; margin-top: 1%; margin-bottom: 10px; padding-top: 10px; padding-bottom: 10px;">
                    <span style="color: #FD4664; font-weight: bold;">Risques</span><br />
                            <span style="font-size:11px;">Cette section vous permet d'apprécier les risques sur la vie privée, <br />
                            compte tenu des mesures existantes ou prévues.</span><br />
                            <span style="color: #FD4664; ">MODIFICATION NON DÉSIRÉES DE DONNÉES</span><br />
                            <span style="font-size:11px;">Analysez les causes et conséquences d'une modification non désirée de   <br />
                            données, et estimez sa gravité et sa vraisemblance.</span>
                </div>

                <br />
                 <asp:Label ID="lbMenace" runat="server" Style="font-weight:bold;">Quelles sont les principales <span style="color: #FD4664;">menaces</span> qui pourraient permettre la réalisation du risque ?</asp:Label>
                 <br />
                 <div style="padding-left: 5%; padding-top: 10px;">
                     <asp:Repeater ID="_rMenace" runat="server" OnItemDataBound="rMenace_ItemDataBound">
                     <ItemTemplate>
                         <asp:CheckBox ID="chkMenace" CssClass="donnee" runat="server" />
                         <asp:Image ID="imgTooltip" runat="server" /><br />
                     </ItemTemplate>
                 </asp:Repeater>
                 <br />
                 </div>

                 <asp:Label ID="lbSource" runat="server" Style="font-weight:bold;">Quelles <span style="color: #FD4664;">sources</span> de risques pourraient-elles en être à l'origine ?</asp:Label>
                 <br />
                 <div style="padding-left: 5%; padding-top: 10px;">
                     <asp:Repeater ID="_rSource" runat="server" OnItemDataBound="rSource_ItemDataBound">
                     <ItemTemplate>
                         <asp:CheckBox ID="chkSource" runat="server" CssClass="donnee" />
                         <asp:Image ID="imgTooltip" runat="server" /><br />
                     </ItemTemplate>
                 </asp:Repeater>
                 <br />
                 </div>

                 <asp:Label ID="lbMesure" runat="server" Style="font-weight:bold;">Quelles sont les <span style="color: #FD4664;">mesures</span>, parmi celles identifiées, qui contribuent à traiter le risque ?</asp:Label>
                <br />
                 <div style="padding-left: 5%; padding-top: 10px;">
                     <asp:Repeater ID="_rMesure" runat="server" OnItemDataBound="rMesure_ItemDataBound">
                     <ItemTemplate>
                          <asp:CheckBox ID="chkMesure" runat="server" CssClass="donnee" />
                         <asp:Image ID="imgTooltip" runat="server" /><br />
                     </ItemTemplate>
                 </asp:Repeater>
                 <br />
                 </div>

                 <asp:Label ID="lbGrav" runat="server" Style="font-weight:bold;">Comment estimez-vous la <span style="color: #FD4664;">gravité du risque</span>, notamment en fonction des impacts potentiels et des mesures prévues ?</asp:Label>
                 <br />
                 <div style="padding-left: 5%; padding-top: 10px;">
                    <asp:DropDownList ID="cmbGravite" CssClass="arrondi" runat="server"></asp:DropDownList>
                    <br /><br />
                 </div>

                 <asp:Label ID="lbVrai" runat="server" Style="font-weight:bold;">Comment estimez-vous la <span style="color: #FD4664;">vraisemblance du risque</span>, notamment au regard des menaces, des sources de risques et des mesures prévues ?</asp:Label>
                <br />
                 <div style="padding-left: 5%; padding-top: 10px;">
                      <asp:DropDownList ID="cmbVraisemblance" CssClass="arrondi" runat="server"></asp:DropDownList>
                     <br /><br />
                </div>
             </td>

            <td id="infoTD">
                
            </td>
        </tr>
    </table> 
</asp:Content>