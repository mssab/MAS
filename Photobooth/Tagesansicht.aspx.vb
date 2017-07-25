Imports System.Net
Imports System.Drawing
Imports System.IO


Partial Class _Default
    Inherits System.Web.UI.Page


    Private Sub bilderausgabe_Load(sender As Object, e As EventArgs) Handles bilderausgabe.Load

        belegung()
    End Sub

    Public Sub belegung()
        '*** Auslesen, welches Team die Seite besucht ordername = "Device1", "Device2" oder "Device3" ***
        Dim ordnername As String = ""
        Dim datum As String = ""
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
                'Response.Redirect("https://vodafone.com")
        End Select
        Dim resp As FtpWebResponse = req.GetResponse
        Dim respstream As Stream = resp.GetResponseStream
        Dim reader As StreamReader = New StreamReader(respstream)

        'Dim i As Integer = 1
        While Not reader.EndOfStream
            Dim dummy As String = reader.ReadLine
            If dummy.Contains(".jpg") Then

                Dim inject As String = "<a href=""Ausgabe.aspx?Device=" & ordnername & "&Datum=" & datum & "&Bild=" & dummy & """><img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/" & dummy & """ alt="""" border=""0"" style=""width: 21.50%; height: auto; margin: 10px 10px 10px 10px !important"" /></a>"
                bilderausgabe.Text = inject & bilderausgabe.Text
            End If


        End While
        reader.Close()
        resp.Close()

        'For i = 1 To 300
        '    If IfWReqFileExist("http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Bild" & i & ".jpg", "/Bild" & i) = True Then
        '        Dim inject As String = "<a href=""http://www.gate.de?Bild=Bild" & i & "&Dev=" & ordnername & """><img src=""http://www.gate-multimedia.de/Fotobooth/" & ordnername & "/Bild" & i & ".jpg"" alt="""" border=""0"" style=""width:300px; margin-top:10px; margin-right:10px;"" /></a>"
        '        bilderausgabe.Text = inject & bilderausgabe.Text
        '    End If
        'Next
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

End Class
