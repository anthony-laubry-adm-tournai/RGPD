<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" CodeBehind="ActiveTrtDpd.aspx.vb" Inherits="RGPD.ActiveTrtDpd" MasterPageFile="~/common.Master" %>

<%@ Import Namespace="RGPD" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBody">
     <div id="divTrier">
        <%--<asp:DropDownList ID="cmbFiltre" CssClass="arrondi" AutoPostBack="true" runat="server" ForeColor="#20CA79"></asp:DropDownList>--%>
        <asp:DropDownList ID="cmbService" CssClass="arrondi" AutoPostBack="true" runat="server" ForeColor="#20CA79"></asp:DropDownList>
    </div>

    <div id="conteneurTr">

        <div id="tableTr">

            <table class="table">
        <thead>
            <tr>
                <th>État</th>
                <th>Nom traitement</th>
                <th>Agent encodeur</th>
                <th>Agent validateur</th>
                <th>Date de création</th>
                <th>Activer</th>
            </tr>
        </thead>
        <tbody>
            <%              
                If ListeTraitement IsNot Nothing Then
                    For Each trt As Traitement In ListeTraitement
                        'If trt.IsActif Then
                        If trt.ToModify Then
                            'couleur rouge
                            If trt.IsOpen Then
                                If DateTime.Now > CDate(trt.DateModif).AddDays(trt.DurConsDonne) Then
                                    Response.Write("<tr><td><div class='modif' title='A modifier'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                                Else
                                    Response.Write("<tr><td><div class='modif' title='A modifier'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Désactiver</a></td></tr>")
                                End If
                                
                            Else
                                If DateTime.Now > CDate(trt.DateModif).AddDays(trt.DurConsDonne) Then
                                    Response.Write("<tr><td><div class='modif' title='A modifier'></div></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.NomTrt & "</td></a><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEncodeur & "</a></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEval & "</a></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                                Else
                                    Response.Write("<tr><td><div class='modif' title='A modifier'></div></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "'>" & trt.NomTrt & "</td></a><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEncodeur & "</a></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEval & "</a></td><td><a href='ModifierTrt.aspx?idTrt=" & trt.Id & "'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                                End If
                                
                            End If
                        ElseIf trt.ToControlContact Then
                            'couleur orange
                            If DateTime.Now > CDate(trt.DateModif).AddDays(trt.DurConsDonne) Then
                                Response.Write("<tr><td><div class='toBeControledContact' title='En attente de validation par le Contact RGPD du service'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            Else
                                Response.Write("<tr><td><div class='toBeControledContact' title='En attente de validation par le Contact RGPD du service'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            End If
                           
                        ElseIf trt.IsValid Then
                            'couleur vert 
                            If DateTime.Now > CDate(trt.DateModif).AddDays(trt.DurConsDonne) Then
                                Response.Write("<tr><td><div class='isValid' title='valide'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            Else
                                Response.Write("<tr><td><div class='isValid' title='valide'></div></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.NomTrt & "</td></a><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEncodeur & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEval & "</a></td><td><a href='VoirTrt.aspx?idTrt=" & trt.Id & "'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            End If
                            
                        ElseIf trt.ToControlDPD Then
                            'couleur jaune
                            If DateTime.Now > CDate(trt.DateModif).AddDays(trt.DurConsDonne) Then
                                Response.Write("<tr><td><div class='toBeControledDPD' title='En attente de validation par le/la DPO'></div></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.NomTrt & "</td></a><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEncodeur & "</a></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.AgEval & "</a></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "' style='color:red;'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            Else
                                Response.Write("<tr><td><div class='toBeControledDPD' title='En attente de validation par le/la DPO'></div></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "'>" & trt.NomTrt & "</td></a><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEncodeur & "</a></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "'>" & trt.AgEval & "</a></td><td><a href='ValidTrt.aspx?idTrt=" & trt.Id & "'>" & trt.DateCrea & "</a></td><td><a href='ActiveTrt.aspx?idTrt=" & trt.Id & "&type=dpd' style='color:green;'>Activer</a></td></tr>")
                            End If
                           
                        End If
                        'End If                        
                    Next
                End If
            %>
        </tbody>
    </table>

        </div>


        <div id="legendeTr">

            <table style="padding-left:15px">
                <tr>
                    <td>
                        <div class='isValid' title='Traitement valide'></div>
                    </td>
                    <td>
                        &nbsp; Validé
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class='modif' title='Traitement à modifier'></div>
                    </td>
                    <td>
                        &nbsp; A modifier
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class='toBeControledContact' title='Traitement en attente de validation par le Contact RGPD du service'></div>
                    </td>
                    <td>
                        &nbsp; En attente de validation - Contact
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class='toBeControledDPD' title='Traitement en attente de validation par le/la DPD'></div>
                    </td>
                    <td>
                        &nbsp; En attente de validation - DPO
                    </td>
                </tr>
            </table>

        </div>

    </div>     
</asp:Content>