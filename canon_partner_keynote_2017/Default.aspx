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
    
   <script type="text/javascript"> 
    function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
} 

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

    
    
  
    <script type="text/javascript" language="javascript">



        function weitere() {
            if (document.getElementById("teilnahme_ja").checked == true) {
                if (document.getElementById("Teilnahme1").checked == true) {
                    document.getElementById("tn1").style.display = 'block';
                    document.getElementById("table_tn2").style.display = 'block';
                    
                }
                else {
                    document.getElementById("tn1").style.display = 'none';
                    document.getElementById("table_tn2").style.display = 'none';
                }
                if (document.getElementById("Teilnahme2").checked == true) {
                    document.getElementById("tn2").style.display = 'block';
                    document.getElementById("table_tn3").style.display = 'block';
                }
                else {
                    document.getElementById("tn2").style.display = 'none';
                    document.getElementById("table_tn3").style.display = 'none';
                }
                if (document.getElementById("Teilnahme3").checked == true) {
                    document.getElementById("tn3").style.display = 'block';
                }
                else {
                    document.getElementById("tn3").style.display = 'none';
                }
            }
            else{
                document.getElementById("angaben").style.display = 'none';
                document.getElementById("table_tn1").style.display = 'none';
                document.getElementById("tn1").style.display = 'none';
                document.getElementById("table_tn2").style.display = 'none';
                document.getElementById("tn2").style.display = 'none';
                document.getElementById("table_tn3").style.display = 'none';
                document.getElementById("tn3").style.display = 'none';
            }
            
        if (document.getElementById("teilnahme_nein").checked == true) {
            if (document.getElementById("Teilnahme4").checked == true) {
                document.getElementById("tn4").style.display = 'block';
                document.getElementById("table_tn5").style.display = 'block';
            }
            else {
                document.getElementById("tn4").style.display = 'none';
                document.getElementById("table_tn5").style.display = 'none';
            }
            if (document.getElementById("Teilnahme5").checked == true) {
                document.getElementById("tn5").style.display = 'block';
                document.getElementById("table_tn6").style.display = 'block';
            }
            else {
                document.getElementById("tn5").style.display = 'none';
                document.getElementById("table_tn6").style.display = 'none';
            }
            if (document.getElementById("Teilnahme6").checked == true) {
                document.getElementById("tn6").style.display = 'block';
            }
            else {
                document.getElementById("tn6").style.display = 'none';
            }
        }
        else{
            document.getElementById("table_tn4").style.display = 'none';
            document.getElementById("tn4").style.display = 'none';
            document.getElementById("table_tn5").style.display = 'none';
            document.getElementById("tn5").style.display = 'none';
            document.getElementById("table_tn6").style.display = 'none';
            document.getElementById("tn6").style.display = 'none';
        }
            
       }

        function auswahl() {
            document.getElementById("Button1").style.display = 'none';
            document.getElementById("angaben").style.display = 'none';
            if (document.getElementById("teilnahme_ja").checked == true) {                
                document.getElementById("table_tn1").style.display = 'block';
                document.getElementById("Button1").style.display = 'block';
                document.getElementById("angaben").style.display = 'block';
                document.getElementById("table_tn4").style.display = 'none';
                document.getElementById("tn4").style.display = 'none';
                document.getElementById("table_tn5").style.display = 'none';
                document.getElementById("tn5").style.display = 'none';
                document.getElementById("table_tn6").style.display = 'none';
                document.getElementById("tn6").style.display = 'none';
            }
            else {                
                document.getElementById("table_tn1").style.display = 'none';
            }
            if (document.getElementById("teilnahme_nein").checked == true) {                
                document.getElementById("table_tn4").style.display = 'block';
                document.getElementById("Button1").style.display = 'block';
                document.getElementById("angaben").style.display = 'none';
                document.getElementById("table_tn1").style.display = 'none';
                document.getElementById("tn1").style.display = 'none';
                document.getElementById("table_tn2").style.display = 'none';
                document.getElementById("tn2").style.display = 'none';
                document.getElementById("table_tn3").style.display = 'none';
                document.getElementById("tn3").style.display = 'none';
            }
            else {                
                document.getElementById("table_tn4").style.display = 'none';
            }
            
        }
       
    
           </script>


  
    
     
 </head>
 
