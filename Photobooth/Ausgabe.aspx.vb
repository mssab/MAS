
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.IO
Imports System.Net



Partial Class Ausgabe
    Inherits System.Web.UI.Page
    Private bemerkung As Object
    Dim i As Integer = 0
    Dim a As String = ""
    Dim ordnername As String = ""
    Dim datum As String = ""
    Dim dummy As String = ""
    Dim inject As String = ""
    Dim fotodel As String
    Dim hash As String = ""



    Protected Sub druckbtn_Click(sender As Object, e As EventArgs) Handles druckbtn.Click
        'Dim ExterneAnwendung As New System.Diagnostics.Process()
        'ExterneAnwendung.StartInfo.FileName = "http://weihnachtsfoto.vodafone-consumer.de/img/Beispiel.jpg"
        'ExterneAnwendung.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Normal
        'ExterneAnwendung.StartInfo.Verb = "print"
        'ExterneAnwendung.Start()
        'druckbtn.Attributes.Add("onclick", "window.open('http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy)




    End Sub





    Public Sub FotoResult()


        Try
            ordnername = Request.QueryString.Item(0)
        Catch ex As Exception

        End Try
        Try
            datum = Request.QueryString.Item(1)
        Catch ex As Exception

        End Try


        'list the names of all files in the specified directory
        Dim req As FtpWebRequest = WebRequest.Create("ftp://www.gate-multimedia.de/" & datum)
        req.Method = WebRequestMethods.Ftp.ListDirectory
        Select Case ordnername
            Case "Device1"
                req.Credentials = New NetworkCredential("Fotobooth1", "qH4nLA29!")
            Case "Device2"
                req.Credentials = New NetworkCredential("Fotobooth2", "Sw2b7Vgp!")
            Case "Device3"
                req.Credentials = New NetworkCredential("Fotobooth3", "uF3cX8w5!")
            Case Else
                Response.Redirect("https://vodafone.com")
        End Select
        Dim resp As FtpWebResponse = req.GetResponse
        Dim respstream As Stream = resp.GetResponseStream
        Dim reader As StreamReader = New StreamReader(respstream)
        Dim i As Integer = 1
        a = Request.QueryString("Bild")



        While Not reader.EndOfStream
            dummy = reader.ReadLine
            If dummy.Contains(".jpg") And dummy = a Then

                inject = "<img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """ alt="""" border=""0""  style=""width:70%; height: auto; margin-top: 3%; -webkit-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); -moz-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28);"" /></a>"
                fotodel = "ftp://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & ""
                TargetFoto.Text = inject & resultload.Text
            End If
            dummy = a

        End While
        resp.Close()
        reader.Close()

    End Sub


    Protected Sub Senden_Click(sender As Object, e As EventArgs) Handles Senden.Click
        If speichern() = 1 Then
            sende_mail()
            Response.Redirect("Tagesansicht.aspx?id=" & ordnername & "/" & datum)

        Else


            Response.Write("Fehler !")

        End If

        'Response.Redirect("default.aspx?id=" & ordnername)
        'vorname.Text = "http://www.gate-multimedia.de/Fotobooth/" & Request.QueryString.Item(0) & "/" & Request.QueryString.Item(1) 
        ' Dim li As String = "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy

        ' email.Text = li


    End Sub

    Public Sub sende_mail()
        'Dim photo As String = "http://www.gate-multimedia.de/Fotobooth/Device1/05_10_2017/Bild2.jpg"
        'Dim stream As Stream = New FileStream(photo, FileMode.Open, FileAccess.Read)
        'GenerateThumbnails(1.0, stream, "~/img/E.jpg")

        'GenerateThumbnails(1.0, readwrite(photo), "~/img/Mail.jpg")

        inhalt("Name")
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        'Dim text_anrede As String = anrede_herr.Text
        text = ""
        text = "<body style=""font-family:Arial; font-size:10px;color:#4A4D4E;""><table style=""width:600px; font-family:Arial; font-size:12px;valign:top;color:#4A4D4E;border: 1px solid black;""><tr><td style=""vertical-align:top;"">"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11px;color:#4A4D4E;"
        text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
        text = text & "<tr><td colspan=""3""><div><img src=""http://photobooth.gate-internet.de/img/E_Mail_Header.jpg"" alt="""" /></div></td></tr><tr><td style=""width:28px;""></td><td style=""width:544px;padding-top:28px;"">"
        'text = text & "<div style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""><p style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""></p></div>"

        'If anrede_herr.Checked = True Then
        '    text = text & "<div style=""font-weight:bold;font-size:14px;""><p style=""font-weight:bold;font-size:14px;color:#4A4D4E;"">Sehr geehrter Herr " & vorname.Text & ",</p>"
        'Else
        '    text = text & "<div style=""font-weight:bold;font-size:14px;""><p style=""font-weight:bold;font-size:14px;color:#4A4D4E;"">Sehr geehrte Frau " & vorname.Text & ",</p>"
        'End If
        text = text & "<div style=""font-weight:bold;font-size:14px;""><p style=""font-weight:bold;font-size:14px;color:#4A4D4E;"">Sehr geehrter Herr " & vorname.Text & ",</p>"



        Dim mailsub As String

        mailsub = "Fotobooth – Dein Foto"


        text = text & "<div style=""font-size:12px; font-weight:normal;color:#f20c0c;"">"
        text = text & "<p><b>Dein Vodafone Selfie – jetzt downloaden und mit Freunden teilen</b></p>"


        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"
        text = text & "<table style=""width:544px; font-family:Arial; font-size:12px;color:#4A4D4E;"">"

        'text = text & "<tr><td style=""width:272px;vertical-align:top;"">Diese SWIPE Funktion findest Du auch in den neuen Vodafone Young-Tarifen, wo Du flexibel deine Flats gegen mehr Daten tauschen kannst. Jeden Monat anders und ohne Mehrkosten.<br />Das Erklärvideo haben wir hier für Dich online gestellt. Schau gleich rein und informiere Dich.<br /><br /><a href=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """><img src=""http://www.weihnachtsfoto.vodafone-consumer.de/img/button_zum_video.png"" alt="""" /></a></td>"

        text = text & "<tr><td style=""width:272px;vertical-align:top;"">Du hast an der Selfie Box in Deinem Vodafone Shop in Oberhausen Dein spezielles Selfie gemacht.<br /><p>Schau es Dir an, downloade es oder teile es direkt auf Facebook mit Deinen Freunden. Vielleicht haben Deine Freunde ebenfalls Lust auf Ihr Vodafone Selfie?</p><br/>Wir wünschen Dir viel Freude mit dem Bild!<br/><br/>Beste Grüße <br/>Dein Vodafone Promotion-Team<br /><br /><a href=""" & "http://photobooth.gate-internet.de/foto.aspx?id=" & hash & """/><img src=""" & "http://photobooth.gate-internet.de/img/Button_Zu_Deinem_Foto.png"" /></a></td>"

        text = text & "<td style=""width:272px;vertical-align:top;text-align:right;""><a href=""http://photobooth.gate-internet.de/foto.aspx?id=" & hash & """><img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Small/" & a & """ border=""0"" alt="""" /></a></td></tr><br/>"

        'text = text & "<td style=""width:272px;vertical-align:top;text-align:right;""><a href=""http://photobooth.gate-internet.de/foto.aspx?id=" & hash & """><img src=""http://photobooth.gate-internet.de/img/Mail.jpg"" border=""0"" alt="""" /></a></td></tr>"

        'text = text & "<td style=""width:300px;height:auto;vertical-align:right;""><a href=""" & "http://photobooth.gate-internet.de/foto.aspx?id=" & hash & """/><img src=""" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & " style=""float: right; width:300; height:auto;"" "" /></a></td>"
        'text = text & "<tr><td><a href=""" & "http://photobooth.gate-internet.de/foto.aspx?id=" & hash & "><img src=""" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """ border=""0"" alt="""" /></a></td></tr>"
        'text = text & "<td style=""width:200px;vertical-align:top;text-align:right;""><a href=""" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & "><img src=" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """ border=""0"" alt="""" /></a></td>"

        'text = text & "<tr><td style=""width:272px;vertical-align:top;""><a href=""" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & "><img src=""" & " http://photobooth.gate-internet.de/img/Button_Zu_Deinem_Foto.png "" /></a></td></tr>"

        'text = text & "<tr><td style=""verical-align:top;""><a href=""" & "http://photobooth.gate-internet.de/foto.aspx?id=" & hash & """/><img src=""" & "http://photobooth.gate-internet.de/img/Button_Zu_Deinem_Foto.png"" /></a></td></tr>"

        text = text & "</table>"
        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"

        'text = text & "<p style=""margin-top:0px;"">Damit auch Deine Freunde an Deinem Weihnachtsfoto teilhaben können, findest Du angefügt<br />die digitale Version. Viel Spaß mit dem Bild!</p>"
        'text = text & "<p>Dein<br />Vodafone Promotion-Team</p>"


        'text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:0px;"" />"

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
        text = text & "                                            © 2017 Vodafone GmbH"
        text = text & "                                        </p>"


        'text = text & "                                        Ordnername: " & ordnername & "<br />"
        'text = text & "                                        Dummy: " & dummy & "<br />"
        'text = text & "                                        Bildlink: " & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Small/" & dummy & "<br />"
        'text = text & "                                        Bildlink mit Hash: " & "http://photobooth.gate-internet.de/foto.aspx?id=" & hash & "<br />"
        'text = text & "                                        </p>"


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
            de = New Net.Mail.MailAddress("Selfibox@vodafone-consumer.de", "Dein Foto")
            da = New Net.Mail.MailAddress(email.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(htmlview)
            message.IsBodyHtml = True
            message.Priority = Net.Mail.MailPriority.High
            'Dim miss As New Net.Mail.Attachment(Server.MapPath("ausgabe_fotos/Bild_neu" & Request.QueryString.Item(0) & ".jpg"))
            'Dim miss As New Net.Mail.Attachment("http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy)

            'miss.Name = "Ihr Foto.jpg"
            ' message.Attachments.Add(miss)
            'message.Bcc.Add("carina.heine@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            instance.Send(message)

        Catch ex As Exception
            liste(0) = ex.ToString
        End Try

        'Response.Redirect("default.aspx?id=" & ordnername & "/" & datum)
        Response.Redirect("Tagesansicht.aspx?id=" & ordnername & "&" & datum)
    End Sub



    Protected Function analyse() As Integer
        Dim er As Integer
        'radioCheck(anrede_frau, anrede_herr, er)
        check(vorname, er)
        check(email, er)
        email_checker(email, er)
        Return er
    End Function

    'Public Sub emailUpDwon()

    '    If PanelEmailform.Visible = True Then
    '        PanelEmailform.Visible = False
    '        'emailTab.Text = "Per E-Mail"
    '    Else
    '        PanelEmailform.Visible = True
    '        'emailTab.Text = "Abrechen"
    '    End If

    'End Sub


    Private Sub Ausgabe_Init(sender As Object, e As EventArgs) Handles Me.Init
        'PanelEmailform.Visible = False
        FotoResult()
    End Sub
    Protected Sub abrechen_Click(sender As Object, e As EventArgs) Handles abrechen.Click
        '  emailUpDwon()

        'vorname.Text = "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy

    End Sub
    Protected Sub DeletBtn_Click(sender As Object, e As EventArgs) Handles DeleteBtn.Click

        deleteFromServer()

        'deleteFoto()

    End Sub


    Public Sub deleteFromServer()

        Try
            ordnername = Request.QueryString.Item(0)

        Catch ex As Exception

        End Try

        Try
            datum = Request.QueryString.Item(1)
        Catch ex As Exception

        End Try
        Try
            dummy = Request.QueryString.Item(2)

        Catch ex As Exception

        End Try


        'list the names of all files in the specified directory
        Dim req As FtpWebRequest = WebRequest.Create("ftp://www.gate-multimedia.de/" & dummy)
        Select Case ordnername
            Case "Device1"
                req.Credentials = New NetworkCredential("Fotobooth1", "qH4nLA29!")
            Case "Device2"
                req.Credentials = New NetworkCredential("Fotobooth2", "Sw2b7Vgp!")
            Case "Device3"
                req.Credentials = New NetworkCredential("Fotobooth3", "uF3cX8w5!")
            Case Else
                Response.Redirect("https://vodafone.com")
        End Select

        req.Method = Net.WebRequestMethods.Ftp.DeleteFile


        Dim responseFileDelete As Net.FtpWebResponse = req.GetResponse

        Response.Redirect("Tagesansicht.aspx?id=" & ordnername & "&" & datum)


    End Sub

    Private Sub resultload_Init(sender As Object, e As EventArgs) Handles resultload.Init


    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Response.Redirect("Ausgabe.aspx?Device=" & ordnername & "&Datum=" & datum)
        Response.Redirect("default.aspx?id=" & ordnername)
    End Sub

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
    Public Function check(ByVal box As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        If box.Text.Length < 1 Then
            i = 1
            box.BackColor = Drawing.Color.FromArgb(219, 165, 165)
        Else
            box.BackColor = Drawing.Color.White
        End If
        Return i
    End Function

    Public Function radioCheck(ByVal radio1 As RadioButton, ByVal radio2 As RadioButton, lauf As Integer)
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

    Public Sub deleteFoto()


        Try
            ordnername = Request.QueryString.Item(0)
        Catch ex As Exception

        End Try
        Try
            datum = Request.QueryString.Item(1)
        Catch ex As Exception

        End Try


        'list the names of all files in the specified directory
        Dim req As FtpWebRequest = WebRequest.Create("ftp://www.gate-multimedia.de/" & datum)
        req.Method = WebRequestMethods.Ftp.DeleteFile
        Select Case ordnername
            Case "Device1"
                req.Credentials = New NetworkCredential("Fotobooth1", "qH4nLA29!")
            Case "Device2"
                req.Credentials = New NetworkCredential("Fotobooth2", "Sw2b7Vgp!")
            Case "Device3"
                req.Credentials = New NetworkCredential("Fotobooth3", "uF3cX8w5!")
            Case Else
                Response.Redirect("https://vodafone.com")
        End Select
        'Dim resp As FtpWebResponse = req.GetResponse
        'Dim respstream As Stream = resp.GetResponseStream
        'Dim reader As StreamReader = New StreamReader(respstream)
        Dim i As Integer = 1
        a = Request.QueryString("Bild")



        'While Not reader.EndOfStream
        '    dummy = reader.ReadLine
        If dummy.Contains(".jpg") And dummy = a Then

            inject = "<img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """ alt="""" border=""0""  style=""width:500px;  margin-top:10px; margin-right:10px;"" /></a>"
            fotodel = "ftp://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & ""
            TargetFoto.Text = inject & resultload.Text
        End If

        'End While
        'resp.Close()
        'reader.Close()

    End Sub

    Public Function speichern() As Integer
        Dim erfolg As Integer = 0

        Dim Command As String = ""
        Dim Command1 As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        Command1 = "select top 1 Hash From [dbo].[Photobooth] WHERE Hash_vergeben = 0 "

        Dim commando1 As New SqlCommand(Command1, con)
        hash = commando1.ExecuteScalar


        Command = "update [dbo].[Photobooth] set"
        'If anrede_frau.Checked = True Then
        '    Command = Command & " Anmeldung_Anrede = 'Frau',"
        'Else
        '    Command = Command & " Anmeldung_Anrede = 'Herr',"
        'End If
        Command = Command & " Name = '" & Format(vorname.Text) & "',"
        'Command = Command & " Anmeldung_Nachname = '" & Format(nachname.Text) & "',"
        Command = Command & " Email = '" & Format(email.Text) & "',"
        Command = Command & " Name_Bild = '" & "http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & Request.QueryString.Item(2) & "',"
        'Command = Command & " Hash = '" & hash.ToString() & "',"
        Command = Command & " Hash_vergeben = 1,"
        Command = Command & " Device = '" & Request.QueryString.Item(0) & "',"

        Command = Command & " Datum = '" & Date.Now.ToShortDateString & " " & Date.Now.ToShortTimeString & "' where hash = '" & hash & "'"

        Try

            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception
            vorname.Text = Command
        End Try
        con.Close()
        con.Dispose()

        Return erfolg
    End Function

    Public Function inhalt(ByVal loca As String) As String
        Dim ergebnis As String = ""
        If Request.QueryString.HasKeys Then
            Dim Command As String
            Command = "SELECT " & loca & " FROM Photobooth WHERE Hash = '" & Request.QueryString.Item(0) & "'"
            Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
            con.Open()
            Try
                Dim commando As New SqlCommand(Command, con)
                ergebnis = commando.ExecuteScalar
            Catch ex As Exception

            End Try
            con.Close()
            con.Dispose()
        End If

        Return ergebnis

    End Function


    Public Function IfWReqFileExist(ByVal strUri As String, ByVal wcode As String) As Boolean
        Dim checker As Integer = 0
        Try
            Dim WReq As WebRequest = WebRequest.Create(strUri)
            Dim WResp As WebResponse = WReq.GetResponse()

            If (WResp.ResponseUri.ToString.Contains(wcode)) Then
                checker = 1
            Else
                checker = 0
            End If

            WResp.Close()
        Catch

        End Try
        If checker = 1 Then
            Return True
        Else
            Return False
        End If
    End Function

    Protected Sub upload(ByVal upload As FileUpload, ByVal filePath As String)
        Dim inputStr As Stream = upload.PostedFile.InputStream

        filePath = Server.MapPath("img/E.jpg")
        upload.SaveAs(filePath)


    End Sub

    Private Sub GenerateThumbnails(ByVal scaleFactor As Double, ByVal sourcePath As Stream, ByVal targetPath As String)
        Using image As Image = Image.FromStream(sourcePath)
            Dim newWidth As Integer = CInt(image.Width * scaleFactor)
            Dim newHeight As Integer = CInt(image.Height * scaleFactor)
            Dim thumbnailImg As Bitmap = New Bitmap(newWidth, newHeight)
            Dim thumbGraph As Graphics = Graphics.FromImage(thumbnailImg)
            thumbGraph.CompositingQuality = CompositingQuality.HighQuality
            thumbGraph.SmoothingMode = SmoothingMode.HighQuality
            thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic
            Dim imageRectangle As Rectangle = New Rectangle(0, 0, newWidth, newHeight)
            thumbGraph.DrawImage(image, imageRectangle)
            thumbnailImg.Save(targetPath, image.RawFormat)
        End Using
    End Sub


    Function readwrite(ByVal url As String)
        ' Specify a file to read from and to create.
        Dim pathSource As String = url
        Dim pathNew As String = "~/img/Th.jpg"
        Try
            Using fsSource As FileStream = New FileStream(pathSource, _
                FileMode.Open, FileAccess.Read)
                ' Read the source file into a byte array.
                Dim bytes() As Byte = New Byte((fsSource.Length) - 1) {}
                Dim numBytesToRead As Integer = CType(fsSource.Length, Integer)
                Dim numBytesRead As Integer = 0

                While (numBytesToRead > 0)
                    ' Read may return anything from 0 to numBytesToRead.
                    Dim n As Integer = fsSource.Read(bytes, numBytesRead, _
                        numBytesToRead)
                    ' Break when the end of the file is reached.
                    If (n = 0) Then
                        Exit While
                    End If
                    numBytesRead = (numBytesRead + n)
                    numBytesToRead = (numBytesToRead - n)

                End While
                numBytesToRead = bytes.Length

                ' Write the byte array to the other FileStream.
                Using fsNew As FileStream = New FileStream(pathNew, _
                    FileMode.Create, FileAccess.Write)
                    fsNew.Write(bytes, 0, numBytesToRead)
                End Using
            End Using
        Catch ioEx As FileNotFoundException
            Console.WriteLine(ioEx.Message)
        End Try
    End Function

End Class
