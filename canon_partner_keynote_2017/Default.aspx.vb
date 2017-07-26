Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page


    Private bemerkung As Object

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Not IsPostBack Then
            belegung()
        End If
        Dim dummy As String = inhalt("EMail")
        If dummy.Contains("canon.de") Then
            If IsNumeric(inhalt("id")) = False Then
                'Response.Redirect("https://canon.de")
                belegung()
            End If
        Else
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://canon.de")
                'belegung()
            End If
        End If


    End Sub

    Public Sub belegung()
        Dim teilnahme_dummy As String = inhalt("Teilnahme")
        Dim rueckmeldung_dummy As String = inhalt("Rueckmeldung")


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
                anmeldung_zusage.Visible = True
            Else

                anmeldung_offen.Visible = False
                ueberschrift_anmeldung.Text = "Abmeldung"



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

            If speichern() = 1 Then
                If teilnahme_ja.Checked Then
                    sende_mail()
                End If

                belegung()
            Else
                'anmeldung_offen.Visible = False
            End If
            If teilnahme_ja.Checked = True Then
                If Teilnahme1.Checked Then
                    speichern_neuer_teilnehmer(Anrede1.Text, Vorname1.Text, Name1.Text, unternamen1.Text, EMail1.Text)
                End If
                If Teilnahme2.Checked Then
                    speichern_neuer_teilnehmer(Anrede2.Text, Vorname2.Text, Name2.Text, Unternemen2.Text, EMail2.Text)
                End If
                If Teilnahme3.Checked Then
                    speichern_neuer_teilnehmer(Anrede3.Text, Vorname3.Text, Name3.Text, Unternemen3.Text, EMail3.Text)
                End If
            End If
            If teilnahme_nein.Checked = True Then
                If Teilnahme4.Checked Then
                    speichern_neuer_teilnehmer(Anrede4.Text, Vorname4.Text, Name4.Text, Unternemen4.Text, EMail4.Text)
                End If
                If Teilnahme5.Checked Then
                    speichern_neuer_teilnehmer(Anrede5.Text, Vorname5.Text, Name5.Text, Unternemen5.Text, EMail5.Text)
                End If
                If Teilnahme6.Checked Then
                    speichern_neuer_teilnehmer(Anrede6.Text, Vorname6.Text, Name6.Text, Unternemen6.Text, EMail6.Text)
                End If
            End If
        Else
            fehlermeldung.Visible = True
        End If
    End Sub
    Protected Function analyse() As Integer
        Dim fehler As Integer = 0
        fehler = check(vorname, fehler)
        fehler = check(nachname, fehler)
        fehler = check(firma, fehler)
        fehler = check(email, fehler)
        fehler = check(Mobile, fehler)
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

    Public Sub sende_mail()
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String


        Dim text_anrede As String = ""
        text = ""
        Dim plaintext As String = ""


        Dim mailsub As String
        mailsub = "Canon Partner Partner Key-Note 2017 - Ihre Anmeldebestätigung"
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
        If anrede_frau.Checked = True Then
            text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrte Frau " & nachname.Text & ",</p>"
            text_anrede = "Sehr geehrte Frau " & nachname.Text & ","
        Else
            text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrter Herr " & nachname.Text & ",</p>"
            text_anrede = "Sehr geehrter Herr " & nachname.Text & ","
        End If

        text = text & "                                    <p style=""color:#4A4D4E;"">"
        text = text & "                                       wir freuen uns, dass Sie dabei sind. Nachfolgend erhalten Sie Ihre Anmeldebestätigung zum <b>Canon Partner Key-Note 2017</b> in Krefeld."
        text = text & "                                    </p>"


        '*** E-Mail-Teil Persönliche Daten ***
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Persönliche Daten:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<table style=""width:520px; font-family:Arial; font-size:11pt;color:#4A4D4E;"">"
        If anrede_frau.Checked = True Then
            text = text & "<tr><td style=""width:140px;"">Anrede:</td><td style=""width:380px;"">Frau</td></tr>"
        Else
            text = text & "<tr><td style=""width:140px;"">Anrede:</td><td style=""width:380px;"">Herr</td></tr>"
        End If

        text = text & "<tr><td>Vorname:</td><td>" & vorname.Text & "</td></tr>"
        text = text & "<tr><td>Nachname:</td><td>" & nachname.Text & "</td></tr>"
        text = text & "<tr><td>Firma:</td><td>" & firma.Text & "</td></tr>"
        text = text & "<tr><td>Bereich:</td><td>" & Bereich.Text & "</td></tr>"
        text = text & "<tr><td>Straße:</td><td>" & Strasse.Text & "</td></tr>"
        text = text & "<tr><td>Nr.:</td><td>" & Nr.Text & "</td></tr>"
        text = text & "<tr><td>PLZ:</td><td>" & PLZ.Text & "</td></tr>"
        text = text & "<tr><td>Ort:</td><td>" & Ort.Text & "</td></tr>"
        text = text & "<tr><td>Telefon:</td><td>" & Telefon.Text & "</td></tr>"
        text = text & "<tr><td>Mobil:</td><td>" & Mobile.Text & "</td></tr>"
        text = text & "<tr><td>Telefax:</td><td>" & Telefax.Text & "</td></tr>"
        text = text & "<tr><td>E-Mail:</td><td>" & email.Text & "</td></tr>"
        text = text & "</table>"
        text = text & "<p></p>"

        '*** E-Mail-Teil An/Abreise ***
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>An/Abreise</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        If CheckBoxReise.Checked = True Then
            text = text & "<p>Ihre Reiseplanung wird von unserem Orga-Team übernommen.</p>"
            text = text & "<table style=""width:520px; font-family:Arial; font-size:11pt;color:#4A4D4E;"">"
            text = text & "<tr><td style=""width:140px;"">Mein Abreiseort:</td><td style=""width:380px;"">" & Abreiseort.Text & "</td></tr>"
            text = text & "<tr><td>Mein Rückreiseort:</td><td>" & Rueckreiseort.Text & "</td></tr>"
            text = text & "<tr><td>Bevorzugtes Transportmittel:</td><td>" & Transportmittel.Text & "</td></tr>"
            text = text & "</table>"
            text = text & "<p></p>"
        Else
            text = text & "<p>Sie möchten die Reiseplanung selbst übernehmen.</p>"
            text = text & "<p></p>"
        End If

        '*** E-Mail-Teil Hotel ***
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Hotel</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        If CheckBoxBuchen.Checked = True Then
            If CheckBoxVorBuchen.Checked = True Then
                text = text & "<p>Wir buchen für Sie Übernachtungen vom 26.06.2017 bis zum 28.06.2017.</p>"
            Else
                text = text & "<p>Wir buchen für Sie eine Übernachtung vom 26.06.2017 bis zum 27.06.2017.</p>"
            End If
            text = text & "<p></p>"
        Else
            text = text & "<p>Sie benötigen keine Übernachtung.</p>"
            text = text & "<p></p>"
        End If


        '*** E-Mail-Teil Shuttle ***
        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Shuttle</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        If shuttle_ja.Checked = True Then
            text = text & "<p>Sie möchten den kostenlosen Shuttle-Service ab 22.00 Uhr nutzen.</p>"
            text = text & "<p></p>"
        Else
            text = text & "<p>Sie möchten keinen Shuttle-Service nutzen.</p>"
            text = text & "<p></p>"
        End If


        '*** E-Mail-Teil Event-Daten ***

        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Event-Daten:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Hier finden Sie die wichtigsten Informatonen zum Event:</p>"
        text = text & "<p><a href=""http://partner-keynote2017.canon-events.de?id=" & Request.QueryString.Item(0) & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""http://canon-events.de/img/Button_Event-Homepage.jpg"" alt="""" border=""0"" /></a></p>"
        text = text & "<p></p>"


        '*** E-Mail-Teil Stornierung ***

        text = text & "<p style=""margin-bottom:0px;margin-top:28px;""><b>Stornierung:</b></p>"
        text = text & "<hr style=""width:520px;color:#4A4D4E; margin-top:0px; margin-bottom:28px;"" />"
        text = text & "<p>Sollten Sie Ihre Teilnahme nach bereits abgeschlossener Anmeldung<br />dennoch absagen müssen, nutzen Sie bitte den nachfolgenden Button.</p>"
        text = text & "<p><a href=""http://partner-keynote2017.canon-events.de/Absage.aspx?id=" & Request.QueryString.Item(0) & """ target=""_blank"" style=""text-decoration:none;"" ><img src=""http://canon-events.de/img/Button_Abmeldung.jpg"" alt="""" border=""0"" /></a></p>"
        text = text & "<p></p>"

        text = text & "<br/><p>Wir freuen uns auf Ihre Teilnahme.</p>"



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
            da = New Net.Mail.MailAddress(email.Text)
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub

            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")

            message.AlternateViews.Add(htmlview)
            'message.Bcc.Add("denise.hoppe@gate.de")
            message.Bcc.Add("event@gate.de")
            message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("benjamin.tobaschus@gate.de")
            'message.Bcc.Add("carina.heine@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            'message.Bcc.Add("versendungen@gate.de")

            'to send Attachment with

            Dim miss As New Net.Mail.Attachment(Server.MapPath("Canon_Partner_Key_Note_2017.ics"))
            miss.Name = "Canon Partner Key-Note 2017.ics"
            message.Attachments.Add(miss)

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
        Command = Command & " Anmeldung_Mobil = '" & Format(Mobile.Text) & "',"
        Command = Command & " Bemerkung = '" & Format(Mitteilung.Text) & "',"
        If teilnahme_ja.Checked = True Then
            Command = Command & " Teilnahme = 1,"
            If CheckBoxReise.Checked = True Then
                Command = Command & " Reiseplanung = 'ja',"
            Else
                Command = Command & " Reiseplanung = 'nein',"
            End If
            Command = Command & " Reiseplanung_Abreiseort = '" & Format(Abreiseort.Text) & "',"
            Command = Command & " Reiseplanung_Rueckreiseort = '" & Format(Rueckreiseort.Text) & "',"
            Command = Command & " Reiseplanung_Transportmittel = '" & Transportmittel.SelectedValue & "',"
            If CheckBoxBuchen.Checked = True Then
                Command = Command & " Hotel_Bedarf = 'ja',"
                Command = Command & " Hotel_von = '26.06.2017',"
                If CheckBoxVorBuchen.Checked = True Then
                    Command = Command & " Hotel_bis = '28.06.2017',"
                Else
                    Command = Command & " Hotel_bis = '27.06.2017',"
                End If
            Else
                Command = Command & " Hotel_Bedarf = 'nein',"
            End If



            If shuttle_ja.Checked = True Then
                Command = Command & " Shuttle = 'ja',"
            Else
                Command = Command & " Shuttle = 'nein',"
            End If
        Else
            Command = Command & " Teilnahme = 0 "
            Command = Command & " Shuttle = 'nein',"
        End If



        Command = Command & " Rueckmeldung=1, Anmeldezeitpunkt = '" & Date.Now.ToShortDateString & " " & Date.Now.ToShortTimeString & "' where hash = '" & Request.QueryString.Item(0) & "'"

        Try
            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception
            Mitteilung.Text = Command
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

    Public Function speichern_neuer_teilnehmer(ByVal sql_anrede As String, ByVal sql_vorname As String, ByVal sql_nachname As String, ByVal sql_firma As String, ByVal sql_mail As String) As Integer
        Dim erfolg As Integer = 0
        Dim code_dummy As Integer = 0
        Dim Command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        '*** Auslesen der höchsten id mit noch nicht vergebenen Code ***
        Command = "select MIN(id) from [dbo].[Canon_Einladung] where Code_vergeben = 0"
        Try
            Dim commando As New SqlCommand(Command, con)
            code_dummy = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Command = "update [dbo].[Canon_Einladung] set"
        Command = Command & " Anrede = '" & sql_anrede & "',"
        Command = Command & " Vorname = '" & Format(sql_vorname) & "',"
        Command = Command & " Nachname = '" & Format(sql_nachname) & "',"
        Command = Command & " EMail = '" & Format(sql_mail) & "',"
        Command = Command & " Firma = '" & Format(sql_firma) & "',"
        Command = Command & " Einladung_Quelle = '" & Request.QueryString.Item(0) & "',"
        Command = Command & " Teilnahme = 0, Rueckmeldung = 0, Versendet = 0, Code_vergeben = 1 where id = " & code_dummy
        Try
            Dim commando As New SqlCommand(Command, con)
            erfolg = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return erfolg
    End Function

End Class
