<%@ Page Language="VB" AutoEventWireup="true" CodeFile="faceb.aspx.vb" EnableEventValidation="false" Inherits="dummy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#"  xmlns:fb="http://ogp.me/ns/fb#"">

 <head runat="server">
  <title>vodafone.de - Selfie Box</title>
  <link href="img/favicon.ico" rel="shortcut icon" />
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <meta property="fb:admins" content="1691686011126583"/>
    <%--<meta property="fb:app_id" content="529221790561119"/>--%>
    <%--<meta property="og:image:width" content="1080" />
<meta property="og:image:height" content="1680" />--%>
   <link rel="stylesheet" href="fb_geteilt/css/style_teilen.css" type="text/css" />  
   
   <script src="fb_geteilt/js/jquery.min.js"></script>
   <script src="fb_geteilt/js/responsiveslides.js"></script>
  <script>

      $(function () {

          $('video').click(function () {
              if ($(this).get(0).paused) {
                  $(this).get(0).play();
              }
              else {
                  $(this).get(0).pause();
              }
          });
      });

</script>
 </head>
 
 
 
<body> 
 
  
  <div class="header">    
      
                
    
	<div class="maps"><asp:Label ID="resultload" runat="server" Text=""></asp:Label></div>   
    <div class="maps_2"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
    
  </div> 
  
    
  <div class="wrapper">
  
  <div class="content_1">
      <asp:Label ID="TargetFoto" runat="server" ></asp:Label>
 
   
   <div class="col2">
   
   <h1>Vodafone Selfie Box - Ich war schon da!</h1> 
  
   <p>Möchtest Du auch ein lustiges Selfie an der Vodafone Selfie Box machen? Komm in Deinen Vodafone Shop in Oberhausen und mach auch bei der coolen Fotoaktion mit.</p>
   <%--<p>Komm und mach mit. <br />Anklopfen, Wunsch für Deinen Lieblingsmenschen aufnehmen und gewinnen. Infos zur Aktion und zur Roadshow findest Du unter:  <a href="http://www.vod.af/knock" target="_blank" style="color: #525252; text-decoration:underline">www.vod.af/knock</a></p>--%>
   
   </div>


  
   
    


   <div style="clear:both;"></div> 
   

     
  </div>
  
  </div> 
 
  
  <%--<div id="footer">     
   <span style="margin-right: 5px">© 2015 Vodafone GmbH</span> | <a href="http://www.vodafone.de/datenschutz.html" target="_blank">Datenschutz</a> | <a href="img/Teilnahmebedingungen.pdf" target="_blank">Teilnahmebedingungen</a> | <a href="http://www.vodafone.de/impressum.html" target="_blank">Impressum</a>
    </div> --%>


</body>

</html>