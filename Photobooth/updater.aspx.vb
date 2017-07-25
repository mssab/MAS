Imports System.Drawing
Imports System.IO
Imports System.Data.SqlClient
Imports System.Net.NetworkInformation

Partial Class updater
    Inherits System.Web.UI.Page

    Private Sub updater_Init(sender As Object, e As EventArgs) Handles Me.Init
        'Dim datensatz As Integer = CInt(Request.QueryString.Item(0))
        'Dim i As Integer = 0
        'Dim MacAdd As String
        'Dim nics As NetworkInterface() = NetworkInterface.GetAllNetworkInterfaces()
        'MacAdd = Request.UserHostAddress.ToString
        'Dim command As String = ""
        'Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        'con.Open()

        'command = "Select max(id) from Giga_Cube_Campus_Voting where Teilnehmer_id = " & datensatz & " and MAC = '" & MacAdd & "'"
        'Try
        '    Dim commando As New SqlCommand(command, con)
        '    i = commando.ExecuteScalar

        'Catch ex As Exception

        'End Try
        'If i = 0 Then
        '    command = "Insert into Giga_Cube_Campus_Voting (Teilnehmer_id, MAC) values (" & datensatz & ", '" & MacAdd & "')"
        '    Try
        '        Dim commando As New SqlCommand(command, con)
        '        commando.ExecuteNonQuery()

        '    Catch ex As Exception

        '    End Try
        'End If

        'con.Close()
        'con.Dispose()
        Response.Redirect("Default.aspx")
    End Sub
End Class
