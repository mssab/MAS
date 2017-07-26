<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text, vorname, nachname, anrede, email, titel, hash As String
        Dim liste(GridView1.Rows.Count - 1) As String
        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            titel = Trim(GridView1.Rows(i).Cells(0).Text)
            email = Trim(GridView1.Rows(i).Cells(1).Text)
            anrede = Trim(GridView1.Rows(i).Cells(2).Text)
            vorname = Trim(GridView1.Rows(i).Cells(3).Text)
            nachname = Trim(GridView1.Rows(i).Cells(4).Text)
            hash = Trim(GridView1.Rows(i).Cells(5).Text)


            Dim text_anrede As String = ""
            text = ""
            Dim plaintext As String = ""



            Dim mailsub As String
            mailsub = "Canon Partner Key-Note 2017 – Freundliche Erinnerung"
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
            text = text & "                                 <p style=""color:#4A4D4E;font-weight:bold;"">heute möchte ich Sie an unsere Event-Einladung zum Canon Partner Key-Note 2017 erinnern.</p>  <p style=""color:#4A4D4E;"">"
            text = text & "                                       Am 26. Juni 2017 präsentieren wir Ihnen die kommenden Canon Produktneuheiten und geben Ihnen einen tieferen Einblick in die CIG Sales- und Marketingstrategie. Freuen Sie sich auf einen exklusiven Vorgeschmack inklusive First Touch – und auf Wunsch – eine Führung durch unser Experience Center."
            text = text & "                                    </p>"

            text = text & "                                    <p style=""color:#4A4D4E;"">Sichern Sie sich jetzt Ihre Teilnahme - Anmeldeschluss ist der <b>19.06.2017</b>.<br />Alle Informationen zur Anmeldung und zum Ablauf finden Sie hier:<br><a href = ""http://partner-keynote2017.canon-events.de?id=" & hash & """><br><img src=""http://canon-events.de/img_std/Button_Zur_Anmeldung.jpg""/></a></p>"


            text = text & "                                       <p style=""color:#4A4D4E; font-weight:bold;"">Wir freuen uns auf Sie!</p>"

            'text = text & "                                        <p <a href = ""https://www.canon.de""> Anmeldung</a></p>"

            text = text & "                                        <p style=""color:#4A4D4E;"">Herzliche Grüße</p>"


            text = text & "                                    <p style=""color:#4A4D4E;  margin-bottom:0px;"">Ihr<br/>Guido Jacobs<br/>Country Director CIG DACH</p>"

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
            plaintext = plaintext & "heute möchte ich Sie an unsere Event-Einladung zum Canon Partner Key-Note 2017 erinnern." & vbNewLine & vbNewLine

            plaintext = plaintext & "am 26. Juni 2017 präsentieren wir Ihnen die Canon Produktneuheiten des Jahres und geben Ihnen einen tieferen Einblick in die CIG Sales- und Marketingstrategie. Freuen Sie sich auf einen exklusiven Vorgeschmack inklusive First Touch – und auf Wunsch – eine Führung durch unser Experience Center." & vbNewLine & vbNewLine

            plaintext = plaintext & "Sichern Sie sich jetzt Ihre Teilnahme - Anmeldeschluss ist der 19.06.2017. Alle Informationen zur Anmeldung und zum Ablauf finden Sie hier:" & vbNewLine & vbNewLine
            plaintext = plaintext & "<a href = ""http://partner-keynote2017.canon-events.de?id=" & hash & """><br><img src=""http://canon-events.de/img_std/Button_Zur_Anmeldung.jpg""/></a>" & vbNewLine & vbNewLine

            plaintext = plaintext & "Wir freuen uns auf Sie!" & vbNewLine & vbNewLine
            plaintext = plaintext & "Herzliche Grüße" & vbNewLine & vbNewLine
            plaintext = plaintext & "Ihr" & vbNewLine & vbNewLine
            plaintext = plaintext & "Guido Jacobs" & vbNewLine & vbNewLine
            plaintext = plaintext & "Country Director CIG DACH" & vbNewLine & vbNewLine
            plaintext = plaintext & "Impressum:       https://www.canon.de/terms_and_conditions/" & vbNewLine


            Try
                Dim de, da As Net.Mail.MailAddress
                de = New Net.Mail.MailAddress("hotline@canon-events.de", "Canon Partner Key-Note 2017")
                da = New Net.Mail.MailAddress(email)

                Dim message As New Net.Mail.MailMessage(de, da)
                message.Subject = mailsub
                Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
                Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
                message.AlternateViews.Add(textview)
                message.AlternateViews.Add(htmlview)
                'message.Bcc.Add("stefan.mehlberg@gmx.net")
                'message.Bcc.Add("mussab.obeado@gate.de")
                'message.Bcc.Add("dirk.ridder@gate.de")
                'message.Bcc.Add("carina.heine@gate.de")
                'message.Bcc.Add("nina.roeske@gate.de")
                'message.Bcc.Add("barbara.roemer@gate.de")
                message.Bcc.Add("versendungen@gate.de")
                'Dim miss As New Net.Mail.Attachment(Server.MapPath("outlook/Hamburg.ics"))
                'miss.Name = "CEO-Tour 2017.ics"
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
                <asp:BoundField DataField="EMail" HeaderText="EMail" 
                    SortExpression="EMail" />
                <asp:BoundField DataField="Anrede" HeaderText="Anrede" 
                    SortExpression="Anrede" />
                <asp:BoundField DataField="Vorname" HeaderText="Vorname" 
                    SortExpression="Vorname" />
                <asp:BoundField DataField="Nachname" HeaderText="Nachname" 
                    SortExpression="Nachname" />
                 <asp:BoundField DataField="Hash" HeaderText="Hash" 
                    SortExpression="Hash" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:Button ID="senden" runat="server" Text="E-Mail-Versendung" OnClick="senden_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Canon %>"
            
            SelectCommand="SELECT [id], [EMail], [Anrede], [Vorname], [Nachname], [Hash] FROM [Canon_Einladung] WHERE Rueckmeldung = 0 AND Versendet  = 1 AND id not in (13, 108, 109, 110, 111)">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