<body onload="weitere(); auswahl(); openCity(event, 'Agenda');">
 <a name="top"></a>
    <header>
    <div class="cont_before_nav">
    <div class="logo"><a href="#top"><img src="img/logo.png" border="0" alt="" /></a></div>  
      <nav class="nav-collapse">
        <ul style="width: 100% !important;">
          <li class="menu-item"><a href="#willkommen">WILLKOMMEN</a></li>
          <li class="menu-item"><a href="#short_facts">SHORT FACTS</a></li>
          <li class="menu-item"><a href="#anmeldung">ANMELDUNG</a></li>
          <li class="menu-item"><a href="#hotline">HOTLINE</a></li>          
        </ul>
      </nav>
      </div>
    </header>
    
    
    
<!--<div class="line_bottom_nav"></div>-->


<div id="slide1"></div>
  <a name="willkommen"></a> 
  
    <div id="slide2">
        <div>
            <div>
          
         <!--<p style="font-size: 140%;"><strong><asp:Label ID="gruss" runat="server"></asp:Label></strong></p>-->
           
            <h1 class="willkommenstext">Herzlich willkommen</h1>


<p>Am 26. Juni 2017 laden wir Sie herzlich ins Canon Convention Center nach Krefeld ein.</p>

<p><strong>Freuen Sie sich auf einen exklusiven Vorgeschmack inklusive First Touch der kommenden Canon Produktneuheiten und einen tieferen Einblick in die CIG Sales- und Marketing-Strategie.</strong><br />
Gerne begrüßen wir Sie auch in unserem neuen Experience Center.</p>

<p>Besuchen Sie uns und nutzen Sie die Möglichkeit zu einem persönlichen Dialog in
entspannter Atmosphäre.</p>

<p>Melden Sie sich gleich an.</p>

<p><a href="#anmeldung2"><button type="button">ZUR ANMELDUNG</button></a></p>

<p><strong>Wir freuen uns, Sie als Gast begrüßen zu dürfen!</strong></p>






        </div>
        </div>
    </div>
 
   <div id="slide3"></div>
 <a name="short_facts"></a>
    
 
    
    
    <div id="slide4">
        <div style="border: 0px solid red;">
               <div>
            	<h1>Short Facts</h1>
                
                
<p>

<table border="0" cellpadding="0" cellspacing="0" class="table_desk">
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch1.src='img/icon_hover_1.jpg';" onmouseout="austausch1.src='img/icon_1.jpg';">
<img src="img/icon_1.jpg" name="austausch1" border="0" class="icon_image" /></a>
  </td>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2.src='img/icon_hover_2.jpg';" onmouseout="austausch2.src='img/icon_2.jpg';">
<img src="img/icon_2.jpg" name="austausch2" border="0" class="icon_image" /></a>
</td>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch3.src='img/icon_hover_3.jpg';" onmouseout="austausch3.src='img/icon_3.jpg';">
<img src="img/icon_3.jpg" name="austausch3" border="0" class="icon_image" /></a>
  </td>
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Anmeldung</span><br />
  Gleich anmelden.<br />
<span style="color: #cc0000">Frist bis 19. Juni 2017</span></p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Veranstaltungsort</span><br />
  Canon Deutschland GmbH<br />
Convention Center</p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Hotel</span><br />
 Anreise- und Hotel-Kosten werden<br />von uns übernommen. Geben<br />Sie Ihre Wünsche einfach bei der Anmeldung an.</p>  
  </td>
 </tr>
 <tr>
  <td align="center">&nbsp;</td>
  <td align="center">&nbsp;</td>
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center"><a onmouseover="austausch4.src='img/icon_hover_4.jpg';" onmouseout="austausch4.src='img/icon_4.jpg';">
<img src="img/icon_4.jpg" name="austausch4" border="0" class="icon_image" /></a></td>
  <td align="center"><a onmouseover="austausch5.src='img/icon_hover_5.jpg';" onmouseout="austausch5.src='img/icon_5.jpg';">
<img src="img/icon_5.jpg" name="austausch5" border="0" class="icon_image" /></a></td>
  <td align="center"><a onmouseover="austausch6.src='img/icon_hover_6.jpg';" onmouseout="austausch6.src='img/icon_6.jpg';">
<img src="img/icon_6.jpg" name="austausch6" border="0" class="icon_image" /></a></td>
 </tr> 
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Zeitrahmen</span><br />
  <strong>Mo. 26. Juni 2017</strong><br />
