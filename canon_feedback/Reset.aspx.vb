Imports System.Data.SqlClient

Partial Class Abmeldung
    Inherits System.Web.UI.Page



    Private Sub Abmeldung_Init(sender As Object, e As EventArgs) Handles Me.Init
        Dim hash As String = ""
        hash = Request.QueryString.Item(0).ToString
        Dim Command As String
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Command = "update [dbo].[Canon_Einladung] set"

        Command = Command & " Teilnahme = 0, Rueckmeldung = 0,"
        Command = Command & " Shuttle = 'nein',"

        Command = Command & " Anmeldezeitpunkt = '" & Date.Now.ToShortDateString & "' where hash = '" & Request.QueryString.Item(0) & "'"
        Try
            Dim commando As New SqlCommand(Command, con)
            commando.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("Default.aspx?id=" & Request.QueryString.Item(0).ToString)
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
End Class
