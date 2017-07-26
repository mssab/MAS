<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Absage.aspx.vb" Inherits="Abmeldung" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link href="img/favicon.ico" rel="shortcut icon" />

<title>Vodafone - Pathfinder</title>
       	<link rel="stylesheet" href="css/style_absage.css"/>

<link rel="stylesheet" type="text/css" media="only screen and (min-device-width : 320px) and (max-device-width:960px) and (orientation:portrait)" href="css/styles_klein.css" />

<link rel="stylesheet" type="text/css" media="only screen and (min-device-width : 320px) and (max-device-width:960px) and (orientation:landscape)" href="css/styles_klein.css" />


<style type="text/css">   
html {
background: url(img/BG_Abmeldung.jpg) no-repeat center center;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
height: auto; 
background-position:50% 0%;
overflow:hidden;
}
</style>

    <script type="text/javascript" src="js/responsive-nav.js"></script>
   
  <script type="text/javascript" src="js/jquery.min.js"> </script>
   <script type="text/javascript" src="js/javascript.js"> </script>  
 <script type="text/javascript">
        $(function () {
            $('a[href*=#]:not([href=#])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
    </script>


</head>
<body>
    <form id="form1" runat="server">
    


<div id="container">
 <div class="container_absage">
<div style="width: 100%; height: 30px;"></div>
 <h1>Deine Absage</h1>
 <asp:Panel ID="offen" runat="server">
 <p style=" text-align:left;">Schade, dass Du nicht zum Pathfinder Event kommen kannst.
Bitte teile uns kurz den Grund Deiner Absage mit und klicke
anschließend auf „Bestätigen“.</p>
 
 

 
     <p><asp:TextBox ID="bemerkung" runat="server" TextMode="MultiLine" Rows="4" placeholder="..." ></asp:TextBox></p>

 
 
 
  <p style="text-align:left;"><asp:Button ID="Button1" runat="server" Text="Bestätigen" /></p>
    
 <br />
        </asp:Panel>
     <asp:Panel ID="zu" Visible="false" runat="server">
         <p style=" text-align:left;">Wir haben Deine Absage aufgenommen.</p>
          <p style=" text-align:left;">Schade, dass Du nicht zum Pathfinder Event kommen kannst.</p>
         
         <p style=" text-align:left; margin-top:0px;">Solltest Du später doch noch teilnehmen wollen, wende Dich bitte an die <a href="mailto:pathfinder2017@vodafone-managementletter.de" style="color:#ffffff">Hotline</a>.</p>
         <br />
     </asp:Panel>
 </div>
 

</div>
    </form>
</body>
</html>