13:00 bis 17:00 Uhr:<br />
Canon Partner-Key Note 2017<br />
17:30 bis 22:00 Uhr:<br />
Get together und Dinner-Buffet</p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Anschlusstermin</span><br />
  Sie planen einen Anschlusstermin?<br />Geben Sie Ihren Wunsch im<br />Anmeldeformular an, wir<br />verlängern Ihr Hotelzimmer.</p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Dresscode</span><br />Business Casual</p>  
  </td>
 </tr>
</table>


<table border="0" cellpadding="0" cellspacing="0" class="table_mobile_1">
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch1_1.src='img/icon_hover_1.jpg';" onmouseout="austausch1_1.src='img/icon_1.jpg';">
<img src="img/icon_1.jpg" name="austausch1_1" border="0" class="icon_image" /></a></td>
  <td align="center" class="breite_spalte"><a onmouseover="austausch1_2.src='img/icon_hover_2.jpg';" onmouseout="austausch1_2.src='img/icon_2.jpg';">
<img src="img/icon_2.jpg" name="austausch1_2" border="0" class="icon_image" /></a></td>
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Anmeldung</span><br />
  Gleich anmelden.<br />
<span style="color: #cc0000">Frist bis 19. Juni 2017</span></p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Veranstaltungsort</span><br />
  Canon Deutschland GmbH<br />
Convention Center</p>  
  </td>  
 </tr>
 <tr>
  <td align="center">&nbsp;</td> 
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center"><a onmouseover="austausch1_3.src='img/icon_hover_3.jpg';" onmouseout="austausch1_3.src='img/icon_3.jpg';">
<img src="img/icon_3.jpg" name="austausch1_3" border="0" class="icon_image" /></a></td>
  <td align="center"><a onmouseover="austausch1_4.src='img/icon_hover_4.jpg';" onmouseout="austausch1_4.src='img/icon_4.jpg';">
<img src="img/icon_4.jpg" name="austausch1_4" border="0" class="icon_image" /></a></td>  
 </tr> 
 <tr>
  <td align="center" valign="top">
   <p><span class="subhead">Hotel</span><br />
 Anreise- und Hotel-Kosten werden<br />von uns übernommen. Geben<br />Sie Ihre Wünsche einfach bei der Anmeldung an.</p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Zeitrahmen</span><br />
  <strong>Mo. 26. Juni 2017</strong><br />
13:00 bis 17:00 Uhr:<br />
Canon Partner-Key Note 2017<br />
17:30 bis 22:00 Uhr:<br />
Get together und Dinner-Buffet</p>  
  </td>  
 </tr>
 <tr>
  <td align="center">&nbsp;</td> 
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center"><a onmouseover="austausch1_5.src='img/icon_hover_5.jpg';" onmouseout="austausch1_5.src='img/icon_5.jpg';">
<img src="img/icon_5.jpg" name="austausch1_5" border="0" class="icon_image" /></a></td>
  <td align="center"><a onmouseover="austausch1_6.src='img/icon_hover_6.jpg';" onmouseout="austausch1_6.src='img/icon_6.jpg';">
<img src="img/icon_6.jpg" name="austausch1_6" border="0" class="icon_image" /></a></td>  
 </tr> 
 <tr>
  <td align="center" valign="top">
 <p><span class="subhead">Anschlusstermin</span><br />
  Sie planen einen Anschlusstermin? Geben Sie Ihren Wunsch im Anmeldeformular an, wir verlängern<br /> Ihr Hotelzimmer</p>  
  </td>
  <td align="center" valign="top">
  <p><span class="subhead">Dresscode</span><br />Business Casual</p> 
  </td>  
 </tr>
</table>



<table border="0" cellpadding="0" cellspacing="0" class="table_mobile_2">
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_1.src='img/icon_hover_1.jpg';" onmouseout="austausch2_1.src='img/icon_1.jpg';">
<img src="img/icon_1.jpg" name="austausch2_1" border="0" class="icon_image" /></a>
  </td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Anmeldung</span><br />
  Gleich anmelden.<br />
<span style="color: #cc0000">Frist bis 19. Juni 2017</span></p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_2.src='img/icon_hover_2.jpg';" onmouseout="austausch2_2.src='img/icon_2.jpg';">
<img src="img/icon_2.jpg" name="austausch2_2" border="0" class="icon_image" /></a>
</td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Veranstaltungsort</span><br />
  Canon Deutschland GmbH<br />
