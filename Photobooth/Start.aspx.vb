Imports System.Drawing
Imports System.IO
Imports System.Data.SqlClient

Partial Class gewinn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        fehler.Visible = False
        If analyse() = 0 Then
            Dim datensatz As Integer = 0
            datensatz = speichern()
            hochladen(datensatz)
            sende_email(datensatz)
            sende_email_freunde(datensatz)
            Response.Redirect("Ziel.aspx")
        Else
            fehler.Visible = True
        End If
    End Sub

    Protected Function analyse() As Integer
        fehler.Text = ""
        Dim i As Integer = 0
        If Name.Text.Length < 1 Then
            i = 1
        End If
        If EMail.Text.Length < 1 Then
            i = 1
        Else
            Dim pattern As String
            pattern = "^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"
            If Regex.IsMatch(EMail.Text, pattern) Then
                If EMail.Text.Contains("@vodafone.com") Or EMail.Text.Contains("@kabeldeutschland.de") Or EMail.Text.Contains("@gate.de") Or EMail.Text.Contains("@huawei.com") Then

                Else
                    i = 1
                    fehler.Text = "Leider hast Du keine Teilnahmeberechtigung.<br />Diese Aktion richtet sich ausschließlich an Vodafone-Mitarbeiter."

                End If
            Else
                i = 1
                fehler.Text = "Ungültige E-Mail-Adresse."
            End If
        End If
        If FUpload.HasFile = False Then
            i = 1
            fehler.Text = fehler.Text & "<br />Keine Datei ausgewählt"
        End If
        If teilnahmebedingungen.Checked = False Then
            i = 1
            fehler.Text = fehler.Text & "<br />Akzeptiere bitte die Teilnahmebedingungen."
        End If
        Return i
    End Function

    Public Function speichern() As Integer
        Dim i As Integer = 0
        Dim command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        command = "Insert into Giga_Cube_Campus (Name, EMail) values ('" & Name.Text & "', '" & EMail.Text & "')"
        Try
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        command = "Select max(id) from Giga_Cube_Campus"
        Try
            Dim commando As New SqlCommand(command, con)
            i = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return i
    End Function

    Public Sub hochladen(ByVal datensatz As Integer)
        Dim image As Bitmap
        If TestImageSize_ipad(FUpload.PostedFile.InputStream) = 1 Then
            image = ResizeImage_quer(FUpload.PostedFile.InputStream, 1280)
        Else
            image = ResizeImage(FUpload.PostedFile.InputStream, 1280)
            image.RotateFlip(System.Drawing.RotateFlipType.Rotate90FlipNone)
        End If
        image.Save(Server.MapPath("Teilnehmer_Bilder/") & datensatz & ".jpg")
        Dim image2 As Bitmap
        If TestImageSize_ipad(FUpload.PostedFile.InputStream) = 1 Then
            image2 = ResizeImage(FUpload.PostedFile.InputStream, 272)
        Else
            image2 = ResizeImage(FUpload.PostedFile.InputStream, 272)
            image2.RotateFlip(System.Drawing.RotateFlipType.Rotate90FlipNone)
        End If
        image2.Save(Server.MapPath("Teilnehmer_Bilder_Mail/") & datensatz & ".jpg")
    End Sub

    Public Sub sende_email(ByVal i As Integer)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        Dim mailsub As String
        mailsub = "Dein GigaCube Moment – Nutze Deine Gewinnchance"
        text = "<body style=""font-family: Arial; font-size: 10px; color: #4A4D4E;"">"
        text = text & "    <table style=""width: 600px; font-family: Arial; font-size: 12px; vertical-align: top; color: #4A4D4E; border: 1px solid black;"">"
        text = text & "        <tr>"
        text = text & "            <td style=""vertical-align: top;"">"
