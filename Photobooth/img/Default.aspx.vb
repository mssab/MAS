Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
Imports System.Drawing

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load



    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender
        wally()



    End Sub

    Private Sub _Default_Init(sender As Object, e As EventArgs) Handles Me.Init
        GridView1.DataBind()
        Dim i As Integer = 0
        Dim platz As Integer = 1
        Dim lauf As Integer = 1
        Dim punkte As Integer = GridView1.Rows(0).Cells(0).Text
        For i = 0 To GridView1.Rows.Count - 1
            If GridView1.Rows(i).Cells(0).Text < punkte Then
                GridView1.Rows(i).Cells(2).Text = lauf & ". Platz"
                platz = lauf
            Else
                GridView1.Rows(i).Cells(2).Text = platz & ". Platz"
            End If
            lauf = lauf + 1
        Next
    End Sub

    Private Sub GridView1_DataBound(sender As Object, e As EventArgs) Handles GridView1.DataBound


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

    Protected Function analyse() As Integer
        Dim fehler As Integer = 0

        Return fehler
    End Function

    Public Sub wally()
        wall.Text = ""
        Dim i As Integer = 0
        For i = 0 To GridView1.Rows.Count - 1
            wall.Text = wall.Text & "<div class=""col"" style=""background-color:#ffffff;padding:3px; margin-right:3px;"">"
            wall.Text = wall.Text & "<img src=""Teilnehmer_Bilder/" & GridView1.Rows(i).Cells(1).Text & ".jpg"" style=""width:100%; margin-bottom:5px;"" alt="""">"
            wall.Text = wall.Text & "<table style=""width:100%;""><tr>"
            wall.Text = wall.Text & "<td>" & GridView1.Rows(i).Cells(2).Text & "</td>"
            wall.Text = wall.Text & "<td style=""float:right;""><img src=""img/haendchen.png""  alt=""""></td>"
            wall.Text = wall.Text & "<td>" & GridView1.Rows(i).Cells(0).Text & "</td>"
            wall.Text = wall.Text & "<td style=""float:right;""><input type=""button"" onclick=""location.replace('http://gigacube-gewinnspiel.de/updater.aspx?id=" & GridView1.Rows(i).Cells(1).Text & "')"" value=""Jetzt voten "" style=""font-weight: bold !important; "" /></td>"
            wall.Text = wall.Text & "</tr></table>"
            wall.Text = wall.Text & "</div>"
        Next
    End Sub

    Protected Sub Neuste_Click(sender As Object, e As EventArgs) Handles Neuste.Click
        GridView1.Sort("id", SortDirection.Descending)
    End Sub
    Protected Sub beliebteste_Click(sender As Object, e As EventArgs) Handles beliebteste.Click
        GridView1.Sort("Votings", SortDirection.Descending)
    End Sub

    Private Sub GridView1_Sorted(sender As Object, e As EventArgs) Handles GridView1.Sorted
        wally()
    End Sub
End Class