Convention Center</p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_3.src='img/icon_hover_3.jpg';" onmouseout="austausch2_3.src='img/icon_3.jpg';">
<img src="img/icon_3.jpg" name="austausch2_3" border="0" class="icon_image" /></a>
  </td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Hotel</span><br />
 Anreise- und Hotel-Kosten werden<br />von uns übernommen. Geben<br />Sie Ihre Wünsche einfach bei der Anmeldung an.</p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_4.src='img/icon_hover_4.jpg';" onmouseout="austausch2_4.src='img/icon_4.jpg';">
<img src="img/icon_4.jpg" name="austausch2_4" border="0" class="icon_image" /></a>
  </td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Zeitrahmen</span><br />
  <strong>Mo. 26. Juni 2017</strong><br />
13:00 bis 17:00 Uhr:<br />
Canon Partner-Key Note 2017<br />
17:30 bis 22:00 Uhr:<br />
Get together und Dinner-Buffet</p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_5.src='img/icon_hover_5.jpg';" onmouseout="austausch2_5.src='img/icon_5.jpg';">
<img src="img/icon_5.jpg" name="austausch2_5" border="0" class="icon_image" /></a>
  </td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Anschlusstermin</span><br />
  Sie planen einen Anschlusstermin? Geben Sie Ihren Wunsch im Anmeldeformular an, wir verlängern<br /> Ihr Hotelzimmer</p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
 <tr>
  <td align="center" class="breite_spalte">
  <a onmouseover="austausch2_6.src='img/icon_hover_6.jpg';" onmouseout="austausch2_6.src='img/icon_6.jpg';">
<img src="img/icon_6.jpg" name="austausch2_6" border="0" class="icon_image" /></a>
  </td>  
 </tr>
 <tr>
  <td align="center" valign="top">
  <p><span class="subhead">Dresscode</span><br />Business Casual</p>  
  </td>    
 </tr>
 <tr>   
  <td align="center">&nbsp;</td>
 </tr>
</table>






</p>

             	
              </div>
        </div>
    </div>
    
    <div id="slide7"></div>
   <a name="anmeldung"></a>
   <a name="anmeldung2"></a>
    <div id="slide6">
    
    <div>
            <div>
            
            
          

<h1>Anmeldung</h1>



 <div class="tab">
  <button id="button_agenda" class="tablinks active" onclick="openCity(event, 'Agenda')">Agenda</button>
  <button class="tablinks" onclick="openCity(event, 'Event-/Reiseinfo')">Event-/Reiseinfo</button>
  <button class="tablinks" onclick="openCity(event, 'Anmeldung')">Anmeldung</button>
</div>

<div id="Agenda" class="tabcontent">
  
  <p>

<div class="agenda_desk">  
<table class="tabelle_agenda" cellspacing="0" cellpadding="0" border="0">
 <tr>
  <td style="width: 20% !important; border-bottom: 2px solid #323232 !important; "><strong>Beginn</strong></td>
  <td style="width: 5% !important; border: 0px solid red;"></td>
  <td style="border-bottom: 2px solid black !important; "><strong>Thema</strong></td> 
 </tr>
 
 <tr>
  <td valign="top">ab 12:00 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Ankunft im Convention Center<br />
Empfang bei Snacks und Getränken / Experience Center Tour</td>
  
 </tr>
 <tr>
  <td valign="top">13:00 - 13:30 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Vortrag I – Begrüßung & CIG Strategie</td>  
 </tr>
 <tr>
  <td valign="top">13:30 - 14:15 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Vortrag II – Sales Strategie Retail & ProIG</td>  
 </tr> 
 <tr>
  <td valign="top">14:15 - 15:45 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Produkt Präsentation in Gruppen / parallel Kaffeepause</td>  
 </tr>
 <tr>
  <td valign="top">15:45 - 16:30 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Vortrag III – Marketing Strategie & Aktivitäten</td>  
 </tr>
 <tr>
  <td valign="top">16:30 - 17.30 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Touch & Try + Experten Talk im Experience Center</td>  
 </tr>
 <tr>
  <td valign="top">17:30 - 22:00 Uhr</td>
  <td style="border: 0px solid red;"></td>
  <td valign="top">Get Together & Dinner-Buffet im Convention Center</td>  
 </tr>
 <tr>
  <td valign="top">ab 22:00 Uhr</td>
  <td></td>
  <td valign="top">Transfer zum Hotel</td>  
 </tr>
