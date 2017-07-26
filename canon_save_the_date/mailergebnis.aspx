<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub ergebnis_PreRender(ByVal sender As Object, ByVal e As System.EventArgs)
        '  Dim ergebnis() As String
        ' Dim i As Integer
        'ergebnis = Session.Item("EMail-Liste")
        'For i = 0 To ergebnis.Length - 1
        'ausgabe.Text = ausgabe.Text & ergebnis(i) & vbNewLine
        'Next
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Unbenannte Seite</title>
    <!-- Das neueste kompilierte und minimierte CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optionales Theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Das neueste kompilierte und minimierte JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="ausgabe" runat="server" Text="" OnPreRender="ergebnis_PreRender"></asp:Label>

        <br />
        <div class="container">
        <div class="alert-success">
       <center><h1>SENDEN ERFOLGRICH</h1></center> 
            <center><p class="lead">Die Transaktion wurde erfolgreich abgeschlossen.</p></center>
        <center><p><a class="btn btn-lg btn-success" href="http://canon.gate-internet.de" role="button">Zurück</a></p></center>
      </div>
    </div>
    </form>
</body>
</html>
