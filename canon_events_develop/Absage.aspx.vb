Imports System.Data.SqlClient

Partial Class Abmeldung
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim erfolg As Integer = 0
        Dim Command As String
        Command = "Update Canon_Einladung set Teilnahme = 0, Absage = 1 WHERE Hash = '" & Request.QueryString.Item(0) & "'"
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        If erfolg = 1 Then
            sende_email(inhalt("Vorname"), inhalt("Nachname"), inhalt("Gruppe"))
            offen.Visible = False
            zu.Visible = True
        End If



    End Sub

    Public Function inhalt(ByVal loca As String) As String
        Dim ergebnis As String = ""
        If Request.QueryString.HasKeys Then
            Dim Command As String
            Command = "SELECT " & loca & " FROM Canon_Einladung WHERE Hash = '" & Request.QueryString.Item(0) & "'"
            Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
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

    Public Sub sende_email(ByVal vorname As String, nachname As String, gruppe As String)
        Dim command As String = ""


        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = ""
        text = "<body style=""font-family:Arial; font-size:10pt;color:#FFFFFF;""><table cellspacing=""0"" cellpadding=""0""  style=""width:600px; font-family:Arial; font-size:11pt;valign:top; margin:0px; padding:0px; border:1px solid black;""><tr><td><table cellspacing=""0"" cellpadding=""0""  style=""width:600px; font-family:Arial; font-size:11pt;valign:top; margin:0px; padding:0px;"">"

        'text = text & "<tr style="" vertical-align:middle;background-color:#004894;height:30px;""><td colspan=""2"" style=""vertical-align:middle;text-align:left;padding-left:28px; font-size:8pt;""><div style="" background-color:#004894;""></div> </td></tr>"


        text = text & "<tr><td colspan=""2"" style=""vertical-align:top;""><div style=""font-weight:bold;font-size:22pt;color:#000000;""><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Header_E-Mail_Bestaetigung.jpg"" alt="""" /></div></td></tr>"
        text = text & "<tr><td style=""padding-left:40px;padding-right:40px; width:520px;"">"
        text = text & ""


        text = text & "<br /><div style=""width: 520px;""><p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebes Event-Team,</p>"

        Dim mailsub As String = ""
        mailsub = "Absage einer Anmeldung - Pathfinder 2017 - " & gruppe
        text = text & "<div style=""font-size:11pt;color:#4A4D4E;width:520px;"">"
        Dim anrede As String = inhalt("Anrede")
        If anrede = "Frau" Then
            text = text & "<p>" & vorname & " " & nachname & " hat ihre ursprüngliche Anmeldung zurückgezogen.</p>"
        Else
            text = text & "<p>" & vorname & " " & nachname & " hat seine ursprüngliche Anmeldung zurückgezogen.</p>"
        End If

        text = text & "<p>Begründung: " & bemerkung.Text & "</p>"


        'text = text & "<p>Dein Festausschuss</p><br />"
        text = text & "<p style=""width:520px;""><br /><br />Viele Grüße<br /> vom Dirk aus der Dose</p></div>"
        text = text & "</td><td style=""width:56px;""></td></tr></table>"
        'text = text & "<table style=""width:585px; font-family:Arial; color:color:#004894; font-size:11pt;""><tr><td style=""width:572px;"">"
        'text = text & "<table style=""width:594px;font-family:Arial; font-size:11pt; background-color: #bad7ee"">"
        'text = text & "<tr><td><p style=""margin-top:14px; color:#004894;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""https://www.ewe.de/privatkunden/impressum"" style=""text-decoration:underline;color:#004894;"">Impressum</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""mailto:ewe-gk-intern@ewe.de"" style=""text-decoration:underline;color:#004894;"">Kontakt</a>&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br />"
        'text = text & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;© 2016 EWE TEL GmbH<br /><br /><br /><br /><br /><br /><br /></p></td></tr>"



        'text = text & "</table>"


        text = text & "</td></tr></table></body>"
        Try

            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("pathfinder2017@vodafone-managementletter.de", "Pathfinder 2017")
            da = New Net.Mail.MailAddress("pathfinder2017@vodafone-managementletter.de")
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(htmlview)

            message.IsBodyHtml = True
            message.Bcc.Add("dirk.ridder@gate.de")
            message.Bcc.Add("event@gate.de")
            'message.Bcc.Add("Nico.grabosch@ewe.de")
            'message.Bcc.Add("Andreasvon.bargen@ewe.de")
            instance.Send(message)

        Catch ex As Exception

        End Try
    End Sub
End Class
