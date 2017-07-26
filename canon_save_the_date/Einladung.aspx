<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text, vorname, nachname, anrede, email As String
        Dim liste(GridView1.Rows.Count - 1) As String
        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            ID = Trim(GridView1.Rows(i).Cells(0).Text)
            anrede = Trim(GridView1.Rows(i).Cells(1).Text)
            vorname = Trim(GridView1.Rows(i).Cells(2).Text)
            nachname = Trim(GridView1.Rows(i).Cells(3).Text)
            'email = Trim(GridView1.Rows(i).Cells(4).Text)
            email = "mussab.obeado@gate.de"
            Dim text_anrede As String = ""
            text = ""
            Dim plaintext As String = ""


            Dim mailsub As String
            mailsub = "Save the Date: Canon Partner Partner Key-Note 2017 in Krefeld"
            text = text & "<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">"
            text = text & "<body style=""font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
            text = text & "    <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
            text = text & "        valign: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
            text = text & "        <tr>"
            text = text & "            <td>"
            text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;color: #4A4D4E;"
            text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
            'text = text & "<tr style="" vertical-align:middle;background-color:#D9D9D9;height:30px;""><td colspan=""2"" style=""vertical-align:middle;text-align:left;padding-left:28px; font-size:8pt;""><div style="" background-color:#D9D9D9;"">Sollte die E-Mail nicht richtig angezeigt werden, klicke bitte <a href=""https://ceo-tour2017.vodafone-managementletter.de/email_shuttle_dresden.html"" target=""_blank"" style=""color:#E60000; text-decoration: underline;"">hier</a></div> </td></tr>"
            text = text & "                    <tr>"
            text = text & "                        <td colspan=""2"" style=""vertical-align: top;"">"
            text = text & "                            <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
            text = text & "                                <img src=""http://canon-events.de/img_std/Header1.jpg"" alt="""" /></div>"
            text = text & "                        </td>"
            text = text & "                        "
            text = text & "                    </tr>"
            text = text & "                    <tr>"
            text = text & "                        <td style=""padding-left: 40px; padding-right: 40px; padding-top:40px; vertical-align:top; color: #4A4D4E;"">"
            text = text & "                            "
            text = text & "                            <div>"
            If anrede = "Frau" Then
                text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrte Frau " & nachname & ",</p>"
                text_anrede = "Sehr geehrte Frau " & nachname & ","
            Else
                text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrter Herr " & nachname & ",</p>"
                text_anrede = "Sehr geehrter Herr " & nachname & ","
            End If
            'text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe Kolleginnen und Kollegen,</p>"
            'text_anrede = "Liebe Kolleginnen und Kollegen,"
            text = text & "                                    <p style=""color:#4A4D4E; font-weight:bold;"">"
            text = text & "                                       am 26. Juni 2017 präsentieren wir Ihnen die kommenden Canon Produktneuheiten des Jahres und geben Ihnen einen tieferen Einblick in die CIG Sales- und Marketing-Strategie. Freuen Sie sich darüber hinaus auf einen exklusiven First Touch und eine Führung durch unser Experience Center."
            text = text & "                                    </p>"

            text = text & "                                    <p style=""color:#4A4D4E;"">Wir würden uns sehr freuen, auch Sie bei uns im neuen Canon Convention Center begrüßen zu dürfen. Notieren Sie sich gleich den Termin. Einen entsprechenden Kalender-Eintrag finden Sie in der Anlage.</p>"


            text = text & "                                    <p style=""color:#4A4D4E; font-weight:bold;"">Canon Partner Key-Note 2017</p>"
            text = text & "                                    <p style=""color:#4A4D4E;"">Canon Deutschland GmbH, Krefeld<br />Convention Center<br />Montag, 26. Juni 2017<br />13.00 - 17.00 Uhr</p>"



            'text = text & "                                    <p>"
            'text = text & "                                        Wenn Du bereits im Vorfeld Fragen hast, kannst Du diese <a href=""https://ceo-tour2017.vodafone-managementletter.de"" target=""_blank"" style=""color:#4A4D4E; text-decoration: underline;font-weight:bold; text-align:center;"">hier</a> vorab stellen.</p>"
            'text = text & "                                    <p style=""color:#4A4D4E;"">"
            'text = text & "                                        Falls Dir auffällt, dass ein Kollege oder eine Kollegin versehentlich keine Einladung erhalten haben sollte: bitte zögere nicht, diese Mail weiterzuleiten. Selbstverständlich ist jeder Vodafone-Mitarbeiter zur CEO Tour 2017 herzlich eingeladen.</p>"
            'text = text & "                                    <p>"
            text = text & "                                       <p style=""color:#4A4D4E;"">Eine persönliche Einladung mit der Möglichkeit zur Anmeldung geht Ihnen in Kürze per E-Mail zu.</p>"



            text = text & "                                        <p style=""color:#4A4D4E; font-weight:bold;"">Herzliche Grüße</p>"


            text = text & "                                    <p style=""color:#4A4D4E; font-weight:bold; margin-bottom:0px;"">Ihr<br />Canon Event-Team</p>"

            text = text & "                  <img src=""http://canon-events.de/img_std/footer-logo_01.jpg"" alt="""" style=""height:139px; width:520px"" border=""0"" />"
            text = text & "                                </div>"
            text = text & "                        </td>"

            text = text & "                    </tr>"
            text = text & "                </table>"
            text = text & " <table style=""margin-left: 40px; margin-right: 40px; width:520px; color: #4A4D4E;"">"
            text = text & " <tr>"
            text = text & "           <th style=""width:280px; text-align:left;""><a href=""http://www.canon.de/""><img src = ""http://canon-events.de/img_std/footer-canon-deutschland.jpg"" alt="" border=""0""></th>"

            text = text & "           <th style=""width:40px;""><a href=""https://www.facebook.com/CanonDeutschland""><img src = ""http://canon-events.de/img_std/footer-facebook.jpg"" alt="" border=""0""></a></th>"
            text = text & "           <th style=""width:40px;""><a href=""https://twitter.com/CanonDEU""><img src = ""http://canon-events.de/img_std/footer-twitter.jpg"" alt="" border=""0""></a></th>"
            text = text & "           <th style=""width:40px;""><a href=""https://www.instagram.com/canondeutschland/""><img src = ""http://canon-events.de/img_std/footer-instagram.jpg"" alt="" border=""0""></a></th>"
            text = text & "           <th style=""width:40px;""><a href=""https://www.linkedin.com/company/canon-deutschland-gmbh""><img src = ""http://canon-events.de/img_std/footer-in.jpg"" alt="" border=""0""></a></th>"
            text = text & "           <th style=""width:40px;""><a href=""https://www.youtube.com/user/CanonGermany""><img src = ""http://canon-events.de/img_std/footer-youtube.jpg"" alt="" border=""0""></a></th>"
            text = text & "           <th style=""width:40px;""><a href=""https://www.xing.com/companies/canondeutschlandgmbh""><img src = ""http://canon-events.de/img_std/footer-xing.jpg"" alt="" border=""0""></a></th>"
            text = text & "  </tr>"
            text = text & "  </table>"
            text = text & "                <table style=""width: 600px; font-family: Arial; color:#4A4D4E; font-size: 11pt;"">"
            text = text & "                    <tr>"
            text = text & "                        <td style=""width: 40px;"">"
            text = text & "                        </td>"
            text = text & "                        <td style=""width: 520px;"">"
            text = text & "<img src=""http://canon-events.de/img_std/footer-linie.jpg"" alt="""" style=""width:520px"" border=""0"" />"
            text = text & "                            <table style=""width: 520px; font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
            text = text & "                                <tr>"
            text = text & "                                    <td>"
            text = text & "                                        "
            text = text & "                                            <a href=""https://www.canon.de/terms_and_conditions/"" style=""text-decoration: none; color: #4A4D4E;"">"
            text = text & "                                                Impressum</a>&nbsp;&nbsp;&nbsp;"
            text = text & "                                            <a href=""http://www.canon-events.de/Keynote2017.html"" style=""text-decoration: none; color: #4A4D4E;"">HTML-Ansicht</a>&nbsp;&nbsp;&nbsp;&nbsp;"
            text = text & "                                            "
            text = text & "                                        "
            text = text & "                                    </td>"
            text = text & "                                    <td style=""text-align:right;"">Copyright 2017"
            text = text & "                                    </td>"
            text = text & "                                </tr>"
            text = text & "                            </table>"
            text = text & "                        </td>"
            text = text & "                        <td style=""width: 40px;"">"
            text = text & "                        </td>"
            text = text & "                </table>"
            text = text & "            <br /><br /></td>"
            text = text & "        </tr>"
            text = text & "    </table>"
            text = text & "</body>"


            plaintext = text_anrede & vbNewLine & vbNewLine
            plaintext = plaintext & " am 26. Juni 2017 präsentieren wir Ihnen die Canon Produktneuheiten des Jahres und geben Ihnen einen tieferen Einblick in die CIG Sales- und Marketing-Strategie. Freuen Sie sich darüber hinaus auf einen exklusiven First Touch und eine Führung durch unser Experience Center." & vbNewLine & vbNewLine

            plaintext = plaintext & "Wir würden uns sehr freuen, auch Sie bei uns im neuen Canon Convention Center begrüßen zu dürfen. Notieren Sie sich gleich den Termin. Einen entsprechenden Kalender-Eintrag finden Sie in der Anlage." & vbNewLine & vbNewLine
            plaintext = plaintext & "Canon Partner Key-Note 2017" & vbNewLine & "Canon Deutschland GmbH, Krefeld" & vbNewLine & "Convention Center" & vbNewLine & "Montag, 26. Juni 2017" & vbNewLine & "13.00 - 17.00 Uhr" & vbNewLine & vbNewLine
            plaintext = plaintext & "Eine persönliche Einladung mit der Möglichkeit zur Anmeldung geht Ihnen in Kürze per E-Mail zu." & vbNewLine & vbNewLine

            plaintext = plaintext & "Herzliche Grüße" & vbNewLine & vbNewLine
            plaintext = plaintext & "Ihr Canon Event-Team" & vbNewLine & vbNewLine
            plaintext = plaintext & "Impressum:       https://www.canon.de/terms_and_conditions/" & vbNewLine


            Try
                Dim de, da As Net.Mail.MailAddress
                de = New Net.Mail.MailAddress("hotline@canon-events.de", "Canon Partner Key-Note 2017")
                da = New Net.Mail.MailAddress("webservices@gate.de")
                Dim message As New Net.Mail.MailMessage(de, da)
                message.Subject = mailsub
                Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
                Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
                message.AlternateViews.Add(textview)
                message.AlternateViews.Add(htmlview)
                'message.Bcc.Add("denise.hoppe@gate.de")
                message.Bcc.Add("mussab.obeado@gate.de")
                'message.Bcc.Add("dirk.ridder@gate.de")
                'message.Bcc.Add("benjamin.tobaschus@gate.de")
                'message.Bcc.Add("carina.heine@gate.de")
                'message.Bcc.Add("barbara.roemer@gate.de")
                'message.Bcc.Add("versendungen@gate.de")

                'to send Attachment with

                Dim miss As New Net.Mail.Attachment(Server.MapPath("Canon_Partner_Key_Note_2017.ics"))
                miss.Name = "Canon Partner Key-Note 2017.ics"
                message.Attachments.Add(miss)

                instance.Send(message)


            Catch ex As Exception
                liste(i) = "Die E-Mail an " & vorname & " " & nachname & " konnte nicht versendet werden!"
            End Try
        Next

        Session.Add("EMail-Liste", liste)
        Response.Redirect("mailergebnis.aspx")

    End Sub


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mailversendung</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="Anrede" HeaderText="Anrede"
                        SortExpression="Anrede" />
                    <asp:BoundField DataField="Vorname" HeaderText="Vorname"
                        SortExpression="Vorname" />
                    <asp:BoundField DataField="Nachname" HeaderText="Nachname"
                        SortExpression="Nachname" />

                    <asp:BoundField DataField="EMail" HeaderText="EMail"
                        SortExpression="EMail" />

                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Button ID="senden" runat="server" Text="E-Mail-Versendung" OnClick="senden_Click" />
        <%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Canon %>"
                SelectCommand="SELECT [id], [EMail],[Anrede], [Vorname], [Nachname] FROM [Versendung_STD] ">
            </asp:SqlDataSource>--%>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Canon %>"
                SelectCommand="SELECT TOP 1 [id],[anrede],[vorname],[nachname],[email],[Firma] FROM [Canon].[dbo].[Versendung_STD]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
