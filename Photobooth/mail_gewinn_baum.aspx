<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text, vorname, nachname, anrede, email, passwort, titel As String
        'Dim liste(GridView1.Rows.Count - 1) As String
        Dim i As Integer

        'For i = 0 To GridView1.Rows.Count - 1
        '    titel = Trim(GridView1.Rows(i).Cells(0).Text)
        '    email = Trim(GridView1.Rows(i).Cells(1).Text)
        '    anrede = Trim(GridView1.Rows(i).Cells(2).Text)
        '    vorname = Trim(GridView1.Rows(i).Cells(3).Text)
        '    nachname = Trim(GridView1.Rows(i).Cells(4).Text)
        '    passwort = Trim(GridView1.Rows(i).Cells(5).Text)

        Dim text_anrede As String = ""
        text = ""
        Dim plaintext As String = ""


        Dim mailsub As String
        mailsub = "GigaCube Gewinnspiel - Gewinnbenachrichtigung"
        text = text & "<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">"
        text = text & "<body style=""font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
        text = text & "    <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
        text = text & "        valign: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
        text = text & "        <tr>"
        text = text & "            <td>"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
        text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
        text = text & "                    <tr>"
        text = text & "                        <td colspan=""2"" style=""vertical-align: top;"">"
        text = text & "                            <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
        text = text & "                                <img src=""http://gigacube-gewinnspiel.de/img/Mail_Header.jpg"" alt="""" /></div>"
        text = text & "                        </td>"
        text = text & "                        "
        text = text & "                    </tr>"
        text = text & "                    <tr>"
        text = text & "                        <td style=""padding-left: 28px; padding-right: 28px; padding-top:28px; vertical-align:top;"">"
        text = text & "                            "
        text = text & "                            <div>"
        'If anrede = "Frau" Then
        '    text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe " & vorname & ",</p>"
        '    text_anrede = "Liebe " & vorname & ","
        'Else
        '    text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Lieber " & vorname & ",</p>"
        '    text_anrede = "Lieber " & vorname & ","
        'End If
        text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Lieber Martin,</p>"
        text_anrede = "Lieber Martin,"
        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                      <b>GIGA-Glückwunsch</b> zum Gewinn <b>einer Woche Family & Friends Urlaub in einem Baumhaus-Hotel.</b> Im Rahmen der GigaCube Promotion in Dortmund bist Du unter den glücklichen Gewinnern."

        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                      Hoch oben zwischen den Bäumen verbringst Du mit 4 Personen Deiner Wahl abenteuerreiche Nächte. Vom modern ausgestatteten Baumhaus aus hast Du einen atemberaubenden Blick auf Felder, Wälder und Berge. Hier, weit oben auf dem Baum im Süden Deutschlands ist der perfekte Rückzugsort aus dem stressigen Alltag. Entspannung auf höchstem Niveau ist garantiert.</p>"

        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                      Internet für alle, die überall zuhause sind! Surf mit dem GigaCube in unserem superschnellen Mobilfunknetz – egal ob in Zweitwohnung, Wohnmobil oder Baumhaushotel.</p>"




        'text = text & "                                    <p style=""color:#4A4D4E;"">"
        'text = text & "                                      Die persönliche Übergabe Deines Gewinns findet am 22.05.2017 um 11.00 Uhr in der Kaffeebar am Vodafone Campus statt.</p>"


        text = text & "                                     <table style=""width:544px; font-family:Arial; font-size:11pt;color:#4A4D4E;"">"


        text = text & "                                     <tr><td style=""width:270px;vertical-align:top;"">"
        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                    Für gute Laune Musik oder einen spannenden Film am Abend sorgt der Vodafone GigaCube, mit dem Du ganz einfach Filme oder Musik streamen kannst und so ein Surfgefühl wie zuhause hast. Einfach einstecken und lossurfen mit Highspeed-Internet in ganz Deutschland – denn der Vodafone GigaCube ist Dein WLAN-Router zum Mitnehmen. Für LTE-Highspeed mit bis zu 150 Mbit/s, wo Du es brauchst.</p>"
        text = text & "                                     <p>Und das Beste: Mit GigaCube Flex bezahlst Du nur dann den monatlichen Basispreis, wenn Du den GigaCube in Deinem Rechnungszeitraum tatsächlich nutzt.</p>"

        text = text & "                                     <p>Lass uns für die Gewinnübergabe bitte <b>bis zum 14.06.2017</b> Deine <b>Mobilnummer</b> und Deine <b>Anschrift</b> zukommen.</p>"

        text = text & "                                     </td><td style=""vertical-align:top;""><img src=""http://gigacube-gewinnspiel.de/img/Stoerer_cube.jpg"" alt="""" /></td></tr>"
        text = text & "                                     <tr><td></td><td></td><td></td></tr>"


        text = text & "                                     </table>"

        'text = text & "                                    <span style=""color:#4A4D4E;"">Lass uns für die Gewinnübergabe bitte <b>bis zum 14.06.2017</b> Deine <b>Mobilnummer</b> und Deine <b>Anschrift</b> zukommen.</span>"
        text = text & "                                    <p style=""color:#4A4D4E;"">Viel Spaß mit Deinem Gewinn und viele Grüße</p>"
        text = text & "                                    <p style=""color:#4A4D4E;""><b>Dein Vodafone GigaCube Team</b></p>"
        text = text & "                                    </p>"




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
        text = text & "                                        <a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
        text = text & "                                            <img src=""http://www.vodafone-managementletter.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img"
        text = text & "                                                    src=""http://www.vodafone-managementletter.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                    border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img"
        text = text & "                                                        src=""http://www.vodafone-managementletter.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                        border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img"
        text = text & "                                                            src=""http://www.vodafone-managementletter.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px;"
        text = text & "                                                            width: 27px;"" border=""0"" /></a>"
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
        plaintext = plaintext & "GIGA-Glückwunsch zum Gewinn einer Woche Family & Friends Urlaub in einem Baumhaus-Hotel. Im Rahmen der GigaCube Promotion in Dortmund bist Du unter den glücklichen Gewinnern." & vbNewLine & vbNewLine
        plaintext = plaintext & "Hoch oben zwischen den Bäumen verbringst Du mit 4 Personen Deiner Wahl abenteuerreiche Nächte. Vom modern ausgestatteten Baumhaus aus hast Du einen atemberaubenden Blick auf Felder, Wälder und Berge. Hier, weit oben auf dem Baum im Süden Deutschlands ist der perfekte Rückzugsort aus dem stressigen Alltag. Entspannung auf höchstem Niveau ist garantiert." & vbNewLine & vbNewLine
        plaintext = plaintext & "Internet für alle, die überall zuhause sind! Surf mit dem GigaCube in unserem superschnellen Mobilfunknetz – egal ob in Zweitwohnung, Wohnmobil oder Baumhaushotel." & vbNewLine & vbNewLine
        plaintext = plaintext & "Für gute Laune Musik oder einen spannenden Film am Abend sorgt der Vodafone GigaCube, mit dem Du ganz einfach Filme oder Musik streamen kannst und so ein Surfgefühl wie zuhause hast. Einfach einstecken und lossurfen mit Highspeed-Internet in ganz Deutschland – denn der Vodafone GigaCube ist Dein WLAN-Router zum Mitnehmen. Für LTE-Highspeed mit bis zu 150 Mbit/s, wo Du es brauchst. Und das Beste: Mit GigaCube Flex bezahlst Du nur dann den monatlichen Basispreis, wenn Du den GigaCube in Deinem Rechnungszeitraum tatsächlich nutzt." & vbNewLine & vbNewLine
        plaintext = plaintext & "Lass uns für die Gewinnübergabe bitte bis zum 14.06.2017 Deine Mobilnummer und Deine Anschrift zukommen." & vbNewLine & vbNewLine
        'plaintext = plaintext & "Um Dein Abo auf Dich zu personalisieren, lass uns bitte bis zum 03.04.2017 Deine Mobilnummer und Deine Anschrift zukommen.<br /><br /> Die persönliche Übergabe Deines Gewinns findet am 12.04.2017 um 10.30 Uhr in Raum 4.A.31 am Vodafone Campus statt." & vbNewLine & vbNewLine


        plaintext = plaintext & "Viele Grüße" & vbNewLine & vbNewLine
        plaintext = plaintext & "Dein Vodafone GigaCube Team" & vbNewLine & vbNewLine
        plaintext = plaintext & "Impressum: http : //www.vodafone.de/impressum.html" & vbNewLine
        plaintext = plaintext & "Datenschutz:     http : //www.vodafone.de/datenschutz.html" & vbNewLine
        plaintext = plaintext & "Vodafone.de:     http : //www.vodafone.de" & vbNewLine & vbNewLine
        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("hauptverlosung@gigacube-gewinnspiel.de", "Vodafone GigaCube Team")
            da = New Net.Mail.MailAddress("stefan.mehlberg@gate.de")
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(textview)
            message.AlternateViews.Add(htmlview)
            message.Bcc.Add("stefan.mehlberg@gmx.net")
            'message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("carina.heine@gate.de")
            message.Bcc.Add("nina.roeske@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            'message.Bcc.Add("versendungen@gate.de")

            instance.Send(message)
        Catch ex As Exception
            'liste(i) = "Die E-Mail an " & vorname & " " & nachname & " konnte nicht versendet werden!"
        End Try
        'Next
        'Session.Add("EMail-Liste", liste)
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
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
                
            </Columns>
        </asp:GridView>--%>
        <br />
        <br />
        <br />
        <asp:Button ID="senden" runat="server" Text="E-Mail-Versendung" OnClick="senden_Click" />
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vodafone %>"
            
            SelectCommand="SELECT [id], [EMail], [Anrede], [Vorname], [Nachname], FROM [CEO_Tour_2017_Abfrage] WHERE (Location = 'Dortmund')">
        </asp:SqlDataSource>--%>
    </div>
    </form>
</body>
</html>
