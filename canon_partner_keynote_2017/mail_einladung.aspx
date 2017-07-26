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
            email = Trim(GridView1.Rows(i).Cells(1).Text)
            anrede = Trim(GridView1.Rows(i).Cells(2).Text)
            vorname = Trim(GridView1.Rows(i).Cells(3).Text)
            nachname = Trim(GridView1.Rows(i).Cells(4).Text)
            passwort = Trim(GridView1.Rows(i).Cells(5).Text)


            Dim text_anrede As String = ""
            text = ""
            Dim plaintext As String = ""


            Dim mailsub As String
            mailsub = "Persönliche Einladung – Pathfinder 2017"
            text = text & "<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">"
            text = text & "<body style=""font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
            text = text & "    <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
            text = text & "        valign: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
            text = text & "        <tr>"
            text = text & "            <td>"
            text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
            text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
            text = text & "<tr style="" vertical-align:middle;background-color:#D9D9D9;height:30px;""><td colspan=""2"" style=""vertical-align:middle;text-align:left;padding-left:28px; font-size:8pt;""><div style="" background-color:#D9D9D9;"">Sollte die E-Mail nicht richtig angezeigt werden, klicke bitte <a href=""https://pathfinder2017.vodafone-managementletter.de/email.html"" target=""_blank"" style=""color:#E60000; text-decoration: underline;"">hier</a></div> </td></tr>"
            text = text & "                    <tr>"
            text = text & "                        <td colspan=""2"" style=""vertical-align: top;"">"
            text = text & "                            <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
            text = text & "                                <img src=""https://pathfinder2017.vodafone-managementletter.de/img/Vodafone_Pathfinder_E-Mail_Header.jpg"" alt="""" /></div>"
            text = text & "                        </td>"
            text = text & "                        "
            text = text & "                    </tr>"
            text = text & "                    <tr>"
            text = text & "                        <td style=""padding-left: 28px; padding-right: 28px; padding-top:28px; vertical-align:top;"">"
            text = text & "                            "
            text = text & "                            <div>"
            If anrede = "Frau" Then
                text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe " & vorname & ",</p>"
                text_anrede = "Liebe " & vorname & ","
            Else
                text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Lieber " & vorname & ",</p>"
                text_anrede = "Lieber " & vorname & ","
            End If
            'text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe Kolleginnen und Kollegen,</p>"
            'text_anrede = "Liebe Kolleginnen und Kollegen,"
            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                       <b>bist Du dabei?</b></p>"
            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                       Gerne möchte ich Dich einladen, am 1. Mai gemeinsam mit mir am <b>Pathfinder Event des Handelsblatts</b> teilzunehmen. Sieben CEOs großer Unternehmen laden dort ihre Nachwuchskräfte ein, um neue Perspektiven zu entdecken und abseits von Quartalszahlen zu diskutieren – eine gute Gelegenheit zur Vernetzung über Unternehmensgrenzen hinweg."
            text = text & "                                    </p>"


            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                      Wir als Vodafone stehen dort für unseren <b>&#8222;Pioneering Spirit&#8221;</b>, unter anderem am Beispiel der <b>&#8222;Mission to the Moon&#8221;</b>. Gemeinsam mit Robert Böhme, dem Gründer des Berliner Start-ups &#8222;Part Time Scientists&#8221;, zeigen wir, wie sich mit der Kraft von Visionen und Innovationen die Zukunft gestalten lässt. Ein weiterer Speaker ist beispielsweise Dieter Zetsche von Daimler, der zusammen mit Nico Rosberg zum Thema &#8222;Dedication&#8221; spricht. </p>"
            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                      Die Veranstaltung beginnt <b>am Sonntag, 30. April, mit der NIGHT OF THE TALENTS</b>.</br>Der 1. Mai startet mit einem gemeinsamen Frühstück, bevor es im Tempodrom heißt: <b>THE FUTURE IS WOW</b>. </p>"

            'text = text & "                                    <p style=""color:#4A4D4E;"">"
            'text = text & "                                       Zur Anmeldung nutzt Du Deine Vodafone E-Mail-Adresse. Die Teilnehmeranzahl wird an manchen Standorten begrenzt sein, wähle deshalb die Tour-Station aus, die Deinem Standort am nächsten liegt. Auch in diesem Jahr werden wir bei Bedarf wieder einen Bus-Transfer einrichten. Details zu Ablauf und Anreise sowie weitere wichtige Informationen findest Du auf der <a href=""https://ceo-tour2017.vodafone-managementletter.de"" style=""color:#E60000;"" target=""_blank"" >Anmeldeseite</a> oder in der CEO Tour-Kachel der Mitarbeiter-App.</p>"

            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                        Weitere Informationen zur Veranstaltung und die Möglichkeit zur Anmeldung findest Du hier: </p>"

            text = text & "                                    <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
            text = text & "                                        <table cellspacing=""0"" cellpadding=""0"">"
            text = text & "                                            <tr>"
            text = text & "                                                <td>"
            text = text & "                                                    <a href=""https://pathfinder2017.vodafone-managementletter.de/Default.aspx?hash=" & passwort & """ border=""0"">"
            text = text & "                                                        <img src=""https://pathfinder2017.vodafone-managementletter.de/img/Button_zur_Anmeldung.png"" alt="""" style=""height:35px;"" border=""0"" /></a>"
            text = text & "                                                </td>"
            text = text & "                                                "
            text = text & "                                            </tr>"
            text = text & "                                        </table>"
            text = text & "                                    </div>"

            'text = text & "                                    <p>"
            'text = text & "                                        Wenn Du bereits im Vorfeld Fragen hast, kannst Du diese <a href=""https://ceo-tour2017.vodafone-managementletter.de"" target=""_blank"" style=""color:#4A4D4E; text-decoration: underline;font-weight:bold; text-align:center;"">hier</a> vorab stellen.</p>"


            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                        Da die Teilnehmerzahl begrenzt ist, verfahren wir nach dem Motto</br>&#8222;first come, first serve&#8221;. </p>"
            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                        Ich freue mich auf eine spannende Veranstaltung.</p>"



            text = text & "                                        <p style=""color:#4A4D4E;"">Beste Grüße</p>"


            text = text & "                                    <p style=""color:#4A4D4E;""><b>Hannes</b></p>"


            text = text & "                                </div>"
            text = text & "                        </td>"

            text = text & "                    </tr>"
            text = text & "                </table>"
            text = text & "                <table style=""width: 585px; font-family: Arial; color:#4A4D4E; font-size: 11pt;"">"
            text = text & "                    <tr>"
            text = text & "                        <td style=""width: 28px;"">"
            text = text & "                        </td>"
            text = text & "                        <td style=""width: 572px;"">"
            text = text & "                            <hr style=""margin-top: 28px;"">"
            text = text & "                            <table style=""width: 572px; font-family: Arial; font-size: 11pt;"">"
            text = text & "                                <tr>"
            text = text & "                                    <td>"
            text = text & "                                        <p style=""margin-top: 14px; color: #4A4D4E;"">"
            text = text & "                                            <a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #4A4D4E;"">"
            text = text & "                                                <b>Impressum</b></a>&nbsp;<a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none;"
            text = text & "                                                    color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
            text = text & "                                                        style=""text-decoration: none; color: #4A4D4E;""><b>Datenschutz</b></a>&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
            text = text & "                                                            style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a><br>"
            text = text & "                                            <a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #4A4D4E;""><b>vodafone.de</b></a>&nbsp;<a"
            text = text & "                                                href=""http://www.vodafone.de"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a>&nbsp;&nbsp;&nbsp;Copyright"
            text = text & "                                            © 2017 Vodafone GmbH"
            text = text & "                                        </p>"
            text = text & "                                    </td>"
            text = text & "                                    <td style=""width: 150px; vertical-align: bottom;"">"
            'text = text & "                                        <a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
            'text = text & "                                            <img src=""http://www.vodafone-managementletter.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img"
            'text = text & "                                                    src=""http://www.vodafone-managementletter.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                    border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img"
            'text = text & "                                                        src=""http://www.vodafone-managementletter.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                        border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img"
            'text = text & "                                                            src=""http://www.vodafone-managementletter.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px;"
            'text = text & "                                                            width: 27px;"" border=""0"" /></a>"
            text = text & "                                    </td>"
            text = text & "                                </tr>"
            text = text & "                            </table>"
            text = text & "                        </td>"
            text = text & "                </table>"
            text = text & "            </td>"
            text = text & "        </tr>"
            text = text & "    </table>"
            text = text & "</body>"


            plaintext = text_anrede & vbNewLine & vbNewLine
            plaintext = plaintext & "bist Du dabei?" & vbNewLine & vbNewLine
            plaintext = plaintext & "Gerne möchte ich Dich einladen, am 1. Mai gemeinsam mit mir am Pathfinder Event des Handelsblatts teilzunehmen." & vbNewLine & " Sieben CEOs großer Unternehmen laden dort ihre Nachwuchskräfte ein, um neue Perspektiven " & vbNewLine & "zu entdecken und abseits von Quartals-zahlen zu diskutieren – eine gute Gelegenheit zur Vernetzung über Unternehmens-grenzen hinweg." & vbNewLine & vbNewLine
            plaintext = plaintext & "Wir stehen dort für unseren „Pioneering Spirit"“ , unter anderem am Beispiel der „Mission to the Moon."“" & vbNewLine & "Gemeinsam mit Robert Böhme, dem Gründer des Berliner Start-ups „Part Time Scientists,"“" & vbNewLine & "zeigen wir, wie sich mit der Kraft von Visionen und Innovationen die Zukunft gestalten lässt." & vbNewLine & "Ein weiterer Speaker ist beispielsweise Dieter Zetsche von Daimler, der zusammen mit Nico Rosberg zum Thema „Dedication spricht." & vbNewLine & vbNewLine
            plaintext = plaintext & "Die Veranstaltung beginnt am Sonntag, 30. April, mit der NIGHT OF THE TALENTS." & vbNewLine & "Der 1. Mai startet mit einem gemeinsamen Frühstück, bevor es im Tempodrom heißt: THE FUTURE IS WOW." & vbNewLine & vbNewLine
            plaintext = plaintext & "Weitere Informationen zur Veranstaltung und die Möglichkeit zur Anmeldung findest Du hier " & vbNewLine & vbNewLine
            plaintext = plaintext & "<a href=""https://pathfinder2017.vodafone-managementletter.de/Default.aspx?hash=" & passwort & """ border=""0""><img src=""https://pathfinder2017.vodafone-managementletter.de/img/Button_zur_Anmeldung.png"" alt="""" style=""height:35px;"" border=""0"" /></a>" & vbNewLine & vbNewLine

            plaintext = plaintext & "Da die Teilnehmerzahl begrenzt ist, verfahren wir nach dem Motto „first come, first serve“"." & vbNewLine & vbNewLine
            plaintext = plaintext & "Ich freue mich auf eine spannende Veranstaltung. " & vbNewLine & vbNewLine

            plaintext = plaintext & "Beste Grüße" & vbNewLine & vbNewLine
            plaintext = plaintext & "Hannes" & vbNewLine & vbNewLine
            plaintext = plaintext & "Impressum:       http :  //www.vodafone.de/impressum.html" & vbNewLine
            plaintext = plaintext & "Datenschutz:     http :  //www.vodafone.de/datenschutz.html" & vbNewLine
            plaintext = plaintext & "Vodafone.de:     http :  //www.vodafone.de" & vbNewLine & vbNewLine

            Try
                Dim de, da As Net.Mail.MailAddress
                de = New Net.Mail.MailAddress("pathfinder2017@vodafone-managementletter.de", "Hannes Ametsreiter")
                da = New Net.Mail.MailAddress(email)
                Dim message As New Net.Mail.MailMessage(de, da)
                message.Subject = mailsub
                Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
                Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
                message.AlternateViews.Add(textview)
                message.AlternateViews.Add(htmlview)
                'message.Bcc.Add("stefan.mehlberg@gmx.net")
                'message.Bcc.Add("stefan.mehlberg@gate.de")
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
            
            SelectCommand="SELECT [id], [EMail], [Anrede], [Vorname], [Nachname], [Hash] FROM [Canon_Einladung] WHERE id = 2 ">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
