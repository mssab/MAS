Imports System.Data.SqlClient

Partial Class Abmeldung
    Inherits System.Web.UI.Page


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

    Public Sub sende_email(ByVal vorname As String, ByVal nachname As String)
        Dim command As String = ""


        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = ""
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
        text = text & "<br /><div style=""width: 520px;""><p style=""color:#4A4D4E;font-weight:bold;"">Liebes Event-Team,</p>"




        Dim mailsub As String = ""
        mailsub = "Absage einer Anmeldung - Canon Partner Partner Key-Note 2017"
        text = text & "<div style=""font-size:11pt;color:#4A4D4E;width:520px;"">"
        Dim anrede As String = inhalt("Anrede")
        If anrede = "Frau" Then
            text = text & "<p>" & vorname & " " & nachname & " hat ihre ursprüngliche Anmeldung zurückgezogen.</p>"
        Else
            text = text & "<p>" & vorname & " " & nachname & " hat seine ursprüngliche Anmeldung zurückgezogen.</p>"
        End If
        text = text & "                                        <p style=""color:#4A4D4E; "">Herzliche Grüße</p>"


        text = text & "                                    <p style=""color:#4A4D4E; margin-bottom:0px;"">Ihr<br />Canon Event-Team</p>"

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
        text = text & "                                            &nbsp;&nbsp;&nbsp;&nbsp;"
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

        Try

            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("hotline@canon-events.de", "Canon Partner Key-Note 2017")
            da = New Net.Mail.MailAddress("event@gate.de")
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

    Private Sub Abmeldung_Init(sender As Object, e As EventArgs) Handles Me.Init
        Dim erfolg As Integer = 0
        Dim Command As String
        Command = "Update Canon_Einladung set Teilnahme = 0 WHERE Hash = '" & Request.QueryString.Item(0) & "'"
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
            sende_email(inhalt("Vorname"), inhalt("Nachname"))
            offen.Visible = False
            zu.Visible = True
        End If
        Response.Redirect("http://partner-keynote2017.canon-events.de?id=" & Request.QueryString.Item(0))
    End Sub
End Class
