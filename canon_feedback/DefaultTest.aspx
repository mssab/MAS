<%@ Page Language="VB" AutoEventWireup="true" CodeFile="DefaultTest.aspx.vb" MaintainScrollPositionOnPostback="true" Inherits="_DefaultTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>Canon Partner Key-Note 2017</title>
    <link rel="stylesheet" href="css/style.css" />

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
        $(document).ready(function () {
			/*
			*   Examples - images
			*/

            $("a#example1").fancybox({
                'titleShow': false
            });

            $("a#example2").fancybox({
                'titleShow': false,
                'transitionIn': 'elastic',
                'transitionOut': 'elastic'
            });

            $("a#example3").fancybox({
                'titleShow': false,
                'transitionIn': 'none',
                'transitionOut': 'none'
            });

            $("a#example4").fancybox();

            $("a#example5").fancybox({
                'titlePosition': 'inside'
            });

            $("a#example6").fancybox({
                'titlePosition': 'over'
            });

            $("a[rel=example_group]").fancybox({
                'transitionIn': 'elastic',
                'transitionOut': 'elastic',
                'titlePosition': 'over',
            });

			/*
			*   Examples - various
			*/

            $("#various1").fancybox({
                'titlePosition': 'inside',
                'transitionIn': 'none',
                'transitionOut': 'none'
            });

            $("#various2").fancybox();

            $("#various3").fancybox({
                'width': '75%',
                'height': '75%',
                'autoScale': false,
                'transitionIn': 'none',
                'transitionOut': 'none',
                'type': 'iframe'
            });

            $("#various4").fancybox({
                'padding': 0,
                'autoScale': false,
                'transitionIn': 'none',
                'transitionOut': 'none'
            });
        });
    </script>


    <script type="text/javascript">
        $(document).ready(function () {

            $("#yt").click(function () {
                $.fancybox({
                    'padding': 0,
                    'autoScale': false,
                    'transitionIn': 'none',
                    'transitionOut': 'none',
                    'title': this.title,
                    'width': 1024,
                    'height': 768,
                    'href': this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
                    'type': 'swf',
                    'swf': {
                        'wmode': 'transparent',
                        'allowfullscreen': 'true'
                    }
                });
                return false;
            });
        });
        $('#foo').bind('click', function () {
            alert($(this).text());
        });
        $('#foo').trigger('click');
    </script>



    <script type="text/javascript" language="javascript">



        function weitere() {
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

        function auswahl() {
            if (document.getElementById("teilnahme_ja").checked == true) {                
                document.getElementById("table_tn1").style.display = 'block';
            }
            else {                
                document.getElementById("table_tn1").style.display = 'none';
            }
            if (document.getElementById("teilnahme_nein").checked == true) {                
                document.getElementById("table_tn4").style.display = 'block';
            }
            else {                
                document.getElementById("table_tn4").style.display = 'none';
            }
            
        }
       
    
           </script>






</head>

<body>

    <header>
    <div class="cont_before_nav">
    <div class="logo"><img src="img/logo.png" border="0" alt="" /></div>  
      <nav class="nav-collapse">
        <ul style="width: 100% !important;">
          <li class="menu-item"><a href="#willkommen">WILLKOMMEN</a></li>
          <li class="menu-item"><a href="#short_facts">SHORT FACTS</a></li>
          <li class="menu-item"><a href="#anmeldung">ANMELDUNG</a></li>
          <li class="menu-item"><a href="#">HOTLINE</a></li>          
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

                <p>
                    <strong>Freuen Sie sich auf einen exklusiven Vorgeschmack inklusive First Touch der kommenden Canon Produktneuheiten des Jahres und einen tieferen Einblick in die CIG Sales- und Marketing-Strategie.</strong><br />
                    Auf Wunsch bieten wir zudem eine Führung durch unser Experience Center.
                </p>

                <p>
                    Besuchen Sie uns und nutzen Sie die Möglichkeit zu einem persönlichen Dialog in
entspannter Atmosphäre.
                </p>

                <p>Melden Sie sich gleich an.</p>

                <p>
                    <button type="button">ZUR ANMELDUNG</button>
                </p>

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
                                <p>
                                    <span class="subhead">Anmeldung</span><br />
                                    Gleich anmelden.<br />
                                    <span style="color: #cc0000">Frist bis 16. Juni 2017</span>
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Veranstaltungsort</span><br />
                                    Canon Deutschland GmbH<br />
                                    Convention Center
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Hotel</span><br />
                                    Anreise- und Hotel-Kosten werden<br />
                                    von uns übernommen. Geben<br />
                                    Sie Ihre Wünsche einfach bei der Anmeldung an.
                                </p>
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
                                <p>
                                    <span class="subhead">Zeitrahmen</span><br />
                                    <strong>Mo. 26. Juni 2017</strong><br />
                                    13.00 bis 17.00 Uhr:<br />
                                    Canon Partner-Key Note 2017<br />
                                    17.30 bis 22.00 Uhr:<br />
                                    Get together und Dinner
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Anschlusstermin</span><br />
                                    Sie planen einen Anschlusstermin? Geben Sie Ihren Wunsch im Anmeldeformular an, wir verlängern<br />
                                    Ihr Hotelzimmer
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Dresscode</span><br />
                                    Business Casual
                                </p>
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
                                <p>
                                    <span class="subhead">Anmeldung</span><br />
                                    Gleich anmelden.<br />
                                    <span style="color: #cc0000">Frist bis 16. Juni 2017</span>
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Veranstaltungsort</span><br />
                                    Canon Deutschland GmbH<br />
                                    Convention Center
                                </p>
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
                                <p>
                                    <span class="subhead">Hotel</span><br />
                                    Anreise- und Hotel-Kosten werden<br />
                                    von uns übernommen. Geben<br />
                                    Sie Ihre Wünsche einfach bei der Anmeldung an.
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Zeitrahmen</span><br />
                                    <strong>Mo. 26. Juni 2017</strong><br />
                                    13.00 bis 17.00 Uhr:<br />
                                    Canon Partner-Key Note 2017<br />
                                    17.30 bis 22.00 Uhr:<br />
                                    Get together und Dinner
                                </p>
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
                                <p>
                                    <span class="subhead">Anschlusstermin</span><br />
                                    Sie planen einen Anschlusstermin? Geben Sie Ihren Wunsch im Anmeldeformular an, wir verlängern<br />
                                    Ihr Hotelzimmer
                                </p>
                            </td>
                            <td align="center" valign="top">
                                <p>
                                    <span class="subhead">Dresscode</span><br />
                                    Business Casual
                                </p>
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
                                <p>
                                    <span class="subhead">Anmeldung</span><br />
                                    Gleich anmelden.<br />
                                    <span style="color: #cc0000">Frist bis 16. Juni 2017</span>
                                </p>
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
                                <p>
                                    <span class="subhead">Veranstaltungsort</span><br />
                                    Canon Deutschland GmbH<br />
                                    Convention Center
                                </p>
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
                                <p>
                                    <span class="subhead">Hotel</span><br />
                                    Anreise- und Hotel-Kosten werden<br />
                                    von uns übernommen. Geben<br />
                                    Sie Ihre Wünsche einfach bei der Anmeldung an.
                                </p>
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
                                <p>
                                    <span class="subhead">Zeitrahmen</span><br />
                                    <strong>Mo. 26. Juni 2017</strong><br />
                                    13.00 bis 17.00 Uhr:<br />
                                    Canon Partner-Key Note 2017<br />
                                    17.30 bis 22.00 Uhr:<br />
                                    Get together und Dinner
                                </p>
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
                                <p>
                                    <span class="subhead">Anschlusstermin</span><br />
                                    Sie planen einen Anschlusstermin? Geben Sie Ihren Wunsch im Anmeldeformular an, wir verlängern<br />
                                    Ihr Hotelzimmer
                                </p>
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
                                <p>
                                    <span class="subhead">Dresscode</span><br />
                                    Business Casual
                                </p>
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
    <div id="slide6">

        <div>
            <div>




                <h1>Anmeldung</h1>



                <div class="tab">
                    <button class="tablinks" onclick="openCity(event, 'Agenda')">Agenda</button>
                    <button class="tablinks" onclick="openCity(event, 'Event-/Reiseinfo')">Event-/Reiseinfo</button>
                    <button class="tablinks" onclick="openCity(event, 'Anmeldung')">Anmeldung</button>
                </div>

                <div id="Agenda" class="tabcontent">

                    <p>
                        Inhalt Agenda
  
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
                                                2001 wurde das Tempodrom mit der Verleihung
des Europäischen Filmpreises eröffnet. Unter
seinem spektakulären, 35 m hohen Dach erleben
bis zu 4.000 Gäste unvergessliche Momente.

                                            </p>
                                        </div>

                                    </div>


                                    <div style="width: 100% !important; height: 30px; border: 0px solid red; clear: both;">&nbsp;</div>


                                    <div class="hotel_left">
                                        <img src="img/bild_maps.jpg" border="0" class="hotel_img" />
                                    </div>

                                    <div class="hotel_right">
                                        <div class="abstand_location">
                                            <p class="accordion_panel_absatz">
                                                <strong>Anfahrt und Parken</strong>
                                            </p>
                                            <p class="accordion_panel_absatz">
                                                TEMPODROM<br />
                                                Möckernstraße 10<br />
                                                10963 Berlin

                                            </p>

                                            <p class="accordion_panel_absatz">
                                                <a href="http://www.tempodrom.de/besucherinfos_anfahrt_und_parken.html" target="_blank">
                                                    <button type="button">Website</button></a>

                                            </p>
                                        </div>


                                    </div>

                                    <div style="width: 100% !important; height: 30px; border: 0px solid red; clear: both;">&nbsp;</div>







                                </p>
                            </div>


                            <button class="accordion">Hotel</button>
                            <div class="panel">
                                <p class="accordion_panel_absatz">


                                    <p class="accordion_panel_absatz"><strong>An-/Abreise</strong></p>

                                    <p class="accordion_panel_absatz">
                                        Bitte sprich Deine Teilnahme mit Deiner Führungskraft ab und lass Dir von ihr die Hotel- (bei Anreise am 30. April) und Reisekosten genehmigen. Die Teilnahme gilt nicht als Arbeitszeit.

                                    </p>

                                    <hr style="margin-left: 0%; margin-right: 0%; margin-bottom: 30px; margin-top: 30px !important;" />

                                    <p class="accordion_panel_absatz"><strong>Buchung</strong></p>


                                    <div class="hotel_left">
                                        <img src="img/bild_hotel.jpg" border="0" class="hotel_img" />
                                    </div>

                                    <div class="hotel_right">
                                        <p class="accordion_panel_absatz" style="margin-top: 55px;">
                                            <strong>NH Hotel<br />
                                                Leipziger Str. 106-111<br />
                                                10117 Berlin</strong>
                                        </p>

                                        <p class="accordion_panel_absatz">
                                            Das NH Berlin Mitte Leipziger Strasse Hotel, ehemals NH Berlin Mitte, befindet sich direkt im Stadtzentrum an der Leipziger Strasse.

                                        </p>







                                    </div>

                                    <div style="clear: both; width: 100%; height: 30px;">&nbsp;</div>




                                    <p class="accordion_panel_absatz">
                                        Bitte berücksichtige, dass die An- und Abreise individuell erfolgt.
Die Dir entstandenen Reise- und Hotelkosten kannst Du nach der Veranstaltung über das bekannte Vodafone Reisekosten-Tool abrechnen.
                                    </p>

                                    <p class="accordion_panel_absatz">
                                        Anfallende Stornokosten sind ebenfalls selbst zu tragen.
Für alle Vodafone Teilnehmer wurde mit dem NH Hotel ein Abrufkontingent vereinbart. Über den folgenden Buchungsbutton kannst Du ein Zimmer (ohne Frühstück) zu reduzierten Konditionen buchen.

                                    </p>

                                    <p class="accordion_panel_absatz">
                                        Stichwort bei Buchung angeben: &nbsp;Vodafone Pathfinder<br />
                                        Einzelzimmer (ohne Frühstück):&nbsp;&nbsp;&nbsp;79,10 EUR/Nacht (zzgl. Kurtaxe)
                                    </p>

                                    <p class="accordion_panel_absatz">
                                        <a href="https://www.nh-hotels.de/event/vodafone-pathfinder" target="_blank">
                                            <button type="button">Zur Buchung</button></a>




                                    </p>













                                </p>

                                <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>
                    </p>
                </div>

                <button class="accordion">Kostenloser Shuttle</button>
                <div class="panel">
                    <p class="accordion_panel_absatz">


                        <div class="eingeblendet">
                            <table cellpadding="0" cellspacing="0" class="table_shuttle">
                                <tr>
                                    <td valign="top" class="td_heller"><strong>Datum</strong></td>
                                    <td valign="top" class="td_heller"><strong>Uhrzeit</strong></td>
                                    <td valign="top" class="td_heller"><strong>Fahrtrichtung</strong></td>
                                </tr>
                                <tr>
                                    <td valign="top">So. 30.04.2017</td>
                                    <td valign="top">18.00 Uhr</td>
                                    <td valign="top">NH Hotel Leipziger Straße -  TEMPODROM</td>
                                </tr>
                                <tr>
                                    <td valign="top">&nbsp;</td>
                                    <td valign="top">ca. 24.00 Uhr</td>
                                    <td valign="top">TEMPODROM - NH Hotel Leipziger Straße</td>
                                </tr>
                                <tr>
                                    <td valign="top" class="td_heller">&nbsp;</td>
                                    <td valign="top" class="td_heller"></td>
                                    <td valign="top" class="td_heller"></td>
                                </tr>
                                <tr>
                                    <td valign="top">Mo. 01.05.2017</td>
                                    <td valign="top">07.30 Uhr </td>
                                    <td valign="top">NH Hotel Leipziger Straße -  TEMPODROM</td>
                                </tr>
                                <tr>
                                    <td valign="top">&nbsp;</td>
                                    <td valign="top">ab 18:00 Uhr</td>
                                    <td valign="top">Bus-Transfers zum Flughafen und Hauptbahnhof
                                    </td>
                            </table>
                        </div>


                        <div class="ausgeblendet">
                            <table cellpadding="0" cellspacing="0" class="table_shuttle_mobil">
                                <tr>
                                    <th valign="top" class="td_heller"><strong>So. 30.04.2017</strong>
                                    </td>      
                                </tr>
                                <tr>
                                    <td valign="top">Uhrzeit: 18.00 Uhr<br />
                                        Fahrtrichtung: NH Hotel Leipziger Straße -  TEMPODROM<br />
                                        Uhrzeit: ca. 24.00 Uhr<br />
                                        Fahrtrichtung: TEMPODROM - NH Hotel Leipziger Straße
                                    </td>
                                </tr>
                                </tr>
                            </table>

                            <table cellpadding="0" cellspacing="0" class="table_shuttle_mobil">
                                <tr>
                                    <th valign="top" class="td_heller"><strong>Mo. 01.05.2017</strong>
                                    </td>      
                                </tr>
                                <tr>
                                    <td valign="top">Uhrzeit: 08.00 Uhr<br />
                                        Fahrtrichtung: NH Hotel Leipziger Straße -  TEMPODROM<br />
                                        Uhrzeit: Ende<br />
                                        Fahrtrichtung: Bus-Transfers zum Flughafen und Hauptbahnhof
                                    </td>
                                </tr>
                                </tr>
                            </table>
                        </div>


                        <div style="width: 100% !important; height: 10px; border: 0px solid red; clear: both;">&nbsp;</div>

                    </p>
                </div>

                <button class="accordion">Hotline</button>
                <div class="panel">
                    <p class="accordion_panel_absatz">
                        Für Rückfragen kannst Du Dich gerne an die Hotline wenden.<br />
                        Hotline: <a href="mailto:pathfinder2017@vodafone-managementletter.de" target="_blank" style="cursor: pointer; text-decoration: underline">pathfinder2017@vodafone-managementletter.de</a>
                    </p>
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







            </div>


            </p>
  
        </div>

        <div id="Anmeldung" class="tabcontent">

            <p>

                <div>

                    <!--<h1><asp:Label ID="ueberschrift_anmeldung" runat="server" Text="Anmeldung"></asp:Label></h1>-->


                    <!--<p><asp:Label ID="subtext_anmeldung" runat="server" Text=""></asp:Label></p>-->

                    <p>

                        <div class="anmeldeform">
                            <form id="Form1" method="post" runat="server">

                                <asp:Panel ID="anmeldung_offen" runat="server" Visible="true">
                                    <p class="volle_breite">
                                        <asp:RadioButton ID="anrede_frau" runat="server" GroupName="anrede" Text="Frau" />
                                        <asp:RadioButton ID="anrede_herr" runat="server" GroupName="anrede" Text="Herr" />
                                    </p>

                                    <p class="geteilt">
                                        <asp:TextBox ID="vorname" runat="server" placeholder="Vorname*"></asp:TextBox>
                                    </p>

                                    <p class="geteilt_2">
                                        <asp:TextBox ID="nachname" runat="server" placeholder="Nachname*"></asp:TextBox>
                                    </p>
                                    
                                    

                                    <p class="geteilt">
                                        <asp:TextBox ID="Bereich" runat="server" placeholder="Bereich*"></asp:TextBox>
                                    </p>

                                    <p class="geteilt_2">
                                        <asp:TextBox ID="firma" runat="server" placeholder="Firma"></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="Strasse" runat="server" placeholder="Straße"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="Nr" runat="server" placeholder="Nr."></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="PLZ" runat="server" placeholder="PLZ."></asp:TextBox>
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
                                        <asp:TextBox ID="Mobile" runat="server" placeholder="Mobile"></asp:TextBox>
                                    </p>
                                    <p class="geteilt_2">
                                        <asp:TextBox ID="email" runat="server" placeholder="E-Mail-Adresse*"></asp:TextBox>
                                    </p>
                                    <p class="geteilt">
                                        <asp:TextBox ID="Mitteilung" runat="server" placeholder="Ihre Mitteilung" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                    </p>
                                    <div style="width: 100%; clear: both;">&nbsp;</div>
                                      <h2><strong>
                                          <asp:Label ID="Anmlbl" runat="server" Text="Anmeldung"></asp:Label>
                                          </strong></h2>


                                    <p class="volle_breite" style="margin-bottom:0px;padding-bottom:0px;">
                                        <asp:RadioButton ID="teilnahme_ja"  Checked="true" GroupName="teilnahme" runat="server" Text="Ja, ich nehme teil und habe meine Teilnahme mit meiner Führungskaft abgesprochen." />
                                    </p>
                                      
                                    <div style="margin-left:20px;margin-bottom:50px; margin-top:0px;">
                                    <table id="table_tn1" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme1" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn1"  style="display:none;">
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

                                    <table id="table_tn2" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme2" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn2"  style="display:none;">
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


                                    <table id="table_tn3" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme3" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn3"  style="display:none;">

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
                                    </div>

                                    <p class="volle_breite">
                                        <asp:RadioButton ID="teilnahme_nein" GroupName="teilnahme" runat="server" Text="Ich kann leider nicht teilnehmen" />
                                    </p>

                                     
                                    <table id="table_tn4" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme4" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>Laden sie bitte stattdessen ein</p></td>
                                           </tr>  
                                    </table>


                                    <div id="tn4"  style="display:none;">
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

                                       
                                        
                                    <table id="table_tn5" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme5" runat="server" /></td>
                                               <td style="vertical-align:top;"><p>weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn5" runat="server" style="display:none;">
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
                                    <table  id="table_tn6" style="display:none;">
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="Teilnahme6"  runat="server" /></td>
                                               <td style="vertical-align:top;"><p>weiteren Teilnehmer einladen</p></td>
                                           </tr>  
                                    </table>

                                    <div id="tn6" runat="server" style="display:none;">
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

<div style="width: 100%; clear: both;">&nbsp;</div>
                                    <h2><strong>
                                        <asp:Label ID="Resie" runat="server" Text="-An-/Abreise"></asp:Label>
                                        </strong></h2>
                                     <p class="volle_breite">
                                         <table>
                                           <tr>
                                               <td style="padding-top:30px;"><asp:CheckBox ID="CheckBoxReise" runat="server" /></td>
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
                                   
                                    <h2><strong>
                                        <asp:Label ID="Hotel" runat="server" Text="-Hotel"></asp:Label>
                                        </strong></h2>

                                    <p class="volle_breite">
                                          <asp:CheckBox ID="CheckBoxBuchen" Text="Bitte buchen Sie für mich eine Übernachtung vom 26. auf den 27.06.2017" runat="server" />
                                    </p>
                                    <p class="volle_breite">
                                          <asp:CheckBox ID="CheckBoxVorBuchen" Text="Ich habe einen Anschlusstermin – bitte verlängern Sie meinen Hotelaufenthalt bis zum 28.06.2017" runat="server" />
                                    </p>

                                     <h2><strong>
                                        <asp:Label ID="Shuttle" runat="server" Text="- Shuttle"></asp:Label>
                                        </strong></h2>
                                    <p class="volle_breite">
                                          <asp:CheckBox ID="shuttle_ja" Text="Ich nutze den Shuttle am Event-Abend ab 22.00 Uhr" runat="server" />
                                    </p>
                                   
                                    <p class="volle_breite" style="color: #ff0000; font-weight: bold;">
                                        <asp:Label ID="fehlermeldung" runat="server" Visible="false">Bitte fülle die markierten Felder aus und drücke auf "Absenden".</asp:Label>
                                    </p>
                                    <p class="volle_breite">
                                        <asp:Button ID="Button1" runat="server" Text="Absenden" />
                                    </p>

                                </asp:Panel>
                                </form>
                                </div>
                        </p>               
                

                
                
                
                
              </div>
  
  
  </p>
</div> 














        </div>
        
    
    
    
    
    <div id="slide13"></div>
    
    <div id="slide8">
    
    <div>
            <div>
            
            
          

<h1>DETAIL-INFORMATIONEN</h1>










        </div>
        </div>
   
        
    </div>
    
    
    
    
    
    
    
    <div id="slide9"></div>
    
    <div id="slide10">
        <div style="border: 0px solid red;margin-top: 30px;">
         
               
        </div>
    </div>
    
    
    <div id="slide11"></div>
    
    <div id="slide12">
        <div style="border: 0px solid red;margin-top: 30px;">
               <div>
            	<h1>Hotline</h1>
            	


<p>Bei Rückfragen wende Dich gerne an die Hotline.</p>

<p><a href="mailto:pathfinder2017@vodafone-managementletter.de"><button type="button">E-Mail</button></a></p>




              </div>
        </div>
    </div>
    
    <div class="footer">
    
    <p style="color:#fff;"><strong>© 2017 Vodafone GmbH  | <a href="https://www.vodafone.de/impressum.html" target="_blank">Impressum</a></strong></p>
    
    </div>
    
    
 
 <script type="text/javascript" src="js/fastclick.js"></script>
 <script type="text/javascript" src="js/scroll.js"></script>
 <script type="text/javascript" src="js/fixed-responsive-nav.js"></script>   
 
 





</body>

</html>
                        