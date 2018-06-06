<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="connection.aspx.vb" Inherits="RGPD.connection" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registre d'identification des traitements de données.</title>
    <link href="css/connection.css" rel="stylesheet" type="text/css"/>
    <script src="http://codepen.io/assets/libs/fullpage/jquery.js"></script>
    <script src="js/prefixfree.min.js"></script>
</head>
<body >
    <form id="form1" runat="server">
       
    <div id="content">
        <div class="grad"></div>
        <header class="header">
            <div>Gestion du registre <br />d'identification des traitements <br /><br /></div>
        </header>
        <div class="body"></div>
        <br />
           <div id ="LogonScreen" class="login" runat="server">
                <asp:Label CssClass="centrerLabelNom" ID="Label1" runat="server" Text="Nom d'utilisateur"></asp:Label><br />
                <asp:TextBox CssClass="usrName" ID="txtNomUsr" runat="server"></asp:TextBox><br />
                <asp:Label CssClass="centrerLabelMdp" ID="Label2" runat="server" Text="Mot de passe"></asp:Label><br />
                <asp:TextBox CssClass="usrMdp" ID="txtMdp" runat="server" Text="Mot de passe" TextMode="Password"></asp:TextBox>
                <br />
                <%
               If Not String.IsNullOrEmpty(Session("Message").ToString) Then
                   failAuth.ForeColor = Drawing.Color.White
                   failAuth.Text = Session("Message")
                   Session("Message") = String.Empty
               End If
                %>
                <asp:Label ID="failAuth" runat="server" Text=""></asp:Label>
                <asp:Button CssClass="bouton" ID="btCnx" runat="server" Text="Valider"/>
            </div> 
        <div class="coord">
            <asp:Label ID="lbCoordCollege" runat="server" Text="Collège : "></asp:Label><br />
            <asp:Label ID="lbCoordDPO" runat="server" Text="DPO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: "></asp:Label>
        </div> 
    </div>
    </form>
  
</body>
</html>