</table>
</div>

<div class="agenda_mobil">  
<table class="tabelle_agenda" cellspacing="0" cellpadding="0" border="0">

 <tr>
  <td style="width: 100% !important"><strong>ab 12:00 Uhr</strong><br />Ankunft im Convention Center<br />
Empfang bei Snacks und Getränken / Experience Center Tour</td>
 
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>13:00 - 13:30 Uhr</strong><br />Vortrag I – Begrüßung & CIG Strategie</td>
 
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>13:30 - 14:15 Uhr</strong><br />Vortrag II – Sales Strategie Retail & ProIG</td> 
 </tr> 
 <tr>
  <td style="width: 100% !important"><strong>14:15 - 15:45 Uhr</strong><br />Produkt Präsentation in Gruppen / parallel Kaffeepause</td>
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>15:45 - 16:30 Uhr</strong><br />Vortrag III – Marketing Strategie & Aktivitäten</td>
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>16:30 - 17.30 Uhr</strong><br />Touch & Try + Experten Talk im Experience Center</td>
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>17:30 - 22:00 Uhr</strong><br />Get Together & Dinner-Buffet im Convention Center</td>
 </tr>
 <tr>
  <td style="width: 100% !important"><strong>ab 22:00 Uhr</strong><br />Transfer zum Hotel</td>
 </tr>
</table>
 </div> 
  
  </p>
  
</div>

<div id="Event-/Reiseinfo" class="tabcontent">
 
  <p>
  
  <div class="wrapper_accordion">





<button class="accordion">Location</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
  
  <div class="hotel_left">
   <img src="img/bild_location.jpg" border="0" class="hotel_img" />
  </div>
  
  <div class="hotel_right">
    <div class="abstand_location"> 
   <p class="accordion_panel_absatz"> 
  Canon Deutschland GmbH, Krefeld<br />
Convention Center<br />
Europark Fichtenhain A10<br />
47807 Krefeld<br />
Deutschland

   </p> 
   </div>
   
  </div>
  
  <p class="accordion_panel_absatz">
  <a href="https://www.google.at/maps/place/Canon+Deutschland+GmbH/@51.29286,6.5554313,17z/data=!3m1!4b1!4m5!3m4!1s0x47b8b02a4dfff5d3:0x67131d34cdd4034c!8m2!3d51.29286!4d6.55762" target="_blank"><img src="img/map_canon.jpg" border="0" style="width: 100%; height: auto; margin-top: 30px; margin-bottom: 30px;" border="0" alt=""  /></a></p>
  
  <div style="width: 100% !important; height: 30px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  
  
  
  
  </p>
</div>


<button class="accordion">Anreise und Hotel</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
  <p class="accordion_panel_absatz"><strong>Anreise- und Hotel-Info</strong></p>
  
  <p class="accordion_panel_absatz">
  Anreise und Hotelunterkunft sind für Sie kostenfrei. Lediglich Pkw- und Taxikosten (ab/an Bahnhof/Flughafen) sollten von Ihnen individuell bezahlt werden. Bitte geben Sie im Anmeldeformular an, wenn Sie diesen Service nutzen möchten.

  </p>
  
  <hr style="margin-left: 0%; margin-right: 0%; margin-bottom: 30px; margin-top: 30px !important; " />
  
  <p class="accordion_panel_absatz"><strong>Hotel</strong></p>
  
  
  <div class="hotel_left">
   <img src="img/bild_hotel.jpg" border="0" class="hotel_img" />
  </div>
  
  <div class="hotel_right">
   <p class="accordion_panel_absatz" style="margin-top: 55px;">
   <strong>TRYP Düsseldorf Krefeld</strong><br />
