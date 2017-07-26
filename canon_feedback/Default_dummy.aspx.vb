Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page


    Private bemerkung As Object

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Not IsPostBack Then
            belegung()
        End If
        If IsNumeric(inhalt("id")) = False Then
            'vorname.Enabled = False
            'nachname.Enabled = False
            'email.Enabled = False
            'Bereich.Enabled = False
            'Vorgesetzter.Enabled = False
            'anrede_frau.Enabled = False
            'anrede_herr.Enabled = False
            'shuttle_ja.Enabled = False
            'shuttle_nein.Enabled = False
            'subtext_anmeldung.Text = "Bitte nutze den Link aus Deiner Einladungs-E-Mail, um Dich anzumelden."
            'ueberschrift_anmeldung.Text = "Keine Anmeldung möglich"
            'anmeldung_offen.Visible = False
            'anmeldung_absage.Visible = False
            'anmeldung_zusage.Visible = False
            ' Response.Redirect("https://canon.de")
            belegung()

        End If
    End Sub

    Public Sub belegung()
        Dim teilnahme_dummy As String = inhalt("Teilnahme")
        Dim rueckmeldung_dummy As String = inhalt("Rueckmeldung")
        Dim warteliste_dummy As String = inhalt("Warteliste")

        Dim dummy As String = ""
        dummy = inhalt("Anrede")

        vorname.Text = inhalt("Vorname")
        nachname.Text = inhalt("Nachname")
        If dummy = "Frau" Then
            anrede_frau.Checked = True
            gruss.Text = "Liebe " & vorname.Text & ","
        Else
            If dummy = "Herr" Then
                gruss.Text = "Lieber " & vorname.Text & ","
                anrede_herr.Checked = True
            Else
                gruss.Text = "Liebe Kolleginnen und Kollegen,"
            End If
        End If
        email.Text = inhalt("EMail")
        'abteilung.SelectedValue = inhalt("Abteilung")
        'unternehmen.Text = inhalt("Unternehmen")
        'absage_anrede.Text = inhalt("Anmeldung_Anrede")
        'absage_name.Text = inhalt("Anmeldung_Vorname") & " " & inhalt("Anmeldung_Nachname")
        ''absage_bereich.Text = inhalt("Anmeldung_Bereich")
        'absage_email.Text = inhalt("Anmeldung_EMail")
        'absage_vorgesetzter.Text = inhalt("Anmeldung_Vorgesetzter")
        ''absage_grund.Text = inhalt("Bemerkung")
        'zusage_anrede.Text = inhalt("Anmeldung_Anrede")
        'zusage_name.Text = inhalt("Anmeldung_Vorname") & " " & inhalt("Anmeldung_Nachname")
        'zusage_bereich.Text = inhalt("Anmeldung_Bereich")
        'zusage_email.Text = inhalt("Anmeldung_EMail")
        'zusage_vorgesetzter.Text = inhalt("Anmeldung_Vorgesetzter")
        'zusage_shuttle.Text = inhalt("Shuttle")
        'If zusage_shuttle.Text = "ja" Then
        '    zusage_shuttle.Text = "Du möchtest den kostenlosen Shuttle Service in Anspruch nehmen."
        'Else
        '    zusage_shuttle.Text = "Du möchtest den kostenlosen Shuttle Service <u>nicht</u> in Anspruch nehmen."
        'End If

        If teilnahme_dummy = "False" And rueckmeldung_dummy = "False" Then
            anmeldung_offen.Visible = True
            'anmeldung_zu.Visible = True

        Else
            If teilnahme_dummy = "True" Then
                anmeldung_offen.Visible = False
                ueberschrift_anmeldung.Text = "Anmeldung"
                subtext_anmeldung.Text = "Du hast Dich zum Pathfinder Event angemeldet:"
            Else
                If warteliste_dummy = "True" Then
                    anmeldung_offen.Visible = False
                    ueberschrift_anmeldung.Text = "Anmeldung"
                    subtext_anmeldung.Text = "Du bist auf der Warteliste zum Pathfinder Event."
                Else
                    anmeldung_offen.Visible = False

                    ueberschrift_anmeldung.Text = "Abmeldung"
                    subtext_anmeldung.Text = "Du hast Dich vom Pathfinder Event abgemeldet."
                End If

            End If
        End If
    End Sub

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        Teilnahme1.Attributes.Add("onclick", "weitere()")
        Teilnahme2.Attributes.Add("onclick", "weitere()")
        Teilnahme3.Attributes.Add("onclick", "weitere()")
        Teilnahme4.Attributes.Add("onclick", "weitere()")
        Teilnahme5.Attributes.Add("onclick", "weitere()")
        Teilnahme6.Attributes.Add("onclick", "weitere()")
        teilnahme_ja.Attributes.Add("onclick", "auswahl()")
        teilnahme_nein.Attributes.Add("onclick", "auswahl()")
    End Sub

    Protected Sub teilnahme_ja_CheckedChanged(sender As Object, e As EventArgs) Handles teilnahme_ja.CheckedChanged

    End Sub

    Protected Sub teilnahme_nein_CheckedChanged(sender As Object, e As EventArgs) Handles teilnahme_nein.CheckedChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        fehlermeldung.Visible = False
        If analyse() = 0 Then
            Dim gruppe As String = inhalt("Gruppe")
            Select Case gruppe
                Case "Gruppe1"
                    If platz_checker(gruppe) < 58 Or teilnahme_nein.Checked = True Then
                        If speichern() = 1 Then
                            If teilnahme_ja.Checked Then
                                sende_email()
                            End If
                            belegung()
                        End If
                    Else
                        anmeldung_offen.Visible = False

                    End If
                Case "Gruppe2"
                    If platz_checker(gruppe) < 8 Or teilnahme_nein.Checked = True Then
                        If speichern() = 1 Then
                            If teilnahme_ja.Checked Then
                                sende_email()
                            End If
                            belegung()
                        End If
                    Else
                        anmeldung_offen.Visible = False

                    End If
                Case "Gruppe3"
                    If platz_checker(gruppe) < 26 Or teilnahme_nein.Checked = True Then
                        If speichern() = 1 Then
                            If teilnahme_ja.Checked Then
                                sende_email()
                            End If
                            belegung()
                        End If
                    Else
                        anmeldung_offen.Visible = False

                    End If
            End Select
        Else
            fehlermeldung.Visible = True
        End If
    End Sub
    Protected Function analyse() As Integer
        Dim fehler As Integer = 0
        fehler = check(vorname, fehler)
        fehler = check(nachname, fehler)
        fehler = check(Bereich, fehler)
        fehler = check(email, fehler)
        fehler = email_checker(email, fehler)

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

    Public Sub sende_email()
        Dim command As String = ""


        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = ""
        text = "<body style=""font-family:Arial; font-size:10pt;color:#FFFFFF;""><table cellspacing=""0"" cellpadding=""0""  style=""width:600px; font-family:Arial; font-size:11pt;valign:top; margin:0px; padding:0px; border:1px solid black;""><tr><td><table cellspacing=""0"" cellpadding=""0""  style=""width:600px; font-family:Arial; font-size:11pt;valign:top; margin:0px; padding:0px;"">"

        'text = text & "<tr style="" vertical-align:middle;background-color:#004894;height:30px;""><td colspan=""2"" style=""vertical-align:middle;text-align:left;padding-left:28px; font-size:8pt;""><div style="" background-color:#004894;""></div> </td></tr>"


        text = text & "<tr><td colspan=""2"" style=""vertical-align:top;""><div style=""font-weight:bold;font-size:22pt;color:#000000;""><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Header_E-Mail_Bestaetigung.jpg"" alt="""" /></div></td></tr>"
        text = text & "<tr><td style=""padding-left:40px;padding-right:40px; width:520px;"">"
        text = text & ""

        If anrede_frau.Checked = True Then
            text = text & "<br /><div style=""width: 520px;""><p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe " & vorname.Text & ",</p>"
        Else
            text = text & "<br /><div style=""width: 520px;""><p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Lieber " & vorname.Text & ",</p>"
        End If
        Dim mailsub As String = ""
        mailsub = "Bestätigung der Anmeldung - Pathfinder 2017"
        text = text & "<div style=""font-size:11pt;color:#4A4D4E;width:520px;"">"
        text = text & "<p>wir freuen uns über Deine Anmeldung. Nachfolgend erhältst Du Deine Anmeldebestätigung zum PATHFINDER 2017 in Berlin:</p>"

        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Persönliche Daten:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"

        text = text & "<table style=""width:520px; font-family:Arial; font-size:11pt;color:#4A4D4E;"">"
        If anrede_frau.Checked = True Then
            text = text & "<tr><td style=""width:140px;"">Anrede:</td><td style=""width:380px;"">Frau</td></tr>"
        Else
            text = text & "<tr><td style=""width:140px;"">Anrede:</td><td style=""width:380px;"">Herr</td></tr>"
        End If

        text = text & "<tr><td style=""width:140px;"">Vorname:</td><td style=""width:380px;"">" & vorname.Text & "</td></tr>"
        text = text & "<tr><td style=""width:140px;"">Nachname:</td><td style=""width:380px;"">" & nachname.Text & "</td></tr>"
        text = text & "<tr><td style=""width:140px;"">Bereich:</td><td style=""width:380px;"">" & Bereich.Text & "</td></tr>"
        text = text & "<tr><td style=""width:140px;"">Vorgesetzter:</td><td style=""width:380px;"">" & firma.Text & "</td></tr>"
        text = text & "<tr><td style=""width:140px;"">E-Mail-Adresse:</td><td style=""width:380px;"">" & email.Text & "</td></tr>"
        text = text & "</table>"
        text = text & "<p></p>"

        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Shuttle:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        If shuttle_ja.Checked = True Then
            text = text & "<p>Du möchtest den kostenlosen Shuttle Service ab dem NH Hotel<br />Leipziger Straße in Anspruch nehmen.</p>"
        Else
            text = text & "<p>Du möchtest den kostenlosen Shuttle Service ab dem NH Hotel<br />Leipziger Straße <u>nicht</u> in Anspruch nehmen.</p>"
        End If

        text = text & "<p></p>"
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Hotel:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Die An-/Abreise erfolgt individuell und auf eigene Rechnung. Über den folgenden Buchungsbutton kannst Du im<br />NH Hotel, Leipziger Straße, ein Zimmer (ohne Frühstück) zu<br />reduzierten Konditionen buchen.</p>"
        text = text & "<p>Stichwort bei Buchung angeben: Vodafone Pathfinder</p>"
        text = text & "<p><a href=""http://www.nh-hotels.de/event/vodafone-pathfinder"" target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_2_Hotelbuchung.jpg"" alt="""" border=""0"" /></a></p>"

        text = text & "<p></p>"
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Ticketversand:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Das Ticket wird Dir einige Tage vor Eventbeginn durch das<br />Handelsblatt Orga-Team per E-Mail zugesendet.</p>"

        text = text & "<p></p>"
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Event-Daten:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Hier findest Du die wichtigsten Informatonen zum Event:</p>"
        text = text & "<p><a href=""https://pathfinder2017.vodafone-managementletter.de/?id=" & Request.QueryString.Item(0) & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_2_Event-Website.jpg"" alt="""" border=""0"" /></a></p>"

        text = text & "<p></p>"
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Stornierung:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Solltest Du Deine Teilnahme nach bereits abgeschlossener Anmeldung<br />dennoch absagen müssen, nutze bitte den nachfolgenden Button.</p>"
        text = text & "<p><a href=""https://pathfinder2017.vodafone-managementletter.de/Absage.aspx?id=" & Request.QueryString.Item(0) & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_2_Zur_Abmeldung.jpg"" alt="""" border=""0"" /></a></p>"
        text = text & "<br/><p>Wir freuen uns auf Deine Teilnahme.</p>"

        text = text & "<p></p>"
        'text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Daten zurück setzen:</b></p>"
        'text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        'text = text & "<p>Hier kann während der Freigabe eine Anmeldung zurück gesetzt werden:</p>"
        'text = text & "<p><a href=""https://pathfinder2017.vodafone-managementletter.de/Reset.aspx?id=" & Request.QueryString.Item(0) & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""https://pathfinder2017.vodafone-managementletter.de/img/images_Slice/Button_2_reset.jpg"" alt="""" border=""0"" /></a></p>"


        'text = text & "<p>Dein Festausschuss</p><br />"
        text = text & "<p style=""width:520px;""><br /><br /></p></div>"
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
            da = New Net.Mail.MailAddress(email.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(htmlview)
            Dim miss As New Net.Mail.Attachment(Server.MapPath("Vodafone_Pathfinder_2017.ics"))
            miss.Name = "Vodafone Pathfinder 2017.ics"
            message.Attachments.Add(miss)

            message.IsBodyHtml = True
            message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            'message.Bcc.Add("Nico.grabosch@ewe.de")
            'message.Bcc.Add("Andreasvon.bargen@ewe.de")
            instance.Send(message)

        Catch ex As Exception

        End Try
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

    Public Function speichern() As Integer
        Dim erfolg As Integer = 0
        Dim Command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Command = "update [dbo].[Canon_Einladung] set"
        If anrede_frau.Checked = True Then
            Command = Command & " Anmeldung_Anrede = 'Frau',"
        Else
            Command = Command & " Anmeldung_Anrede = 'Herr',"
        End If
        Command = Command & " Anmeldung_Vorname = '" & Format(vorname.Text) & "',"
        Command = Command & " Anmeldung_Nachname = '" & Format(nachname.Text) & "',"
        Command = Command & " Anmeldung_EMail = '" & Format(email.Text) & "',"
        Command = Command & " Anmeldung_Bereich = '" & Format(Bereich.Text) & "',"
        Command = Command & " Anmeldung_Firma = '" & Format(firma.Text) & "',"
        Command = Command & " Anmeldung_Strasse = '" & Format(Strasse.Text) & "',"
        Command = Command & " Anmeldung_Strasse_Nummer = '" & Format(Nr.Text) & "',"
        Command = Command & " Anmeldung_PLZ = '" & Format(PLZ.Text) & "',"
        Command = Command & " Anmeldung_Ort = '" & Format(Ort.Text) & "',"
        Command = Command & " Anmeldung_Telefon = '" & Format(Telefon.Text) & "',"
        Command = Command & " Anmeldung_Fax = '" & Format(Telefax.Text) & "',"
        Command = Command & " Bemerkung = '" & Format(Mitteilung.Text) & "',"
        If teilnahme_ja.Checked = True Then

            If Teilnahme1.Checked = True Then

                Command = Command & " Anmeldung_Firma = '" & Format(unternamen1.Text) & "',"
                Command = Command & " Anmeldung_Firma = '" & Format(Anrede1.Text) & "',"
                Command = Command & " Anmeldung_Vorname = '" & Format(Vorname1.Text) & "',"
                Command = Command & " Anmeldung_Nachname = '" & Format(Name1.Text) & "',"
                Command = Command & " Anmeldung_EMail = '" & Format(EMail1.Text) & "',"

            End If

            If Teilnahme2.Checked = True Then
                Command = Command & " Anmeldung_Firma = '" & Format(Unternemen2.Text) & "',"
                Command = Command & " Anmeldung_Firma = '" & Format(Anrede2.Text) & "',"
                Command = Command & " Anmeldung_Vorname = '" & Format(Vorname1.Text) & "',"
                Command = Command & " Anmeldung_Nachname = '" & Format(Name2.Text) & "',"
                Command = Command & " Anmeldung_EMail = '" & Format(EMail2.Text) & "',"

            End If

            If Teilnahme3.Checked = True Then
                Command = Command & " Anmeldung_Firma = '" & Format(Unternemen3.Text) & "',"
                Command = Command & " Anmeldung_Firma = '" & Format(Anrede3.Text) & "',"
                Command = Command & " Anmeldung_Vorname = '" & Format(Vorname3.Text) & "',"
                Command = Command & " Anmeldung_Nachname = '" & Format(Name3.Text) & "',"
                Command = Command & " Anmeldung_EMail = '" & Format(EMail3.Text) & "',"

            End If

            'Command = Command & " Teilnahme = 1, Teilnahme = 1 ,"
            If shuttle_ja.Checked = True Then
                'Command = Command & " Shuttle = 'ja',"
            Else
                Command = Command & " Shuttle = 'nein',"
            End If
        Else
            Command = Command & " Teilnahme = 0 "
            Command = Command & " Shuttle = 'nein',"
        End If


        Command = Command & " Bemerkung = '" & Format(bemerkung.Text) & "',"
        Command = Command & " Anmeldezeitpunkt = '" & Date.Now.ToShortDateString & " " & Date.Now.ToShortTimeString & "' where hash = '" & Request.QueryString.Item(0) & "'"

        Try
            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return erfolg
    End Function

    Public Function speichern_warteliste() As Integer
        Dim erfolg As Integer = 0
        Dim Command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Command = "update [dbo].[Canon_Einladung] set"
        If anrede_frau.Checked = True Then
            Command = Command & " Anmeldung_Anrede = 'Frau',"
        Else
            Command = Command & " Anmeldung_Anrede = 'Herr',"
        End If
        Command = Command & " Anmeldung_Vorname = '" & Format(vorname.Text) & "',"
        Command = Command & " Anmeldung_Nachname = '" & Format(nachname.Text) & "',"
        Command = Command & " Anmeldung_EMail = '" & Format(email.Text) & "',"
        Command = Command & " Anmeldung_Bereich = '" & Format(Bereich.Text) & "',"
        Command = Command & " Anmeldung_Firma = '" & Format(firma.Text) & "',"
        If teilnahme_ja.Checked = True Then
            'Command = Command & " Teilnahme = 1"
            If shuttle_ja.Checked = True Then

                If Teilnahme1.Checked = True Then
                    Command = Command & " Anmeldung_Firma = '" & Format(firma.Text) & "',"
                End If
                'Command = Command & " Shuttle = 'ja',"
            Else
                'Command = Command & " Shuttle = 'nein',"
            End If
        Else
            Command = Command & " Teilnahme = 0, Rueckmeldung = 1, Warteliste = 1,"
            Command = Command & " Shuttle = 'nein',"
        End If


        Command = Command & " Bemerkung = '" & Format(bemerkung.Text) & "',"
        Command = Command & " Anmeldezeitpunkt = '" & Date.Now.ToShortDateString & " " & Date.Now.ToShortTimeString & "' where hash = '" & Request.QueryString.Item(0) & "'"

        Try
            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return erfolg
    End Function



    Public Function platz_checker(ByVal gruppe As String) As Integer
        Dim ausgabe As Integer = 0
        Dim belegt As Integer = 0
        Dim Command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Command = "Select Count(id) from [dbo].[Canon_Einladung] where (Teilnahme = 1 or Absage = 1) and Rueckmeldung = 1 and Gruppe = '" & gruppe & "'"

        Try
            Dim commando As New SqlCommand(Command, con)
            belegt = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        Return belegt
    End Function
End Class
