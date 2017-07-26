<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sendergbnisse.aspx.vb" Inherits="sendergbnisse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub ergebnis_PreRender(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ergebnis() As String
        Dim i As Integer
        ergebnis = Session.Item("EMail-Liste")
        For i = 0 To ergebnis.Length - 1
            ausgabe.Text = ausgabe.Text & ergebnis(i) & vbNewLine
        Next
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Unbenannte Seite</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="ausgabe" runat="server" Text="" OnPreRender="ergebnis_PreRender"></asp:Label>
    </div>
    </form>
</body>
</html>