Europark Fichtenhain A1<br />
47807 Krefeld, Germany
   </p>
   
   <p style="margin-top: 30px !important; "><a href="https://www.melia.com/de/hotels/deutschland/dusseldorf/tryp-dusseldorf-krefeld-hotel/index.html?mkwid=sc1L8BXXM_dc&pcrid=85374137460&pkw=+tryp%20+d%C3%BCsseldorf%20+krefeld&pmt=b&SI=sideinbound&gclid=CL3S3tWErNQCFc8YGwodk0AIjQ&cvosrc=ppc.google.%2btryp%20%2bd%c3%bcsseldorf%20%2bkrefeld&matchtype=b&cvo_crid=85374137460#ectrans=1" target="_blank"><button type="button">ZUR WEBSITE</button></a></p>
   
  
  
   
   
   
   
   
  </div>
  <div style="clear: both; width: 100%;height: 30px;">&nbsp;</div>
  <hr style="margin-left: 0%; margin-right: 0%; margin-bottom: 30px; margin-top: 30px !important; " /> 
  

  
  <p class="accordion_panel_absatz"><strong>Buchung</strong></p>
  
  
  <p class="accordion_panel_absatz">
  Für den Fall, dass Sie Ihr Hotel selbst und auf eigene Kosten buchen möchten, 
haben wir für Sie einen vergünstigten Hotelpreis vereinbart.</p>

<p class="accordion_panel_absatz">
Bitte nennen Sie hierzu bei der Buchung das Kennwort: <br />
Canon Partner Key-Note</span>

  </p>
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
   </p>
  
   <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  </p>
</div>

<button class="accordion">Shuttle</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
 <p style="float: left; width: 30%; margin: 0px 0px 0px 0px;">Mo. 26.06.2017</p>
 <p style="float: left; width: 30%; margin: 0px 0px 0px 0px;">ab 22.00 Uhr</p>
 <p style="float: left; width: 30%; margin: 0px 0px 0px 0px;">Canon Convention Center<br />– Tryp Hotel Krefeld</p>



  
  
 <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div> 
  
  </p>
</div>

<button class="accordion">Hotline</button>
<div class="panel">
  <p class="accordion_panel_absatz">Für Rückfragen können Sie sich gerne an die Hotline wenden.<br />
  Hotline: <a href="mailto:partner-keynote2017@canon-events.de" target="_blank" style="cursor:pointer; text-decoration:underline">partner-keynote2017@canon-events.de</a></p>
</div>










</div>
  
  
  </p>
  
</div>

<div id="Anmeldung" class="tabcontent">

  <p>
  
  
  <div class="wrapper_accordion">






<div>
  <p>
  
  
  <div>
              
            	<!--<h1><asp:Label ID="ueberschrift_anmeldung" runat="server" Text="Anmeldung"></asp:Label></h1>-->
            

<!--<p><asp:Label ID="subtext_anmeldung" runat="server" Text=""></asp:Label></p>-->

