Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
Imports System.Drawing

Partial Class _email
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'Dim ip_adresse As String = Request.UserHostAddress.ToString
        'If ip_adresse = "87.139.116.248" Or ip_adresse = "78.132.65.195" Then

        'Else
        '    Response.Redirect("https://www.vodafone.de")
        'End If


    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender




    End Sub


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

    Protected Sub btn_senden_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_senden.Click
        Dim command As String = ""
        Dim id As Integer = 0
        Dim Akkreditiert As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        '*** Speichern der Daten ***
        If analyse() = 0 Then
            Dim pruefung As Integer = 0
            Dim nachname_sql, vorname_sql, email_sql, telefonnummer_sql, adresse_sql, plz_sql, ort_sql, akkreditierungsIP_sql, akkreditierungszeitpunkt_sql As String
            nachname_sql = Format(nachname.Text)
            vorname_sql = Format(vorname.Text)
            email_sql = Format(email.Text)
            telefonnummer_sql = Format(telefonnummer.Text)
            adresse_sql = Format(adresse.Text)
            plz_sql = Format(plz.Text)
            ort_sql = Format(ort.Text)
            akkreditierungszeitpunkt_sql = DateTime.Now.ToString("dd.MM.yyyy, HH:mm:ss")
            akkreditierungsIP_sql = HttpContext.Current.Request.ServerVariables("REMOTE_ADDR")
            command = "INSERT INTO [dbo].[Giga_Cube_TN] ([Vorname],[Nachname],[Adresse],[PLZ],[Ort],[EMail],[Mobilfunk],[Team],[Datum],[IP]) VALUES ('" & vorname_sql & "' ,'" & nachname_sql & "' ,'" & adresse_sql & "' ,'" & plz_sql & "' ,'" & ort_sql & "' ,'" & email_sql & "' ,'" & telefonnummer_sql & "' ,'Team3' ,'" & akkreditierungszeitpunkt_sql & "' ,'" & akkreditierungsIP_sql & "')"
            Try
                Dim commando As New SqlCommand(command, con)
                pruefung = commando.ExecuteNonQuery()

            Catch ex As Exception

            End Try
            If pruefung = 1 Then
                eingabe.Visible = False
                ausgabe.Visible = True
                ergebnis.Text = "Du bist für die Verlosung registriert."
                btn_senden.Visible = False
                Button1.Visible = True
                sende_email()
            End If

        End If
        con.Close()
        con.Dispose()
    End Sub

    Protected Function analyse() As Integer
        Dim fehler As Integer = 0
        fehler = check(plz, fehler)
        fehler = check(vorname, fehler)
        fehler = check(nachname, fehler)
        fehler = check(ort, fehler)
        fehler = check(adresse, fehler)
        fehler = check(telefonnummer, fehler)
        fehler = check(email, fehler)
        fehler = email_checker(email, fehler)
        If Teilnahmebedingungen.Checked = False Then
            fehler = 1
            fehler_teilnahme.Visible = True
        Else
            fehler_teilnahme.Visible = False
        End If
        Return fehler
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

                checker_email.BorderColor = Drawing.Color.Red
                i = 1
            Else
                checker_email.BorderColor = Drawing.Color.White
            End If
        End With
        Return i
    End Function

    Public Function check(ByVal box As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        If box.Text.Length < 1 Then
            i = 1
            box.BorderColor = Drawing.Color.Red
        Else
            box.BorderColor = Drawing.Color.White
        End If
        Return i
    End Function

    Private Sub _Default_Init(sender As Object, e As EventArgs) Handles Me.Init

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Default.aspx")
    End Sub

    Public Sub sende_email()

        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        Dim mailsub As String
        mailsub = "Vodafone GigaCube - Du bist in der Hauptverlosung!"
        text = ""
        text = "<body style=""font-family:Arial; font-size:10px;color:#4A4D4E;""><table style=""width:600px; font-family:Arial; font-size:12px;valign:top;color:#4A4D4E;border: 1px solid black;""><tr><td style=""vertical-align:top;"">"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11px;color:#4A4D4E;"
        text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
        text = text & "<tr><td colspan=""3""><div><img src=""http://gigacube-gewinnspiel.de/img/E_Mail_Header.jpg"" alt="""" /></div></td></tr><tr><td style=""width:28px;""></td><td style=""width:544px;padding-top:28px;"">"
        'text = text & "<div style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""><p style=""font-weight:bold;font-size:22px;color:#E60000;margin-top:28px;margin-bottom:28px;""></p></div>"



        text = text & "<div style=""font-weight:bold;font-size:14px;""><p style=""font-weight:bold;font-size:14px;color:#4A4D4E;"">Hallo " & vorname.Text & ",</p>"





        text = text & "<div style=""font-size:12px; font-weight:normal;color:#4A4D4E;"">"

        text = text & "<p>vielen Dank für Deine Teilnahme an der GigaCube Promotion in Deinem Vodafone Shop.</p>"

        text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"
        text = text & "<table style=""width:544px; font-family:Arial; font-size:12px;color:#4A4D4E;"">"

        text = text & "<tr><td style=""width:272px;vertical-align:top;"">"

        text = text & "<p>Du hast es geschafft - Dein Stecker hat Dir Glück gebracht und Du konntest Dich für die Hauptverlosung registrieren. Nun heißt es Daumen drücken, dass Du am Ende der Promotion aus allen Teilnehmern gezogen wirst und eine Woche Urlaub in einem Baumhaushotel für 4 Personen teilnehmen kannst.</p>"
        text = text & "<p>Du hast auch Interesse am neuen Vodafone GigaCube? Dann informiere Dich hier.</p>"
        text = text & "<p><a href=""http://gigacube-gewinnspiel.de/""><img src=""http://gigacube-gewinnspiel.de/img/zum_gewinnspiel.png"" border=""0"" alt="""" /></a></p>"
        text = text & "<p style=""margin-top:0px;"">Viel Glück!</p>"
        text = text & "<p>Dein<br />Vodafone Promotion Team</p>"
        text = text & "</td>"
        text = text & "<td style=""width:272px;vertical-align:top;text-align:right;""><a href=""http://gigacube-gewinnspiel.de/""><img src=""http://gigacube-gewinnspiel.de/img/Bilder_E_Mail_GigaCube.jpg"" border=""0"" alt="""" /></a></td></tr>"

        text = text & "</table>"
        'text = text & "<hr style=""width:544px; color:#CCCCCC; margin-top:14px; margin-bottom:14px;"" />"
        'text = text & "<table style=""width:544px; font-family:Arial; font-size:12px;color:#4A4D4E;"">"
        'text = text & "<tr><td style=""width:544px;vertical-align:top;"">"

        'text = text & "</tr></td>"
        'text = text & "</table>"

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
        text = text & "                                            © 2017 Vodafone GmbH"
        text = text & "                                        </p>"
        text = text & "                                    </td>"
        text = text & "                                    <td style=""width: 150px; vertical-align: bottom;"">"
        text = text & "                                        <a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
        text = text & "                                            <img src=""http://gigacube-gewinnspiel.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img"
        text = text & "                                                    src=""http://gigacube-gewinnspiel.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                    border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img"
        text = text & "                                                        src=""http://gigacube-gewinnspiel.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"""
        text = text & "                                                        border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img"
        text = text & "                                                            src=""http://gigacube-gewinnspiel.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px;"
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
            de = New Net.Mail.MailAddress("info@gigacube-gewinnspiel.de", "Vodafone GigaCube")
            da = New Net.Mail.MailAddress(email.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(htmlview)
            message.IsBodyHtml = True
            message.Priority = Net.Mail.MailPriority.High
            'Dim miss As New Net.Mail.Attachment(Server.MapPath("ausgabe_fotos/Bild_neu" & Request.QueryString.Item(0) & ".jpg"))
            'miss.Name = "SWIPE IT - Dein Foto.jpg"
            'message.Attachments.Add(miss)
            message.Bcc.Add("carina.heine@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            instance.Send(message)
        Catch ex As Exception
            liste(0) = ex.ToString
        End Try

    End Sub
End Class
