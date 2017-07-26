<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text, vorname, nachname, anrede, email, passwort, titel As String
        Dim liste(GridView1.Rows.Count - 1) As String
        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            titel = Trim(GridView1.Rows(i).Cells(0).Text)
            anrede = Trim(GridView1.Rows(i).Cells(1).Text)
            vorname = Trim(GridView1.Rows(i).Cells(2).Text)
            nachname = Trim(GridView1.Rows(i).Cells(3).Text)
            email = Trim(GridView1.Rows(i).Cells(4).Text)
            passwort = Trim(GridView1.Rows(i).Cells(5).Text)

            Dim text_anrede As String = ""
            text = ""
            Dim plaintext As String = ""


            Dim mailsub As String
            mailsub = "TKE Sommerfest 2016 – Deine Einladung"
            text = text & "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">  "
            text = text & "<html xmlns=""http://www.w3.org/1999/xhtml"">"
            text = text & "    <head>"
            text = text & "        <title></title>"
            text = text & "        <meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"" />"
            text = text & "    </head>"
            text = text & "    <body style=""font-family: Arial; font-size: 10pt; color: #000000;"">"
            text = text & "        <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 12pt; vertical-align: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
            text = text & "            <tr>"
            text = text & "                <td>"
            text = text & "                    <table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"">"
            text = text & "                        <tr style=""width: 600px; height: 182px; background-color: #ffffff;"">"
            text = text & "                            <td style=""width: 88px; height: 182px; vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/oben_links.jpg""  border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                            <td style=""width: 424px; height: 182px; vertical-align: top;"">"
            text = text & "                                 <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/oben.jpg""  border=""0"" alt="""" />"
            text = text & "                                        </td>"
            text = text & "                            <td style=""width: 88px; height: 182px; vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/oben_rechts.jpg"" border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                         </tr>"


            text = text & "                        <tr style=""width: 600px;  background-color: #ffffff;"">"
            text = text & "                            <td style=""width: 90px;  vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/links.jpg""  border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                            <td style=""width: 420px; vertical-align: center; "">"

            If anrede = "Frau" Then
                text = text & "<p style=""color:#004894;font-size:14pt;text-align:center;""><b>Liebe " & vorname & ",</b></p>"
                text_anrede = "Liebe " & vorname & ","
            Else
                text = text & "<p style=""color:#004894;font-size:14pt;text-align:center;""><b>Lieber " & vorname & ",</b></p>"
                text_anrede = "Lieber " & vorname & ","
            End If

            text = text & "                                            <p style=""text-align:center;"">"
            text = text & "                                                am 16. September 2016 ist es soweit!<br />Wir sagen: Herzlich willkommen zum diesjährigen<br />TKE Sommerfest."
            text = text & "                                            </p>"
            text = text & "                                            <p style=""text-align:center;"">"
            text = text & "                                                Sei dabei!"
            text = text & "                                            </p>"
            text = text & "                                            <p style=""text-align:center;"">"
            text = text & "                                                Bis zum <b>02. September 2016</b> hast Du die Möglichkeit,<br />Dich mit Klick auf eines der unten stehenden Felder<br />verbindlich zum Sommerfest an- oder abzumelden."
            text = text & "                                            </p>"
            text = text & "<div style=""text-align:center;""><a href=""https://pathfinder2017.vodafone-managementletter.de/?id=" & passwort & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_zur_Anmeldung.jpg"" alt="""" border=""0"" /></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""https://pathfinder2017.vodafone-managementletter.de/Absage.aspx?id=" & passwort & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_zur_Abmeldung.jpg"" alt="""" border=""0"" /></a></div>"
            text = text & "<p style=""text-align:center;"">"
            text = text & "Wir freuen uns auf Dich!"
            text = text & "</p>"
            text = text & "<p style=""color:#004894;font-weight:bold;font-size:14pt;text-align:center;"">"
            text = text & "Dein Festausschuss"
            text = text & "</p>"

            text = text & "                                        </td>"
            text = text & "                            <td style=""width: 90px; vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/rechts.jpg""  border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                         </tr>"


            text = text & "                        <tr style=""width: 600px; height: 252px; background-color: #ffffff;"">"
            text = text & "                            <td style=""width: 88px; height: 252px; vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/unten_links.jpg""  border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                            <td style=""width: 424px; height: 252px; vertical-align: top;"">"
            text = text & "                                 <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/unten.jpg""  border=""0"" alt="""" />"
            text = text & "                                        </td>"
            text = text & "                            <td style=""width: 88px; height: 252px; vertical-align: top;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/unten_rechts.jpg""  border=""0"" alt="""" />"
            text = text & "                            </td>"
            text = text & "                         </tr>"



            text = text & "                    </table>"

            text = text & "                </td>"
            text = text & "            </tr>"
            text = text & "        </table>"
            text = text & "    </body>"
            text = text & "</html>"

            plaintext = text_anrede & vbNewLine & vbNewLine
            plaintext = plaintext & "am 16. September 2016 ist es soweit!" & vbNewLine & "Wir sagen: Herzlich willkommen zum diesjährigen" & vbNewLine & "TKE Sommerfest" & vbNewLine & vbNewLine
            plaintext = plaintext & "Sei dabei!" & vbNewLine & vbNewLine
            plaintext = plaintext & "Bis zum <b>02. September 2016</b> hast Du die Möglichkeit," & vbNewLine & "Dich mit Klick auf eines der unten stehenden Felder" & vbNewLine & "verbindlich zum Sommerfest an- oder abzumelden." & vbNewLine & vbNewLine
            plaintext = plaintext & "Zur Anmeldung: https://pathfinder2017.vodafone-managementletter.de/?id=" & passwort & vbNewLine & "Zur Absage: https://pathfinder2017.vodafone-managementletter.de/Absage.aspx?id=" & passwort & vbNewLine & vbNewLine
            plaintext = plaintext & "Wir freuen uns auf Dich!" & vbNewLine & vbNewLine
            plaintext = plaintext & "Dein Festausschuss" & vbNewLine & vbNewLine


            Try
                Dim de, da As Net.Mail.MailAddress
                de = New Net.Mail.MailAddress("sommerfest@ewe-events.de", "TKE Sommerfest 2016")
                da = New Net.Mail.MailAddress(email)
                Dim message As New Net.Mail.MailMessage(de, da)
                message.Subject = mailsub
                Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
                Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
                message.AlternateViews.Add(textview)
                message.AlternateViews.Add(htmlview)
                message.Bcc.Add("dirk.ridder@gate.de")
                'message.Bcc.Add("rudi.kotschwar@gate.de")
                'message.Bcc.Add("benjamin.tobaschus@gate.de")
                'message.Bcc.Add("barbara.roemer@gate.de")
                'message.CC.Add("jan.leistenschlag@vodafone.com")
                'Dim miss As New Net.Mail.Attachment(Server.MapPath("fss_dortmund_tag.ics"))
                'miss.Name = "Vodafone Filiale Dortmund - Eröffnung.ics"
                'message.Attachments.Add(miss)
                instance.Send(message)
            Catch ex As Exception
                liste(i) = "Die E-Mail an " & vorname & " " & nachname & " konnte nicht versendet werden!"
            End Try
        Next
        Session.Add("EMail-Liste", liste)
        Response.Redirect("mailergebnis.aspx")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Mailversendung</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="Anrede" HeaderText="Anrede" 
                    SortExpression="Anrede" />
                <asp:BoundField DataField="Vorname" HeaderText="Vorname" 
                    SortExpression="Vorname" />
                <asp:BoundField DataField="Nachname" HeaderText="Nachname" 
                    SortExpression="Nachname" />
                <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                <asp:BoundField DataField="Hash" HeaderText="Hash" SortExpression="Hash" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:Button ID="senden" runat="server" Text="E-Mail-Versendung" OnClick="senden_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Canon %>"
            
            SelectCommand="SELECT [id], [Anrede], [Vorname], [Nachname], [EMail], [Hash] FROM [Canon_Einladung] where id = 3">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
