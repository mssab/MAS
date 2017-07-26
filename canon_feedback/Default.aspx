<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" MaintainScrollPositionOnPostback="true" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  

  
  
       	<title>Canon Partner Key-Note 2017</title>
       	<link rel="stylesheet" href="css/style.css"/>
        
        <link href="img/fav.ico" rel="shortcut icon" />
        
      	<link type="text/css" rel="stylesheet" href="css/nav.css" />
        
        <link rel="stylesheet" type="text/css" href="https://cloud.typography.com/7164796/7898372/css/fonts.css" />
        

       
    
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
    
   
    
    
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.3.1.css" media="screen" />

<script type="text/javascript">
		$(document).ready(function() {
			/*
			*   Examples - images
			*/

			$("a#example1").fancybox({
				'titleShow'		: false
			});

			$("a#example2").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
			});

			$("a#example3").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'
			});

			$("a#example4").fancybox();

			$("a#example5").fancybox({
				'titlePosition'	: 'inside'
			});

			$("a#example6").fancybox({
				'titlePosition'	: 'over'
			});

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'elastic',
				'transitionOut'		: 'elastic',
				'titlePosition' 	: 'over',				
			});

			/*
			*   Examples - various
			*/

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$("#various3").fancybox({
				'width'				: '75%',
				'height'			: '75%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		});
	</script>
    
    
 <script type="text/javascript">
        $(document).ready(function() {

            $("#yt").click(function() {
                $.fancybox({
                        'padding'        : 0,
                        'autoScale'      : false,
                        'transitionIn'   : 'none',
                        'transitionOut'  : 'none',
                        'title'          : this.title,
                        'width'          : 1024,
                        'height'         : 768,
                        'href'           : this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
                        'type'           : 'swf',
                        'swf'            : {
                            'wmode'              : 'transparent',
                            'allowfullscreen'    : 'true'
                        }
                    });
                return false;
            });
        });
        $('#foo').bind('click', function() {
              alert($(this).text());
            });
            $('#foo').trigger('click');
    </script>

    
    
  
    


  
    
     
 </head>
 
<body onload="weitere(); auswahl(); openCity(event, 'Agenda');">
    <form id="form1" runat="server">
 <a name="top"></a>
    <header>
    <div class="cont_before_nav">
    <div class="logo"><a href="#top"><img src="img/logo.png" border="0" alt="" /></a></div>  
      <!--<nav class="nav-collapse">
        <ul style="width: 100% !important;">
          <li class="menu-item"><a href="#willkommen">WILLKOMMEN</a></li>
          <li class="menu-item"><a href="#short_facts">SHORT FACTS</a></li>
          <li class="menu-item"><a href="#anmeldung">ANMELDUNG</a></li>
          <li class="menu-item"><a href="#hotline">HOTLINE</a></li>          
        </ul>
      </nav>-->
      </div>
    </header>
    
  
    



<div id="slide1"></div>
<a name="thx"></a> 
  
    <div id="slide2">
        <div>
            <div>
  
  <!-- Panel offen -->    
                <asp:Panel ID="fragen" runat="server">
            <h1 class="willkommenstext">Vielen Dank für Ihre Teilnahme</h1>


<p>Um bei kommenden Veranstaltungen besser auf Ihre Bedürfnisse eingehen zu können,
möchten wir Sie bitten, uns Ihr Feedback zur Veranstaltung zu geben. Ihre Antworten
werden anonym behandelt.</p>


<p style="height:10px"></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback" style="border: 0px solid #fff;">
<tr>
 <td valign="top" align="left"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>+++</strong></p></td>
 <td valign="top"><p style="text-align:left;  margin: 10px 0px 0px 20px !important;">= trifft voll zu</p></td>
</tr>
<tr>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>++</strong></p></td>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 20px !important;">= trifft zu</p></td>
</tr>
<tr>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>+</strong></p></td>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 20px !important;">= trifft eher zu</p></td>
</tr>
<tr>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>-</strong></p></td>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 20px !important;">= trifft eher nicht zu</p></td>
</tr>
<tr>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>--</strong></p></td>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 20px !important;">= trifft nicht zu</p></td>
</tr>
<tr>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 0px !important;"><strong>---</strong></p></td>
 <td valign="top"><p style="text-align:left; margin: 10px 0px 0px 20px !important;">= trifft überhaupt nicht zu</p></td>
</tr>

</table>

<p style="height:10px"></p>



<p class="absatz_feedback"><strong>1. Der Ablauf der Veranstaltung war angemessen.</strong></p>

<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
     
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf1" GroupName="Ablauf" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf2" GroupName="Ablauf" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf3" GroupName="Ablauf" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf4" GroupName="Ablauf" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf5" GroupName="Ablauf" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Ablauf6" GroupName="Ablauf" runat="server" /></p><p>---</p></td> 
 </tr>
</table>

<p class="absatz_feedback"><strong>2. Die Präsentationen waren verständlich aufbereitet.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte1" GroupName="Inhalte" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte2" GroupName="Inhalte" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte3" GroupName="Inhalte" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte4" GroupName="Inhalte" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte5" GroupName="Inhalte" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte6" GroupName="Inhalte" runat="server" /></p><p>---</p></td> 
 </tr>
</table>

                    <p class="absatz_feedback"><strong>3. Die Inhalte der Präsentationen waren informativ und hilfreich.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b1" GroupName="Inhalte_b" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b2" GroupName="Inhalte_b" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b3" GroupName="Inhalte_b" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b4" GroupName="Inhalte_b" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b5" GroupName="Inhalte_b" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Inhalte_b6" GroupName="Inhalte_b" runat="server" /></p><p>---</p></td> 
 </tr>
</table>

<p class="absatz_feedback"><strong>4. Die Vorstellung der Produktneuheiten war informativ.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten1" GroupName="Neuheiten" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten2" GroupName="Neuheiten" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten3" GroupName="Neuheiten" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten4" GroupName="Neuheiten" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten5" GroupName="Neuheiten" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Neuheiten6" GroupName="Neuheiten" runat="server" /></p><p>---</p></td> 
 </tr>
</table>

<p class="absatz_feedback"><strong>5. Das Rahmenprogramm war gut.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm1" GroupName="Rahmenprogramm" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm2" GroupName="Rahmenprogramm" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm3" GroupName="Rahmenprogramm" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm4" GroupName="Rahmenprogramm" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm5" GroupName="Rahmenprogramm" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Rahmenprogramm6" GroupName="Rahmenprogramm" runat="server" /></p><p>---</p></td> 
 </tr>
</table>

<p class="absatz_feedback"><strong>6. Das Catering war angemessen.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering1" GroupName="Catering" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering2" GroupName="Catering" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering3" GroupName="Catering" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering4" GroupName="Catering" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering5" GroupName="Catering" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Catering6" GroupName="Catering" runat="server" /></p><p>---</p></td> 
 </tr>
    </table>
    <p class="absatz_feedback"><strong>7. Die Reiseplanung war gut organisiert.</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga1" GroupName="Reiseorga" runat="server" /></p><p>+++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga2" GroupName="Reiseorga" runat="server" /></p><p>++</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga3" GroupName="Reiseorga" runat="server" /></p><p>+</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga4" GroupName="Reiseorga" runat="server" /></p><p>-</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga5" GroupName="Reiseorga" runat="server" /></p><p>--</p></td> 
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Reiseorga6" GroupName="Reiseorga" runat="server" /></p><p>---</p></td> 
 </tr>

</table>

 <p class="absatz_feedback"><strong>8. Wünschen Sie sich weitere Veranstaltungen dieser Art?</strong></p>


<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="ja" GroupName="Veranstaltungen" runat="server" /></p><p>Ja</p></td>
  <td valign="top" class="td_heller"><p style="text-align: center"><asp:RadioButton ID="Nein" GroupName="Veranstaltungen" runat="server" /></p><p>Nein</p></td>
 </tr>

</table>


<p class="absatz_feedback"><strong>9. Bitte nennen Sie und gerne Ihre Verbesserungsvorschläge und Bemerkungen.</strong></p>

<table border="0" cellpadding="0" cellspacing="0" class="tabelle_feedback">
 <tr>
  <td valign="top" class="td_heller"><asp:TextBox ID="Bemerkungen" runat="server" tabindex="5" rows="4" cols="35" TextMode="MultiLine"></asp:TextBox></td>
 </tr>

</table>

                <div style="clear: both;">&nbsp;</div>

<p class="absatz_feedback"><asp:Button ID="sendBtn" runat="server" Text="Absenden" />
                </p>
                
                
                
                

                </asp:Panel>           
<!-- Panel geschlossen -->





<!-- Panel DANKE offen -->

 <asp:Panel ID="danke" runat="server" Visible="False">

<h1 class="willkommenstext">Vielen Dank für Ihr Feedback!</h1>

<!-- Panel DANKE geschlossen -->
        </asp:Panel>   

        </div>
        </div>
    </div>
 
   <div id="slide3"></div>

   
    
    
    
    <div class="footer">
    
    <p style="color:#fff;"><strong>Copyright 2017
  | <a href="https://www.canon.de/terms_and_conditions/" target="_blank">Impressum</a></strong></p>
    
    </div>
    
   <script type="text/javascript">
                    var acc = document.getElementsByClassName("accordion");
                    var i;

                    for (i = 0; i < acc.length; i++) {
                        acc[i].onclick = function () {
                            this.classList.toggle("active");
                            var panel = this.nextElementSibling;
                            if (panel.style.maxHeight) {
                                panel.style.maxHeight = null;
                            } else {
                                panel.style.maxHeight = panel.scrollHeight + "px";
                            }
                        }
                    }


                </script>   
 
 <script type="text/javascript" src="js/fastclick.js"></script>
 <script type="text/javascript" src="js/scroll.js"></script>
 <script type="text/javascript" src="js/fixed-responsive-nav.js"></script>   
 
 





    </form>
 
 





</body>

</html>