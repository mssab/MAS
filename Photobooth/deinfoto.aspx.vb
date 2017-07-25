Imports System.Net
Imports System.Drawing
Imports System.IO
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim teilnahme_Name As String
    Dim teilnahme_Bild As String
    Dim inject As String = ""
    Dim fotodel As String

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Not IsPostBack Then
            teilnahme_Name = inhalt("Name")
            teilnahme_Bild = inhalt("Name_Bild")
            ha.InnerText = "Hallo " & teilnahme_Name
        End If
        Dim dummy As String = inhalt("Name")
        If dummy.Contains("vodafone.de") Then
            If IsNumeric(inhalt("id")) = False Then
                'Response.Redirect("https://vodafone.de")
                belegung(teilnahme_Name, teilnahme_Bild)

            End If
        Else
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://vodafone.de")
                'belegung()
            End If
        End If


    End Sub



    'Public Sub belegung1()
    '    '*** Auslesen, welches Team die Seite besucht ordername = "Device1", "Device2" oder "Device3" ***
    '    Dim ordnername As String = ""
    '    Try
    '        ordnername = Request.QueryString.Item(0)
    '    Catch ex As Exception

    '    End Try



    '    'list the names of all files in the specified directory
    '    Dim req As FtpWebRequest = WebRequest.Create("ftp://www.gate-multimedia.de/")
    '    req.Method = WebRequestMethods.Ftp.ListDirectory
    '    Select Case ordnername
    '        Case "Device1"
    '            req.Credentials = New NetworkCredential("Fotobooth1", "qH4nLA29!")
    '        Case "Device2"
    '            req.Credentials = New NetworkCredential("Fotobooth2", "Sw2b7Vgp!")
    '        Case "Device3"
    '            req.Credentials = New NetworkCredential("Fotobooth3", "uF3cX8w5!")
    '        Case Else
    '            'Response.Redirect("https://vodafone.de")
    '    End Select

    '    Dim resp As FtpWebResponse = req.GetResponse
    '    Dim respstream As Stream = resp.GetResponseStream
    '    Dim reader As StreamReader = New StreamReader(respstream)
    '    Dim i As Integer = 1
    '    While Not reader.EndOfStream
    '        Dim dummy As String = reader.ReadLine
    '        If dummy.Contains("_") Then
    '            Dim inject As String = "<div style=""float: left; width: 21.50%; height: auto; margin: 10px 10px 10px 10px !important""><p><a href=""Tagesansicht.aspx?id=" & ordnername & "&Datum=" & dummy & """ style=""color:#525252; text-decoration: none; font-weight: bold !important;""/><img src=""img/folder.png"" border=""0"" style=""width: 60%;"" /></p><p style=""margin: 0px 0px 0px 10px;"">" & dummy.Replace("_", ".") & "</a></p></div>"
    '            bilderausgabe.Text = inject & bilderausgabe.Text



    '        End If

    '    End While
    '    reader.Close()
    '    resp.Close()

    '    'For i = 1 To 300
    '    '    If IfWReqFileExist("http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Bild" & i & ".jpg", "/Bild" & i) = True Then
    '    '        Dim inject As String = "<a href=""http://www.gate.de?Bild=Bild" & i & "&Dev=" & ordnername & """><img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Bild" & i & ".jpg"" alt="""" border=""0"" style=""width:300px; margin-top:10px; margin-right:10px;"" /></a>"
    '    '        bilderausgabe.Text = inject & bilderausgabe.Text
    '    '    End If
    '    'Next
    'End Sub

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

    Public Sub belegung(ByVal teilnahme_Name As String, ByVal teilnahme_Bild As String)
        teilnahme_Name = inhalt("Name")
        teilnahme_Bild = inhalt("Name_Bild")


    End Sub

    Private Sub bilderausgabe_Init(sender As Object, e As EventArgs) Handles TargetFoto.Init
        teilnahme_Bild = inhalt("Name_Bild")
        inject = "<img src=""" & teilnahme_Bild & """ alt="""" border=""0""  style=""width:70%; height: auto; margin-top: 3%; -webkit-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); -moz-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28);"" /></a>"
        fotodel = "" & teilnahme_Bild & ""
        TargetFoto.Text = inject & resultload.Text
    End Sub
End Class
