Imports System.Data.SqlClient

Partial Class _Default

    Inherits System.Web.UI.Page
    Dim teilid As Integer

    Public Function inhalt(ByVal loca As String) As String
        Dim ergebnis As String = ""
        If Request.QueryString.HasKeys Then
            Dim Command As String

            Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
            con.Open()
            Command = "SELECT [id]FROM [Canon].[dbo].[Canon_Einladung] where [Hash]= " & Request.QueryString.Item("id")
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

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

        If Not IsPostBack Then
            'belegung()
        End If
        Dim dummy As String = inhalt("id")
        If dummy.Contains("canon.de") Then
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://canon.de")
            End If
        Else
            'If Session.Add("teilnehmer", inhalt("id")) Then
            '    Response.Redirect("feedback_abfrage.aspx")

            'End If
        End If

        'Dim command As String
        'Dim einladung_id As Integer = 0
        'Dim ausblenden As Integer = 0

        ''*** Auslesen der id aus der Einladungstabelle ***
        'Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        'con.Open()
        'command = "SELECT [id] FROM [Canon].[dbo].[Canon_Einladung] where [Hash]= '" & Request.QueryString.Item("id") & "'"
        'Try
        '    Dim commando As New SqlCommand(command, con)
        '    einladung_id = commando.ExecuteScalar


        'Catch ex As Exception


        'End Try
        ''*** Auslesen, ob bereits ein Feedback abgegeben wurde ***
        'command = "SELECT [id] FROM [Canon].[dbo].[Canon_Feedback] where [Einladung_id]= " & einladung_id
        'Try
        '    Dim commando As New SqlCommand(command, con)
        '    ausblenden = commando.ExecuteScalar


        'Catch ex As Exception


        'End Try

        'con.Close()
        'con.Dispose()

        ''*** Falls bereits ein Feedback gegeben wurde, umleitung auf Danke-Seite ***
        'If ausblenden > 0 Then

        '    Panel1.Visible = False
        '    Panel2.Visible = False

        'End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim command As String
        Dim einladung_id As Integer = 0
        Dim ausblenden As Integer = 0

        '*** Auslesen der id aus der Einladungstabelle ***
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        command = "SELECT [id] FROM [Canon].[dbo].[Canon_Einladung] where [Hash]= '" & Request.QueryString.Item("id") & "'"
        Try
            Dim commando As New SqlCommand(command, con)
            einladung_id = commando.ExecuteScalar


        Catch ex As Exception


        End Try
        '*** Auslesen, ob bereits ein Feedback abgegeben wurde ***
        command = "SELECT [id] FROM [Canon].[dbo].[Canon_Feedback] where [Einladung_id]= " & einladung_id
        Try
            Dim commando As New SqlCommand(command, con)
            ausblenden = commando.ExecuteScalar


        Catch ex As Exception


        End Try

        con.Close()
        con.Dispose()

        '*** Falls bereits ein Feedback gegeben wurde, umleitung auf Danke-Seite ***
        If ausblenden > 0 Then

            fragen.Visible = False
            danke.Visible = True
            'Response.Redirect("~/danke.aspx")
        End If




        'blende()
    End Sub

    Protected Sub sendBtn_Click(sender As Object, e As EventArgs) Handles sendBtn.Click

        Dim command As String
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        '*** Auslesen der id aus der Einladungstabelle
        Dim ausblenden As Integer = 0
        command = "SELECT [id] FROM [Canon].[dbo].[Canon_Einladung] where [Hash]= '" & Request.QueryString.Item("id") & "'"
        Try
            Dim commando As New SqlCommand(command, con)
            ausblenden = commando.ExecuteScalar
        Catch ex As Exception


        End Try
        '*** Speichern des DFeedbacks ***
        command = "INSERT INTO [Canon_Feedback] values (" & ausblenden & ", "
        'command = command & Session("Hash") & ", "
        'command = command & "1, "
        command = command & ausgabe(Ablauf1, Ablauf2, Ablauf3, Ablauf4, Ablauf5, Ablauf6) & ", "

        command = command & ausgabe(Inhalte1, Inhalte2, Inhalte3, Inhalte4, Inhalte5, Inhalte6) & ", "
        command = command & ausgabe(Inhalte_b1, Inhalte_b2, Inhalte_b3, Inhalte_b4, Inhalte_b5, Inhalte_b6) & ", "
        command = command & ausgabe(Neuheiten1, Neuheiten2, Neuheiten3, Neuheiten4, Neuheiten5, Neuheiten6) & ", "
        command = command & ausgabe(Rahmenprogramm1, Rahmenprogramm2, Rahmenprogramm3, Rahmenprogramm4, Rahmenprogramm5, Rahmenprogramm6) & ", "
        command = command & ausgabe(Reiseorga1, Reiseorga2, Reiseorga3, Reiseorga4, Reiseorga5, Reiseorga6) & ", "
        command = command & ausgabe(Catering1, Catering2, Catering3, Catering4, Catering5, Catering6) & ", "
        command = command & ausgabe(ja, Nein) & ", "
        command = command & "'" & Bemerkungen.Text & "', "
        command = command & " 1, "
        command = command & "'" & DateTime.Now.ToString & "')"



        Dim erfolg As Integer = 0
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        Response.Redirect("~/danke.aspx")

        If erfolg > 0 Then

            'fragen.Visible = False
            'danke.Visible = True



            'Bemerkungen.Text = command
        End If
    End Sub




    Protected Function format(ByVal dummy As String) As String
        dummy = dummy.Replace("'", "´")
        dummy = dummy.Replace("/", " ")
        Return dummy

    End Function


    Protected Function ausgabe(ByVal eins As RadioButton, ByVal zwei As RadioButton, ByVal drei As RadioButton, ByVal vier As RadioButton, ByVal fuenf As RadioButton, six As RadioButton) As Integer
        Dim i As Integer = 0
        If eins.Checked Then
            i = 1
        End If
        If zwei.Checked Then
            i = 2
        End If
        If drei.Checked Then
            i = 3
        End If
        If vier.Checked Then
            i = 4
        End If
        If fuenf.Checked Then
            i = 5
        End If
        If six.Checked Then
            i = 6
        End If
        Return i
    End Function
    Protected Function ausgabe(ByVal eins As RadioButton, ByVal zwei As RadioButton) As Integer
        Dim i As Integer
        If eins.Checked Then
            i = 1
        End If
        If zwei.Checked Then
            i = 0
        End If
        Return i
    End Function

End Class
