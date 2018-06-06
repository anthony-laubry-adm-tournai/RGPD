<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="ControlTrtMesureExistante.aspx.vb" Inherits="RGPD.ControlTrtMesureExistante" MasterPageFile="~/trtCrea.Master" %>

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
                        <asp:LinkButton ID="prcpFond" CssClass="tiretContext" runat="server" OnClick="prcpFond_Click">- Principe Fondamentaux</asp:LinkButton></li>
                        <br />
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
                        <asp:Button ID="btAnnuler" CssClass="bouton" Width="100%" runat="server" Text="&#192; modifier" OnClick="btAnnuler_Click"/>
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
                            <span style="color: #FD4664; ">Mesure existante ou prévue</span><br />
                            <span style="font-size:11px;">Cette partie vous permet de recenser les mesures <br />
                            (existantes ou prévues) contribuant à la sécurité des données.</span>
                </div>


                <asp:Repeater ID="rMesure" runat="server" OnItemCreated="rMesure_ItemCreated">
                    <ItemTemplate>
                        <div style='border:1px solid grey;padding:25px 25px 25px 25px;'>
                            <asp:Label ID="lbTitre" Style="border:1px solid grey;padding-right:15px;" runat="server"></asp:Label><br />
                            <asp:Label ID="lbDescr" runat="server" ForeColor="#3EE095" Text="Description"></asp:Label><br />
                            <asp:TextBox ID="tbDescr" runat="server" TextMode="MultiLine" width="100%" Height="300" ReadOnly="true"></asp:TextBox><br />
                           <li class='accordion' style='list-style-type: none'>
                                <asp:Label ID="lbCom" runat="server" ForeColor="#3EE095" Text="Commentaire ▼"></asp:Label>
                                <li class="panel" style="list-style-type: none"">
                                    <ul style="margin:0;margin-left:-1%;padding:0;">
                                        <li class="accordion" style="list-style-type: none">
                                            <asp:TextBox ID="tbCom" runat="server" TextMode="MultiLine" width="100%" Height="200"></asp:TextBox>
                                        </li>
                                    </ul>
                                </li>
                           </li>
                       </div>
                       <br />
                    </ItemTemplate>
                </asp:Repeater>
            </td>

            <td id="infoTD">
                <table style="float: right; vertical-align: text-top;">
                    <tr>
                        <td>
                            <asp:Repeater ID="rListeMesure" runat="server" EnableViewState="true"  OnItemCreated="rListeMesure_ItemCreated">
                                <ItemTemplate>
                                    <div style="width: 100%;">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbType" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <li class="accordion" style="list-style-type: none">
                                                        <asp:Label ID="lbTitre" runat="server"></asp:Label></li>
                                                    <li class="panel" style="list-style-type: none">
                                                        <ul style="margin: 0px;">
                                                            <li class="accordion" style="list-style-type: none">
                                                                <asp:TextBox ID="tbDescr" runat="server" Style="position: relative; resize: none;" BorderStyle="None" Width="100%" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>