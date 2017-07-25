
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.IO

Partial Class sharefb
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

    End Sub

    Public Function ThumbnailCallback() As Boolean
        Return False
    End Function

    Dim imgThumb As Image = Nothing

    Public Function btnGenerateThumbnail()
        Dim track As String
        Dim inject As String
        Try
            Dim image As Image = Nothing
            ' Check if textbox has a value
            If track <> String.Empty Then
                image = Image.FromFile(track)
            End If
            ' Check if image exists
            If Not image Is Nothing Then
                imgThumb = image.GetThumbnailImage(100, 100, Nothing, New IntPtr())
                Label1.Text = imgThumb.ToString
            End If
        Catch
            Response.Write("An error occured")
        End Try

    End Function
    Function hochladen(ByVal path As String)

        IO.Directory.CreateDirectory(Server.MapPath("upload_6_2017/" & ID))
        upload(path, "Thm.jpg")

    End Function
    Protected Sub upload(ByVal upload As String, ByVal name As String)


        'Dim filePath As String

        'filePath = Server.MapPath("img/" & name)
        'upload.SaveAs()
        'If upload.FileContent.Length > 12145728 Then
        '    filePath = Server.MapPath("upload_6_2017/" & id & "/" & name)
        '    Dim inputStr As Stream = upload.PostedFile.InputStream
        '    'Based on scalefactor image size will vary
        '    GenerateThumbnails(1.0, inputStr, filePath)
        'Else
        '    ' Display the uploaded file's details
        '    'UploadDetails.Text = "@""Uploaded file: {0}<br /> File size (in bytes): {1:N0}<br />Content-type: {2}"
        '    ' Save the file
        '    filePath = Server.MapPath("upload_6_2017/" & id & "/" & name)
        '    upload.SaveAs(filePath)
        'End If
    End Sub
    Private Sub GenerateThumbnails(ByVal scaleFactor As Double, ByVal sourcePath As Stream, ByVal targetPath As String)
        Using image As Image = Image.FromStream(sourcePath)
            Dim newWidth As Integer = CInt(image.Width * scaleFactor)
            Dim newHeight As Integer = CInt(image.Height * scaleFactor)
            Dim thumbnailImg As Bitmap = New Bitmap(newWidth, newHeight)
            Dim thumbGraph As Graphics = Graphics.FromImage(thumbnailImg)
            thumbGraph.CompositingQuality = CompositingQuality.HighQuality
            thumbGraph.SmoothingMode = SmoothingMode.HighQuality
            thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic
            Dim imageRectangle As Rectangle = New Rectangle(0, 0, newWidth, newHeight)
            thumbGraph.DrawImage(image, imageRectangle)
            thumbnailImg.Save(targetPath, image.RawFormat)
        End Using
    End Sub



End Class
