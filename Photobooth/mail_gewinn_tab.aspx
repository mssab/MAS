﻿<%@ Page Language="VB" %>

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
        text = text & "                                      <b>GIGA-Glückwunsch</b> zum Gewinn <b>eines Vodafone Tab prime 7.</b><br />Im Rahmen der GigaCube Promotion am Campus Düsseldorf und in<br />Unterföhring bist Du unter den glücklichen Gewinnern."

        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                      Das neue Tablet von Vodafone ist ein schlanker Allrounder, mit dem<br />Du dank LTE-Unterstützung richtig schnell im Netz unterwegs bist.<br />Du kannst damit unterwegs arbeiten oder Dich Zuhause aufs Sofa legen,<br />Videos gucken, surfen oder zocken.</p>"




        'text = text & "                                    <p style=""color:#4A4D4E;"">"
        'text = text & "                                      Die persönliche Übergabe Deines Gewinns findet am 22.05.2017 um 11.00 Uhr in der Kaffeebar am Vodafone Campus statt.</p>"


        text = text & "                                     <table style=""width:544px; font-family:Arial; font-size:11pt;color:#4A4D4E;"">"


        text = text & "                                     <tr><td style=""width:270px;vertical-align:top;""><br />"

        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                      Das steckt im Alleskönner-Tablet:</p>"


        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                     •	Octa-Core-Prozessor<br />"
        text = text & "                                     • Android 6.0 Betriebssystem<br />"
        text = text & "                                     •	Top-schlankes Design<br />"
        text = text & "                                     •	10,1 Zoll-Display (25,65 cm)<br />"
        text = text & "                                     •	Bis zu 16 GB interner Speicherplatz<br />"
        text = text & "                                      	(erweiterbar)<br />"
        text = text & "                                     •	Nutzungszeit von bis zu 12 Stunden<br />"
        text = text & "                                     •	Standby-Zeit von bis zu 450 Stunden<br />"
        text = text & "                                     •	Eine 5 Mgeapixelkamera<br />"

        text = text & "                                     </p>"

        text = text & "                                      Bitte wende Dich zur persönlichen<br />Übergabe an Denise Yoldjou."

        text = text & "                                    <p style=""color:#4A4D4E;"">Viel Spaß mit Deinem Gewinn und viele Grüße</p>"
        text = text & "                                    <p style=""color:#4A4D4E;""><b>Dein Vodafone GigaCube Team</b></p>"

        text = text & "                                     </td><td style=""vertical-align:top;""><img src=""http://gigacube-gewinnspiel.de/img/Stoerer_cube.jpg"" alt="""" /></td></tr>"
        text = text & "                                     <tr><td></td><td></td><td></td></tr>"


        text = text & "                                     </table>"

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
        plaintext = plaintext & "GIGA-Glückwunsch zum Gewinn eines Vodafone Tab prime 7. Im Rahmen der GigaCube Promotion am Campus Düsseldorf und in Unterföhring bist Du unter den glücklichen Gewinnern." & vbNewLine & vbNewLine
        plaintext = plaintext & "Das neue Tablet von Vodafone ist ein schlanker Allrounder, mit dem Du dank LTE-Unterstützung richtig schnell im Netz unterwegs bist. Du kannst damit unterwegs arbeiten oder Dich Zuhause aufs Sofa legen, Videos gucken, surfen oder zocken." & vbNewLine & vbNewLine
        plaintext = plaintext & "Das steckt im Alleskönner-Tablet:" & vbNewLine & vbNewLine
        plaintext = plaintext & "•	Octa-Core-Prozessor" & vbNewLine
        plaintext = plaintext & "•	Android 6.0 Betriebssystem" & vbNewLine
        plaintext = plaintext & "•	Top-schlankes Design" & vbNewLine
        plaintext = plaintext & "•	10,1 Zoll-Display (25,65 cm)" & vbNewLine
        plaintext = plaintext & "•	Bis zu 16 GB interner Speicherplatz (erweiterbar) " & vbNewLine
        plaintext = plaintext & "•	Nutzungszeit von bis zu 12 Stunden" & vbNewLine
        plaintext = plaintext & "•	Standby-Zeit von bis zu 450 Stunden" & vbNewLine
        plaintext = plaintext & "•	Eine 5 Mgeapixelkamera" & vbNewLine
        'plaintext = plaintext & "Für gute Laune Musik oder einen spannenden Film am Abend sorgt der Vodafone GigaCube, mit dem Du ganz einfach Filme oder Musik streamen kannst und so ein Surfgefühl wie zuhause hast. Einfach einstecken und lossurfen mit Highspeed-Internet in ganz Deutschland – denn der Vodafone GigaCube ist Dein WLAN-Router zum Mitnehmen. Für LTE-Highspeed mit bis zu 150 Mbit/s, wo Du es brauchst. Und das Beste: Mit GigaCube Flex bezahlst Du nur dann den monatlichen Basispreis, wenn Du den GigaCube in Deinem Rechnungszeitraum tatsächlich nutzt." & vbNewLine & vbNewLine
        plaintext = plaintext & "Bitte wende Dich zur persönlichen Übergabe an Denise Yoldjou." & vbNewLine & vbNewLine
        'plaintext = plaintext & "Um Dein Abo auf Dich zu personalisieren, lass uns bitte bis zum 03.04.2017 Deine Mobilnummer und Deine Anschrift zukommen.<br /><br /> Die persönliche Übergabe Deines Gewinns findet am 12.04.2017 um 10.30 Uhr in Raum 4.A.31 am Vodafone Campus statt." & vbNewLine & vbNewLine


        plaintext = plaintext & "Viele Grüße" & vbNewLine & vbNewLine
        plaintext = plaintext & "Dein Vodafone GigaCube Team" & vbNewLine & vbNewLine
        plaintext = plaintext & "Impressum:       http://www.vodafone.de/impressum.html" & vbNewLine
        plaintext = plaintext & "Datenschutz:     http://www.vodafone.de/datenschutz.html" & vbNewLine
        plaintext = plaintext & "Vodafone.de:     http://www.vodafone.de" & vbNewLine & vbNewLine
        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("hauptverlosung@gigacube-gewinnspiel.de", "Vodafone GigaCube Team")
            da = New Net.Mail.MailAddress("dirk.ridder@gate.de")
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(textview)
            message.AlternateViews.Add(htmlview)
            'message.Bcc.Add("stefan.mehlberg@gmx.net")
            message.Bcc.Add("dirk.ridder@gate.de")
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