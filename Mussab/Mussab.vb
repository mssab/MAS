Imports System.Data.SqlClient
Imports System.Security.Cryptography
Imports Microsoft.VisualBasic

Public Class Mussab

    Public Sub sende_mail(ByVal vonWem As String, ByVal subject As String, ByVal zuWem As String, ByVal Name As String)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        'Dim text_anrede As String = anrede_herr.Text
        text = ""
        text = "<body style=""font-family:Arial; font-size:10px;color:#4A4D4E;""><table style=""width:600px; font-family:Arial; font-size:12px;valign:top;color:#4A4D4E;border: 1px solid black;""><tr><td style=""vertical-align:top;"">"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11px;color:#4A4D4E;"
        text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
        text = text & "<tr><td colspan=""3""><div><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/E_Mail_Header.jpg"" alt="""" /></div></td></tr><tr><td style=""width:28px;""></td><td style=""width:544px;padding-top:28px;"">"
        'text = text & "<div style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""><p style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""></p></div>"


        text = text & "<div style=""font-weight:bold;font-size:14px;""><p style=""font-weight:bold;font-size:14px;color:#4A4D4E;"">Sehr geehrter Herr " & Name & ",</p>"



        Dim mailsub As String

        mailsub = "Fotobooth – Dein Foto"


        text = text & "<div style=""font-size:12px; font-weight:normal;color:#4A4D4E;"">"
        text = text & "<p>wir hoffen, Du hattest viel Spaß bei unserer kleinen SWIPE IT Promotion am Vodafone Campus.</p>"


        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"
        text = text & "<table style=""width:544px; font-family:Arial; font-size:12px;color:#4A4D4E;"">"

        text = text & "<tr><td style=""width:272px;vertical-align:top;"">Diese SWIPE Funktion findest Du auch in den neuen Vodafone Young-Tarifen, wo Du flexibel deine Flats gegen mehr Daten tauschen kannst. Jeden Monat anders und ohne Mehrkosten.<br />Das Erklärvideo haben wir hier für Dich online gestellt. Schau gleich rein und informiere Dich.<br /><br /><a href=""http://www.vodafone-consumer.de/swipe/""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/button_zum_video.png"" alt="""" /></a></td>"
        text = text & "<td style=""width:272px;vertical-align:top;text-align:right;""><a href=""http://www.vodafone-consumer.de/swipe/""><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/video.png"" border=""0"" alt="""" /></a></td></tr>"

        text = text & "</table>"
        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"

        text = text & "<p style=""margin-top:0px;"">Damit auch Deine Freunde an Deinem Weihnachtsfoto teilhaben können, findest Du angefügt<br />die digitale Version. Viel Spaß mit dem Bild!</p>"
        text = text & "<p>Dein<br />Vodafone Promotion-Team</p>"



        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:0px;"" />"


        text = text & "</div>"


        text = text & "                <table style=""width: 544px; font-family: Arial; color:#4A4D4E; font-size: 11px;"">"
        text = text & "                    <tr>"

        text = text & "                        <td style=""width: 544px;"">"

        text = text & "                            <table style=""width: 544px; font-family: Arial; font-size: 11px;"">"
        text = text & "                                <tr>"
        text = text & "                                    <td>"
        text = text & "                                        <p style=""margin-top: 14px; color: #4A4D4E;"">"
        text = text & "                                            <a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #4A4D4E;"">"
        text = text & "                                                <b>Impressum</b></a>&nbsp;<a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none;"
        text = text & "                                                    color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
        text = text & "                                                        style=""text-decoration: none; color: #4A4D4E;""><b>Datenschutz</b></a>&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
        text = text & "                                                            style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;"
        text = text & "                                            <a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #4A4D4E;""><b>vodafone.de</b></a>&nbsp;<a"
        text = text & "                                                href=""http://www.vodafone.de"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a><br>Copyright"
        text = text & "                                            © 2016 Vodafone GmbH"
        text = text & "                                        </p>"
        text = text & "                                    </td>"
        text = text & "                                    <td style=""width: 150px; vertical-align: bottom;"">"
        text = text & "                                        <a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
        text = text & "                                            <img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img"
        text = text & "                                                    src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                    border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img"
        text = text & "                                                        src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                        border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img"
        text = text & "                                                            src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px;"
        text = text & "                                                            width: 27px;"" border=""0"" /></a>"
        text = text & "                                    </td>"
        text = text & "                                </tr>"
        text = text & "                            </table>"
        text = text & "                        </td>"
        text = text & "                </table>"
        text = text & "</td><td style=""width:29px;""></td></tr></table>"
        text = text & "</td></tr></table>"
        Dim liste(0) As String
        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress(vonWem, subject)
            da = New Net.Mail.MailAddress(zuWem)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(htmlview)
            message.IsBodyHtml = True
            message.Priority = Net.Mail.MailPriority.High
            'Dim miss As New Net.Mail.Attachment(Server.MapPath("ausgabe_fotos/Bild_neu" & Request.QueryString.Item(0) & ".jpg"))
            ' Dim miss As New Net.Mail.Attachment(Server.MapPath("http://www.gate-multimedia.de/Fotobooth/" & Request.QueryString.Item(0) & "/" & Request.QueryString.Item(1)))

            ' miss.Name = "Fotobooth - Ihr Foto.jpg"
            'message.Attachments.Add(miss)
            'message.Bcc.Add("carina.heine@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            instance.Send(message)
        Catch ex As Exception
            liste(0) = ex.ToString
        End Try
        'Response.Redirect("Ausgabe.aspx")
    End Sub

    Public Function InsertIntoToTable(ByVal DBTable As String, ByVal anrede As String, ByVal vorname As String, ByVal nachname As String, ByVal email As String) As String
        Dim Command As String
        Dim sicher As Integer = 0
        Dim ticketnummer As Integer = 0
        Dim ticket As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        Command = "Select count(id) from [vodafone].[dbo].[CEO_Tour_Versendung_2017] where [EMail] = '" & email & "'"

        Dim abfrage As Integer = 0
        Try
            Dim commando As New SqlCommand(Command, con)
            abfrage = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try
        If abfrage < 1 Then
            Command = "INSERT INTO " & DBTable & " ([Anrede],[Vorname],[Nachname],[EMail],[Location], [Typ]) VALUES ('" & anrede & "','" & vorname & "' ,'" & nachname & "' ,'" & email & "','', 'Nachmeldung')"

            Dim insert_erfolg As Integer = 0
            Try
                Dim commando As New SqlCommand(Command, con)
                insert_erfolg = commando.ExecuteNonQuery
            Catch ex As Exception

            End Try
        End If


        con.Close()
        con.Dispose()
        Return 1
    End Function

    Public Function ChechBoxChecker(ByVal dum As CheckBox) As Integer
        Dim re As Integer = 0
        If dum.Checked = True Then
            re = 1
        Else
            re = 0
        End If
        Return re
    End Function

    Public Function RadioChecker(ByVal radio1 As RadioButton, ByVal radio2 As RadioButton, lauf As Integer) As Integer
        Dim i As Integer = lauf

        If radio1.Checked = False And radio2.Checked = False Then
            i = 1
            radio1.BackColor = Drawing.Color.FromArgb(219, 165, 165)
            radio2.BackColor = Drawing.Color.FromArgb(219, 165, 165)
        Else
            radio1.BackColor = Drawing.Color.White
            radio2.BackColor = Drawing.Color.White

        End If
        Return i
    End Function

    Public Function email_checker(ByVal checker_email As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        ' RegEx-Klassenobjekt erstellen
        Dim oRegEx As System.Text.RegularExpressions.Regex

        ' Vergleichsmuster
        Dim sPattern As String = "^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$"

        With oRegEx
            ' Syntax der EMail-Adresse prüfen
            If Not Regex.IsMatch(checker_email.Text, sPattern) Then
                ' Syntax entspricht nicht dem Muster!

                checker_email.BackColor = Drawing.Color.FromArgb(219, 165, 165)
                i = 1
            Else
                checker_email.BackColor = Drawing.Color.White
            End If
        End With
        Return i
    End Function

    Public Function MD5StringHash(ByVal strString As String) As String
        Dim MD5 As New MD5CryptoServiceProvider
        Dim Data As Byte()
        Dim Result As Byte()
        Dim Res As String = ""
        Dim Tmp As String = ""

        Data = Encoding.ASCII.GetBytes(strString)
        Result = MD5.ComputeHash(Data)
        For i As Integer = 0 To Result.Length - 1
            Tmp = Hex(Result(i))
            If Len(Tmp) = 1 Then Tmp = "0" & Tmp
            Res += Tmp
        Next

        Return Res
    End Function


End Class
