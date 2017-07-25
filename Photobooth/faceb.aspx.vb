Imports System.Data.SqlClient
Imports System.Net

Partial Class dummy
    Inherits System.Web.UI.Page
    Dim teilnahme_Name As String
    Public teilnahme_Bild As String
    Dim inject As String = ""
    Dim fotodel As String

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init


        If Not IsPostBack Then
            teilnahme_Name = inhalt("Name")
            teilnahme_Bild = inhalt("Name_Bild")
        End If
        Dim dummy As String = inhalt("Name")
        If dummy.Contains("vodafone.de") Then
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://vodafone.de")
                'belegung(teilnahme_Name, teilnahme_Bild)

            End If
        Else
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://vodafone.de")
                'belegung()
            End If
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim i As String = ""
        'i = Request.QueryString.Item("id")
        'Response.Redirect("https://vodafone.de")

    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        'Dim i As String = ""
        'i = Request.QueryString.Item("id")
        'Response.Redirect("https://vodafone.de")


    End Sub


    Private Sub bilderausgabe_Init(sender As Object, e As EventArgs) Handles TargetFoto.Init
        teilnahme_Bild = inhalt("Name_Bild")
        'inject = "<img src=""" & teilnahme_Bild & """ alt="""" border=""0""  style=""width:70%; height: auto; margin-top: 3%; -webkit-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); -moz-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28);"" /></a>"
        inject = "<p><img src=""" & teilnahme_Bild & """ alt="""" border=""0""  style=""width:400px !important; height: auto;"" /></p>"
        fotodel = "" & teilnahme_Bild & ""
        TargetFoto.Text = inject
    End Sub


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

    'Public Sub video_belegung(ByVal code As String, ByVal team As String)
    '    Dim ausgabe As String = ""
    '    Dim ausgabe2 As String = ""
    '    ausgabe = "<div class=""col1""><video preload=""none"" poster=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg""> <source src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".mp4"" type=""video/mp4""><source src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".webm"" type=""video/webm""> <a href=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".mp4"" target=""_blank""><img src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg"" alt="""" border=""0"" /></a>    </video></div>"
    '    ausgabe2 = "<img src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg"" alt="""" width=""200px"" border=""0"" />"
    '    TargetFoto.Text = ausgabe

    'End Sub
    Private Sub _Foto_Load(sender As Object, e As EventArgs) Handles Me.Load
        belegung(teilnahme_Name, teilnahme_Bild)

    End Sub
    Public Sub belegung(ByVal teilnahme_Name As String, ByVal teilnahme_Bild As String)
        teilnahme_Name = inhalt("Name")
        teilnahme_Bild = inhalt("Name_Bild")


    End Sub
End Class
