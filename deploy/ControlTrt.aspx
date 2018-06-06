<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ControlTrt.aspx.vb" Inherits="RGPD.ControlTrt" MasterPageFile="~/trtCrea.Master" %>

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
        .donnee:hover{
            background-color: #7eebb8;
            color: white;
            border-radius:20px;
            padding: 2px 5px 2px 5px;
        }
        .donnee{
            border-radius:20px;
            padding: 2px 5px 2px 5px;
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
        input:hover + label{
            color: white;
            background-color: #7eebb8;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
        input:checked + label{
            color: white;
            background-color: #7eebb8;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
        input + label{
            color: black;
            background-color : white;
            border-radius:20px;
            padding: 0px 5px 0px 5px;
        }
        #conteneurPiece{
         width: 100%;
         margin: auto;
        }
        #gauchePiece{
         width: 80%;
         position: relative;
         float: left;
        }
        #droitePiece{
         width: 15%;
         position: relative;
         float: left;
         /*padding-right: 2%;*/
        }
    </style>


    <table style="width: 100%;">
        <tr>
            <td id="menuTD" style="position:fixed;vertical-align: top;">
                <ul>
                    <li>
                        <asp:TextBox ID="tbNomTrt" CssClass="nomTrt" runat="server"></asp:TextBox>
                        <hr />
                        <br/>
                    </li>
                    <li>
                        <div style="color: #3EE095; font-weight: bold;">CONTEXTE</div>
                        <hr />
                        <asp:LinkButton ID="prcpFond" CssClass="tiretContext" runat="server" OnClick="prcpFond_Click">- Principe Fondamentaux</asp:LinkButton>
                        <br/><br/>
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


            <td id="bodyTD">
                <div style="border: 1px solid grey; text-align: center; margin-top: 1%; margin-bottom: 1%; padding-top: 10px;">
                    <span style="color: #3EE095; font-weight: bold;">Principes fondamentaux</span><br />
                    <p>Cette section vous permet de bâtir le dispositif de conformité aux principes de protection de la vie privée.</p>
                </div>


                <table style="width:100%;">
                    <tr>
                        <th style="padding-bottom: 10px;">
                            <asp:Label ID="lbChkDonnePers" runat="server"></asp:Label></th>
                        <th style="padding-bottom: 10px;">
                            <asp:Label ID="lbChkDonneSens" runat="server"></asp:Label></th>
                    </tr>
                    <tr>
                        <td style="padding-left: 5%">
                            <asp:Repeater ID="rDonneePers" runat="server" OnItemDataBound="rDonneSens_ItemDataBound">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkDonnee" CssClass="donnee" runat="server"   />
                                    <asp:Image ID="imgTooltip" runat="server" /><br />
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                        <td style="vertical-align: top;padding-left: 5%;">
                            <asp:Repeater ID="rDonneSens" runat="server" OnItemDataBound="rDonneSens_ItemDataBound">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkDonnee" CssClass="donnee" runat="server" />
                                    <asp:Image ID="imgTooltip" runat="server" /><br />
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>

                    <tr>
                        <th style="padding-bottom: 10px; padding-top: 30px;">
                            <asp:Label ID="lbSDD" runat="server" Font-Underline="true"></asp:Label></th>
                    </tr>
                    <tr>
                        <td style="padding-left: 5%">
                            <asp:Repeater ID="rSDD" runat="server" OnItemDataBound="rSDD_ItemDataBound">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSDD" CssClass="donnee" runat="server" />
                                    <asp:Image ID="imgTooltip" runat="server" /><br />
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding-bottom: 10px; padding-top: 30px;padding-left: 15%;">
                            <asp:Label ID="lbPersCon" runat="server" Text="Personne concernée :" Font-Bold="true"></asp:Label>
                        </td>
                        <td style="padding-bottom: 10px; padding-top: 30px;">
                            <asp:DropDownList ID="cmbPersCon" CssClass="arrondi" runat="server"></asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding-bottom: 10px; padding-top: 10px;padding-left: 15%;">
                            <asp:Label ID="lbDurCon" runat="server" Text="Durée de conservation des données" Font-Bold="true"></asp:Label></td>
                        <td style="padding-bottom: 10px; padding-top: 10px">
                            <asp:DropDownList ID="cmbDurCon" CssClass="arrondi" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 10px; padding-top: 10px;padding-left: 15%;">
                            <asp:Label ID="lbLegit" runat="server" Text="Légitimation" Font-Bold="true"></asp:Label></td>
                        <td style="padding-bottom: 10px; padding-top: 10px">
                            <asp:DropDownList ID="cmbLegitimation" CssClass="arrondi" runat="server"></asp:DropDownList></td>
                    </tr>

                    <tr>
                        <td style="padding-bottom: 10px; padding-top: 10px;padding-left: 15%;">
                            <asp:Label ID="lbFinalite" runat="server" Font-Bold="true"></asp:Label></td>
                        <td style="padding-bottom: 10px; padding-top: 10px">
                            <asp:DropDownList ID="cmbFinalite" CssClass="arrondi" runat="server"></asp:DropDownList></td>
                    </tr>

                    <tr>
                        <td style="padding-bottom: 40px; padding-top: 10px;padding-left: 15%;">
                            <asp:Label ID="lbDonnExMAJ" runat="server" Text="Les données sont-elles exactes et tenues à jours ?" Font-Bold="true"></asp:Label></td>
                        <td style="padding-bottom: 40px; padding-top: 10px">
                            <asp:RadioButton ID="rbOui" runat="server" Text="Oui" GroupName="ouinon" /><asp:RadioButton ID="rbNon" runat="server" Text="Non" GroupName="ouinon" /></td>
                    </tr>

                </table>
                    <div style="padding-left:5%;">
                        <asp:Label ID="Label1" runat="server" Text="Expliquez la manière de gestion de la sous-traitance" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="tbGestionSousTrai" runat="server" TextMode="MultiLine" Width="90%" Height="200px"></asp:TextBox><br /><br />
                    </div>

                    <div style="padding-left:5%;">
                        <asp:Label ID="lbCommentaire" runat="server" Text="Expliquez en quoi chaque donnée collectée est nécessaire (principe de proporttionnalité)" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="rtbCommentaire" CssClass="arrondi" runat="server" TextMode="MultiLine" Width="90%" Height="200px"></asp:TextBox><br /><br />
                    </div>
                        
                <div id="conteneurDiv" style="padding-left:5%;">

                    <div id="gaucheDiv">
                        <asp:Label ID="lbComContact" runat="server" Text="Commentaire Contact" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="rtbComContact" CssClass="arrondi" runat="server" TextMode="MultiLine" Width="90%" Height="200px"></asp:TextBox>
                    </div>

                    <div id="droiteDiv">
                        <asp:Label ID="lbComDPD" runat="server" Text="Commentaire DPD" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="rtbComDPD" CssClass="arrondi" runat="server" TextMode="MultiLine" Width="90%" Height="200px"></asp:TextBox>
                    </div>

                </div>     
            </td>


            <td id="infoTD" style="vertical-align: top;">
                <table style="padding-top: 25px; width: 100%;">
                        <tr>
                            <td>
                                <asp:Label ID="lbDateCrea" CssClass="lbinfoTrt" runat="server" Text="Date de création"></asp:Label><br />
                                <asp:TextBox ID="tbDateCrea" CssClass="infoTrt" runat="server" ReadOnly="True" TextMode="DateTime"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbDateModif" CssClass="lbinfoTrt" runat="server" Text="Date de modification" Font-Bold="true" Width="75%"></asp:Label><br />
                                <asp:TextBox ID="tbDateModif" CssClass="infoTrt" runat="server" ReadOnly="true" Width="75%"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbAgEncodeur" CssClass="lbinfoTrt" runat="server" Text="Agent encodeur" Font-Bold="true" Width="75%"></asp:Label><br />
                                <asp:TextBox ID="tbAgEncodeur" CssClass="infoTrt" runat="server" ReadOnly="true" Width="75%"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbAgEval" CssClass="lbinfoTrt" runat="server" Text="Contact" Font-Bold="true" Width="75%"></asp:Label><br />
                                <asp:TextBox ID="tbAgEval" CssClass="infoTrt" runat="server" ReadOnly="true" Width="75%"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbAgVali" CssClass="lbinfoTrt" runat="server" Text="DPO" Font-Bold="true" Width="75%"></asp:Label><br />
                                <asp:TextBox ID="tbAgVali" CssClass="infoTrt" runat="server" ReadOnly="true" Width="75%"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                </table>
            </td>

        </tr>
    </table>
</asp:Content>