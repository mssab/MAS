<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Start.aspx.vb" Inherits="gewinn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <style type="text/css">.mycheckBig input {width:40px; height:40px;}



</style>
</head>
<body style="width:985px; height:1738px; overflow:hidden;margin-left:0px;">
    <form id="form1" runat="server">
    <div style="width:100%; height:100%; font-size:24px; padding-left:48px; color:#000000;">
        <img src="img/start2.jpg" style="width:100%;" alt=""  />
        <h1 style="font-size:52px;">Zeig uns Deinen GigaCube Moment</h1>
        <p><asp:TextBox ID="Name" runat="server" required="required" x-moz-errormessage="Bitte&nbsp;Namen&nbsp;eingeben!" placeholder="Name" Font-Size="56px" Width="100%" ForeColor="black"></asp:TextBox></p>
        <p><asp:TextBox ID="EMail" runat="server" required="required" x-moz-errormessage="Bitte&nbsp;E-Mail&nbsp;eingeben!" placeholder="Mail" Font-Size="56px" Width="100%" ForeColor="black"></asp:TextBox></p>
        <p><asp:FileUpload ID="FUpload" runat="server" Font-Size="56px" BackColor="#43494d" ForeColor="White"  /></p>
        <br />
        <p style="font-size:42px;"><b>Teilnahmebedingungen:</b><br />
            1. Nimm Dein Foto auf und mach es für Deine Kollegen und Freunde sichtbar<br />
            2. Du erhälst eine E-Mail mit Deinem Foto.<br />
            3. Lasse Deine Kollegen und Freunde für Dich voten - vielleicht bist Du der glückliche<br />&nbsp;&nbsp;&nbsp;&nbsp;Gewinner mit den meisten Likes.
        </p>
        <p><asp:CheckBox ID="teilnahmebedingungen" CssClass="mycheckBig" Font-Size="42px" Text=" Ich akzeptiere die Teilnahmebedingungen"  runat="server" /> </p>
        <p><asp:Label ID="fehler" runat="server" Font-Bold="true" ForeColor="Red" Visible="false" ></asp:Label></p>
        <br /><br />
        <p>  <asp:Button ID="Button1" runat="server" Text="Absenden" Font-Size="42px" /></p>
    </div>
    </form>
</body>
</html>