text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11px; color: #4A4D4E; vertical-align: top; margin: 0px; padding: 0px;"">"
text = text & "                    <tr>"
text = text & "                        <td colspan=""3"">"
text = text & "                            <div>"
        text = text & "                                <img src=""http://gigacube-gewinnspiel.de/img/Mail_Header.jpg"" alt=""""></div>"
        text = text & "                        </td>"
text = text & "                    </tr>"
text = text & "                    <tr>"
text = text & "                        <td style=""width: 28px;""></td>"
text = text & "                        <td style=""width: 544px; padding-top: 28px;"">"
text = text & "                            <div style=""font-weight: bold; font-size: 14px;"">"
        text = text & "                                <p style=""font-weight: bold; font-size: 14px; color: #4A4D4E;"">Hallo " & Name.Text & ",</p>"
        text = text & "                                <div style=""font-size: 12px; font-weight: normal; color: #4A4D4E;"">"
text = text & "                                    <p>wir freuen uns über Deine Teilnahme an der Vodafone GigaCube Promotion am Campus.</p>"
text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 14px;"" />"
text = text & "                                    <table style=""width: 544px; font-family: Arial; font-size: 12px; color: #4A4D4E;"">"
text = text & "                                        <tr>"
text = text & "                                            <td style=""width: 272px; vertical-align: top;"">"
text = text & "                                                <p style=""font-weight: bold;"">Dein GigaCube Moment</p>"
text = text & "                                                <p>"
        text = text & "                                                    Dein Bild findest Du nun auf der Gewinnspiel Website, wo es darauf wartet, so viele Likes<br />wie möglich zu sammeln.<br>"
        text = text & "                                                    <br />"
        text = text & "                                                    <a href=""http://gigacube-gewinnspiel.de?Bild=" & i & """>"
        text = text & "                                                        <img src=""http://gigacube-gewinnspiel.de/img/zur_galerie.png"" alt="""" /></a>"
        text = text & "                                                </p>"
text = text & "                                            </td>"
text = text & "                                            <td style=""width: 272px; vertical-align: top; text-align: right;"">"
        text = text & "                                                <a href=""http://gigacube-gewinnspiel.de?Bild=" & i & """><img src=""http://gigacube-gewinnspiel.de/Teilnehmer_Bilder_Mail/" & i & ".jpg""  style=""width:272px; height:auto;"" border=""0"" alt="""" /></a></td>"
        text = text & "                                        </tr>"
text = text & "                                    </table>"
text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 14px;"" />"
text = text & "                                    <p style=""margin-top: 0px; font-weight: bold;"">Dein Weg zum Hauptgewinn</p>"
text = text & "                                    <p style=""margin-top: 0px;"">"
text = text & "                                        So einfach geht‘s:<br />"
text = text & "                                        1. Neben dieser Mail erhältst Du eine weitere mit dem Link zur Gewinnspielseite.<br>"
text = text & "                                        2. Leite diese an möglichst viele Kollegen und Freunde weiter, damit sie für Dich voten können.<br>"
        text = text & "                                        3. Jedes einzelne „Gefällt mir“" unter Deinem Bild bringt Dich dem Hauptgewinn näher.<br>"
        text = text & "                                        4. Der GigaCube Moment mit den meisten Likes* gewinnt!"
        text = text & "                                    </p>"
text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 0px;"" />"
text = text & "                                    <p>"
        text = text & "                                        Aber Achtung: Die Seite ist nur noch bis Donnerstag, 11.05.2017 um 12:00 Uhr erreichbar.<br>"
        text = text & "                                        Wir wünschen Dir viel Glück!"
text = text & "                                    </p>"
text = text & "                                    <p style=""font-weight: bold;"">"
        text = text & "                                        <br /> Dein<br />Vodafone Promotion-Team<br />"
        text = text & "                                        <br />"
        text = text & "                                    </p>"
        text = text & "                                <p style=""font-size: 8px; color: #4A4D4E;"">* Die Auslobung der Hauptgewinne erfolgt aus den Gewinnern von Düsseldorf (Promotion am 04.05.2017) und Unterföhring (Promotion am 10.05.2017).<br /><br /></p>"
        text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 0px;"" />"