<p>
                        <div class="anmeldeform">
                            <form id="Form1" method="post" runat="server">

                                <asp:Panel ID="anmeldung_offen" runat="server" Visible="true">
                                <p style="margin: 0px 0px 50px 0px;"><strong>Persönliche Daten</strong></p>
                                    <p class="volle_breite">
                                        <asp:RadioButton ID="anrede_frau" runat="server" GroupName="anrede" Text="&nbsp;&nbsp;Frau" />
                                        <asp:RadioButton ID="anrede_herr" runat="server" GroupName="anrede" Text="&nbsp;&nbsp;Herr" />
                                    </p>

                                    <p class="geteilt">
                                        <asp:TextBox ID="vorname" runat="server" Enabled="false" placeholder="Vorname*"></asp:TextBox>
                                    </p>

                                    <p class="geteilt_2">
                                        <asp:TextBox ID="nachname" runat="server" Enabled="false" placeholder="Nachname*"></asp:TextBox>
                                    </p>
                                    
                                    

                                    <p class="geteilt">
                                        <asp:TextBox ID="Bereich" runat="server" placeholder="Bereich"></asp:TextBox>
                                    </p>

                                    <p class="geteilt_2">
                                        <asp:TextBox ID="firma" runat="server" placeholder="Firma*"></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="Strasse" runat="server" placeholder="Straße"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="Nr" runat="server" placeholder="Nr."></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="PLZ" runat="server" placeholder="PLZ"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="Ort" runat="server" placeholder="Ort"></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="Telefon" runat="server" placeholder="Telefon"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="Telefax" runat="server" placeholder="Telefax"></asp:TextBox>
                                    </p>
                                     <p class="geteilt">
                                        <asp:TextBox ID="Mobile" runat="server" placeholder="Mobile*"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="email" runat="server" placeholder="E-Mail-Adresse*"></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="Mitteilung" runat="server" placeholder="Ihre Mitteilung" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                    </p>
                                    <div style="width: 100%; clear: both;">&nbsp;</div>
                                      
                                    <p style="margin: 30px 0px 50px 0px;"><strong>Anmeldung</strong></p>

                                    <p class="volle_breite" style="margin-bottom:0px;padding-bottom:0px;">
                                        <asp:RadioButton ID="teilnahme_ja" GroupName="teilnahme" runat="server" Text="&nbsp;&nbsp;Ja, ich nehme teil" />
                                    </p>
                                      
                                    <div style="margin-left:20px;margin-bottom:50px; margin-top:0px;">
                                    <table id="table_tn1" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:0px;"><asp:CheckBox ID="Teilnahme1" runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 0px 0px 0px 0px !important;">weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn1"  style="display:none; margin-left: 10px; margin-top: 10px;">
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="unternamen1" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede1" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name1" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname1" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>

                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail1" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                         </div>                                

                                    <table id="table_tn2" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:40px;"><asp:CheckBox ID="Teilnahme2" runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 40px 0px 0px 0px !important;">weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn2"  style="display:none; margin-left: 10px; margin-top: 10px;">
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Unternemen2" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede2" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name2" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname2" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>

                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail2" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                    </div>


                                    <table id="table_tn3" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:40px;"><asp:CheckBox ID="Teilnahme3" runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 40px 0px 0px 0px !important;">weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn3"  style="display:none; margin-left: 10px; margin-top: 10px;">

                                    <p class="geteilt_3">
                                        <asp:TextBox ID="Unternemen3" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                   
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede3" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name3" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname3" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>

                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail3" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                    
                                    
                                        </div>
                                        
                                        <p class="volle_breite" style="margin: 20px 0px 0px -20px !important">
                                        <asp:RadioButton ID="teilnahme_nein" GroupName="teilnahme" runat="server" Text="&nbsp;&nbsp;Ich kann leider nicht teilnehmen" />
                                    </p> 
                                       
                                    </div>

                                   

                                  <div style="margin-left:20px;margin-bottom:50px;">    
                                    <table id="table_tn4" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:20px;"><asp:CheckBox ID="Teilnahme4" runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 20px 0px 0px 0px !important;">Laden Sie bitte stattdessen ein</p></td>
                                           </tr>  
                                    </table>


                                    <div id="tn4"  style="display:none;margin-left: 10px; margin-top: 10px;">
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Unternemen4" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede4" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name4" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname4" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail4" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                    </div>

                                       
                                        
                                    <table id="table_tn5" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme5" runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 30px 0px 0px 0px !important;">weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn5" runat="server" style="display:none;margin-left: 10px; margin-top: 10px;">
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Unternemen5" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede5" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name5" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname5" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail5" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                        </div> 
                                    <table  id="table_tn6" style="display:none; margin-left: 10px;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme6"  runat="server" /></td>
                                               <td style="vertical-align:top;"><p style="margin: 30px 0px 0px 0px !important;">weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn6" runat="server" style="display:none;margin-left: 10px; margin-top: 10px;">
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="Unternemen6" runat="server" placeholder="Unternemen"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Anrede6" runat="server" placeholder="Anrede"></asp:TextBox>
                                    </p>
                                      <p class="geteilt_3">
                                        <asp:TextBox ID="Name6" runat="server" placeholder="Name"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_3">
                                        <asp:TextBox ID="Vorname6" runat="server" placeholder="Vorname"></asp:TextBox>
                                    </p>
                                     <p class="geteilt_3">
                                        <asp:TextBox ID="EMail6" runat="server" placeholder="E-Mail"></asp:TextBox>
                                    </p>
                                        </div>
                                        
                                        </div>
                                    
<div style="width: 100%; clear: both;">&nbsp;</div>
                                    <div id="angaben">
                                    
                                    <p style="margin: 30px 0px 0px 0px;"><strong>An-/Abreise</strong></p>
                                     <p class="volle_breite" style="margin-bottom:0px;padding-bottom:0px;">
                                         <table style="margin: 0px 0px 0px 0px !important;">
                                           <tr>
                                               <td style="vertical-align:top;padding-top:37px;"><asp:CheckBox ID="CheckBoxReise" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>Bitte übernehmen Sie meine Reiseplanung (unser Orga-Team wird Sie kontaktieren)</p></td>
                                           </tr>  
                                         </table>
                                          
                                    </p>
                                    <p class="volle_breite">
                                        <asp:TextBox ID="Abreiseort" runat="server" placeholder="Mein Abreiseort"></asp:TextBox>
                                    </p>
                                  <p class="volle_breite">
                                        <asp:TextBox ID="Rueckreiseort" runat="server" placeholder="Mein Rückreiseort"></asp:TextBox>
                                    </p>
                                    <p class="volle_breite">
                                        <asp:Label ID="droblabel" runat="server" Text="Bevorzugtes Transportmittel:">
                                            
                                        </asp:Label> <asp:DropDownList ID="Transportmittel" runat="server">
                                            <asp:ListItem>Flug</asp:ListItem>
                                            <asp:ListItem>Bahn</asp:ListItem>
                                        </asp:DropDownList>
                                    </p>
                                   
                                   <p>&nbsp;</p>
                                   <p style="margin: 0px 0px 20px 0px !important;"><strong>Hotel</strong></p>
                                    <table>
                                           <tr>
                                               <td style="vertical-align:top;padding-top:37px;"><asp:CheckBox ID="CheckBoxBuchen" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>Bitte buchen Sie für mich eine Übernachtung vom 26. auf den 27.06.2017</p></td>
                                           </tr>  
                                         </table>

                                    

                                     <table>
                                           <tr>
                                               <td style="vertical-align:top;padding-top:37px;"><asp:CheckBox ID="CheckBoxVorBuchen" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>Ich habe einen Anschlusstermin – bitte verlängern Sie meinen Hotelaufenthalt bis zum 28.06.2017</p></td>
                                           </tr>  
                                         </table>



                                     
                                   
                                        <p style="margin: 40px 0px 20px 0px;"><strong>Shuttle</strong></p>
                                    <table>
                                           <tr>
                                               <td style="vertical-align:top;padding-top:37px;"><asp:CheckBox ID="shuttle_ja" Text="" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>Ich nutze den Shuttle am Event-Abend ab 22.00 Uhr</p></td>
                                           </tr>  
                                         </table>
                                    </div>
                                    <p class="volle_breite" style="color: #ff0000; font-weight: bold;">
                                        <asp:Label ID="fehlermeldung" runat="server" Visible="false">Bitte fülle die markierten Felder aus und drücke auf "Absenden".</asp:Label>
                                    </p>
                                    <p class="volle_breite">
                                        <asp:Button ID="Button1" runat="server" Text="Absenden" />
                                    </p>

                                </asp:Panel>

                                <asp:Panel ID="anmeldung_zusage" runat="server" Visible="false">
                                    <p>Vielen Dank. Sie erhalten in Kürze eine Bestätigung per E-Mail.</p>
            
                                </asp:Panel>
                                </form>
                                </div>
 
           
 </p>               
                

              
                
                
                
              </div>
  
  
  
  
  
  
   </p>
  
   <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  </p>
  
  
  
  
  
   
  
  
  
  
  
  
  
  </p>
</div>


<%--<button class="accordion">An-/Abreise</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
  <p class="accordion_panel_absatz">An-/Abreise</p>
  
   </p>
  
   <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  </p>
  
  
</div>


<button class="accordion">Hotel</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
  <p class="accordion_panel_absatz">Hotel</p>
  
   </p>
  
   <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  </p>
  
  
</div>

<button class="accordion">Shuttle</button>
<div class="panel">
  <p class="accordion_panel_absatz">
  
  
  <p class="accordion_panel_absatz">Shuttle</p>
  
   </p>
  
   <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
  
  </p>
  
  
</div>--%>













</div>
  
  
  
  
  
  
  </p>
</div> 














        </div>
        </div>
   
        
    </div>
    
    
    
    
    <div id="slide13"></div>
    <a name="hotline"></a>
    
    <div id="slide12">
        <div style="border: 0px solid red;margin-top: 30px;">
               <div>
            	<h1>Hotline</h1>
            	


<p>Bei Rückfragen wenden Sie sich gerne an die Hotline.</p>

<p><a href="mailto:partner-keynote2017@canon-events.de"><button type="button">E-Mail</button></a></p>




              </div>
        </div>
    </div>
    
    <div id="slide15"></div>
    
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
 
 





</body>

</html>