text = text & "                                </div>"
text = text & "                                <table style=""width: 544px; font-family: Arial; color: #4A4D4E; font-size: 11px;"">"
text = text & "                                    <tr>"
text = text & "                                        <td style=""width: 544px;"">"
text = text & "                                            <table style=""width: 544px; font-family: Arial; font-size: 11px;"">"
text = text & "                                                <tr>"
text = text & "                                                    <td>"
text = text & "                                                        <p style=""margin-top: 14px; color: #4A4D4E;"">"
text = text & "                                                            <a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #4A4D4E;""><b>Impressum</b></a>&nbsp;<a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"" style=""text-decoration: none; color: #4A4D4E;""><b>Datenschutz</b></a>&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;                                            <a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #4A4D4E;""><b>vodafone.de</b></a>&nbsp;<a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a><br>"
text = text & "                                                            Copyright                                            © 2017 Vodafone GmbH                                       "
text = text & "                                                        </p>"
text = text & "                                                    </td>"
text = text & "                                                    <td style=""width: 150px; vertical-align: bottom;""><a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
text = text & "                                                        <img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px; width: 27px;"" border=""0""></a>                                    </td>"
text = text & "                                                </tr>"
text = text & "                                            </table>"
text = text & "                                        </td>"
text = text & "                                        </tr>"
text = text & "                                </table>"
text = text & "                                </div> "
text = text & "                        </td>"
text = text & "                        <td style=""width: 29px;""></td>"
text = text & "                    </tr>"
text = text & "                </table>"
text = text & "            </td>"
text = text & "        </tr>"
text = text & "    </table>"
text = text & "    </body> "
        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("info@gigacube-gewinnspiel.de", "GigaCube")
            da = New Net.Mail.MailAddress(EMail.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub

            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")

            message.AlternateViews.Add(htmlview)
            'message.Bcc.Add("dirk.ridder@gate.de")


            instance.Send(message)
        Catch ex As Exception

        End Try
    End Sub

    Public Sub sende_email_freunde(ByVal i As Integer)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        Dim mailsub As String
        mailsub = "Dein Like für den besten GigaCube Moment zählt!"

        text = "<body style=""font-family: Arial; font-size: 10px; color: #4A4D4E;"">"
        text = text & "    <table style=""width: 600px; font-family: Arial; font-size: 12px; valign: top; color: #4A4D4E; border: 1px solid black;"">"
        text = text & "        <tr>"
        text = text & "            <td style=""vertical-align: top;"">"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11px; color: #4A4D4E; valign: top; margin: 0px; padding: 0px;"">"
        text = text & "                    <tr>"
        text = text & "                        <td colspan=""3"">"
        text = text & "                            <div>"
        text = text & "                                <img src=""http://gigacube-gewinnspiel.de/img/Mail_Header.jpg"" alt=""""></div>"
        text = text & "                        </td>"
        text = text & "                    </tr>"
        text = text & "                    <tr>"
        text = text & "                        <td style=""width: 28px;""></td>"
        text = text & "                        <td style=""width: 544px; padding-top: 28px;"">"
        text = text & "                            <div style=""font-weight: bold; font-size: 14px;"">"
        text = text & "                                <p style=""font-weight: bold; font-size: 14px; color: #4A4D4E;"">Liebe Kollegen und Freunde,</p><div style=""font-size:12px; font-weight:normal;color:#4A4D4E;""><p><b style=""font-size:14px"";>" & Name.Text & "</b> hat heute den GigaCube entdeckt und uns den GigaCube Moment der Promotion gezeigt.</p><hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 14px;"">"
        text = text & "                                    <table style=""width: 544px; font-family: Arial; font-size: 12px; color: #4A4D4E;"">"
        text = text & "                                        <tr>"
        text = text & "                                            <td style=""width: 272px; vertical-align: top;"">"
        text = text & "                                                <p style=""font-weight: bold;"">Mit Deiner Hilfe zum Gewinn!</p>"
        text = text & "                                                <p>"
        text = text & "                                                    Jetzt ist " & Name.Text & " bereit für den nächsten GigaCube Moment: eine Woche Urlaub in einem Baumhaushotel. Stimm jetzt auf der Gewinnspielseite für das Bild ab, denn das Bild mit den meisten Likes gewinnt.<br>"
        text = text & "                                                    <br>"
        text = text & "                                                    <a href=""http://gigacube-gewinnspiel.de?Bild=" & i & """>"
        text = text & "                                                        <img src=""http://gigacube-gewinnspiel.de/img/Jetzt_voten.png"" alt=""""></a>"
        text = text & "                                                </p>"
        text = text & "                                            </td>"
        text = text & "                                            <td style=""width: 272px; vertical-align: top; text-align: right;"">"
        text = text & "                                                <a href=""http://gigacube-gewinnspiel.de?Bild=" & i & """><img src=""http://gigacube-gewinnspiel.de/Teilnehmer_Bilder_Mail/" & i & ".jpg"" style=""width:272px; height:auto;"" border=""0"" alt=""""></a></td>"
        text = text & "                                        </tr>"
        text = text & "                                    </table>"
        text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 14px;"">"
        text = text & "                                    <p style=""margin-top: 0px; font-weight: bold;"">Dein Einsatz:</p>"
        text = text & "                                    <p style=""margin-top: 0px;"">"
        text = text & "                                        1. Klicke auf den Link zur Gewinnspielseite.<br>"
        text = text & "                                        2. Vote für das Bild Deines Kollegen und Freundes.<br>"
        text = text & "                                        3. Der GigaCube Moment mit den meisten Likes gewinnt* - Deine Stimme zählt!"
        text = text & "                                    </p>"
        text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 0px;"">"
        text = text & "                                    <p>"
        text = text & "                                        Aber Achtung: Die Seite ist nur noch bis Donnerstag, 04.05.2017 um 12:00 Uhr erreichbar.<br>"
        text = text & "                                        Also keine Zeit verlieren und schnell voten. Vielen Dank!"
        text = text & "                                    </p>"
        text = text & "                                    <p style=""font-weight: bold;"">"
        text = text & "                                        <br>Dein<br>Vodafone Promotion-Team</br>"
        text = text & "                                        </br>"
        text = text & "                                    </p>"
        text = text & "                                <p style=""font-size: 8px; color: #4A4D4E;"">* Die Auslobung der Hauptgewinne erfolgt aus den Gewinnern von Düsseldorf (Promotion am 04.05.2017) und Unterföhring (Promotion am 10.05.2017).<br /><br /></p>"
        text = text & "                                    <hr style=""width: 544px; color: #CCCCCC; margin-top: 14px; margin-bottom: 0px;"">"
        text = text & "                                </div>"
        text = text & "                                <table style=""width: 544px; font-family: Arial; color: #4A4D4E; font-size: 11px;"">"
        text = text & "                                    <tr>"
        text = text & "                                        <td style=""width: 544px;"">"
        text = text & "                                            <table style=""width: 544px; font-family: Arial; font-size: 11px;"">"
        text = text & "                                                <tr>"
        text = text & "                                                    <td>"
        text = text & "                                                        <p style=""margin-top: 14px; color: #4A4D4E;"">"
        text = text & "                                                            <a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #4A4D4E;""><b>Impressum</b></a>&nbsp;<a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"" style=""text-decoration: none; color: #4A4D4E;""><b>Datenschutz</b></a>&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;                                            <a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #4A4D4E;""><b>vodafone.de</b></a>&nbsp;<a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a><br>"
        text = text & "                                                            Copyright                                            © 2017 Vodafone GmbH                                       "
        text = text & "                                                        </p>"
        text = text & "                                                    </td>"
        text = text & "                                                    <td style=""width: 150px; vertical-align: bottom;""><a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
        text = text & "                                                        <img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"" border=""0""></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px; width: 27px;"" border=""0""></a>                                    </td>"
        text = text & "                                                </tr>"
        text = text & "                                            </table>"
        text = text & "                                        </td>"
        text = text & "                                </table>"
        text = text & "                        </td>"
        text = text & "                        <td style=""width: 29px;""></td>"
        text = text & "                    </tr>"
        text = text & "                </table>"
        text = text & "            </td>"
        text = text & "        </tr>"
        text = text & "    </table>"
        text = text & "</body>"
        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("info@gigacube-gewinnspiel.de", "GigaCube")
            da = New Net.Mail.MailAddress(EMail.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            message.Priority = Net.Mail.MailPriority.High

            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")

            message.AlternateViews.Add(htmlview)
            'message.Bcc.Add("dirk.ridder@gate.de")


            instance.Send(message)
        Catch ex As Exception

        End Try

    End Sub

    Private Function ResizeImage(ByVal streamImage As Stream, ByVal maxWidth As Integer) As Bitmap
        Dim originalImage As New Bitmap(streamImage)
        Dim newWidth As Integer = originalImage.Width
        Dim newHeight As Integer = originalImage.Height
        Dim aspectRatio As Double = CDbl(originalImage.Width) / CDbl(originalImage.Height)
        If aspectRatio > 1 Then
            If originalImage.Width > maxWidth Then
                newWidth = maxWidth
                newHeight = CInt(Math.Round(newWidth / aspectRatio))
            End If
            If originalImage.Width < 100 Then
                newWidth = 100
                newHeight = CInt(Math.Round(newWidth / aspectRatio))
            End If
        End If
        Return New Bitmap(originalImage, newWidth, newHeight)
    End Function

    Private Function ResizeImage_quer(ByVal streamImage As Stream, ByVal maxHeight As Integer) As Bitmap
        Dim originalImage As New Bitmap(streamImage)
        Dim newWidth As Integer = originalImage.Width
        Dim newHeight As Integer = originalImage.Height
        Dim aspectRatio As Double = CDbl(originalImage.Height) / CDbl(originalImage.Width)
        If aspectRatio < 1 Then
            If originalImage.Height > maxHeight Then
                newWidth = CInt(Math.Round(maxHeight / aspectRatio))
                newHeight = maxHeight
            End If
            If originalImage.Height < 100 Then
                newWidth = CInt(Math.Round(100 / aspectRatio))
                newHeight = 100
            End If
        End If
        Return New Bitmap(originalImage, newWidth, newHeight)
    End Function

    Private Function TestImageSize(ByVal streamImage As Stream) As Integer
        Dim originalImage As New Bitmap(streamImage)
        Dim width As Integer = originalImage.Width
        Dim height As Integer = originalImage.Height
        If width > height Then

            Return 1
        Else
            Return 0
        End If
    End Function

    Private Function TestImageSize_ipad(ByVal streamImage As Stream) As Integer
        Dim originalImage As New Bitmap(streamImage)
        Dim width As Integer = originalImage.Width
        Dim height As Integer = originalImage.Height
        If width > height Then
            Return 1
        Else
            Return 0
        End If
    End Function
End Class
