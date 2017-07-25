<%@ Page Language="VB" MaintainScrollPositionOnPostback="true" EnableEventValidation="false" AutoEventWireup="true" CodeFile="email.aspx.vb" Inherits="_email" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://graph.facebook.com/schema/og/">

 <head runat="server">
  <title>vodafone.de - GigaCube</title>
  
        
  <link href="img/favicon.ico" rel="shortcut icon" />
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  
   <link rel="stylesheet" href="css/style.css" type="text/css" />  
   
  
   
   <link href="css/style_rhombus.css" rel="stylesheet" type="text/css" /> 
   
        
    
<script type="text/javascript" src="js/jquery.min.js"></script>
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

     

<link href="css/jssor.css" rel="stylesheet" type="text/css" />

<script src="jssor/jssor.slider-22.2.8.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        jssor_1_slider_init = function() {

            var jssor_1_options = {
              $AutoPlay: false,
              $SlideDuration: 2000,
			  $AutoPlayInterval: 8000,
              $SlideEasing: $Jease$.$OutQuint,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 2560);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };
    </script>
    
    <script type="text/javascript">
        jssor_2_slider_init = function() {

            var jssor_2_options = {
              $AutoPlay: true,
              $SlideDuration: 2000,
			  $AutoPlayInterval: 8000,
              $SlideEasing: $Jease$.$OutQuint,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_2_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };
    </script>
   




     
 </head>
 
 
 
<body> 




<form method="post" class="anmeldeform_login" id="form1" runat="server"> 

<%--<div class="rhombus">

</div>--%>
 
  <div class="header">
  
  
  
      
  
	<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:2560px;height:1123px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;left:0px;width:100%;height:100%;"></div>
        </div>
        
        
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:2560px;height:1123px;overflow:hidden;">
           
            <div>
                <img data-u="image" src="img/slider_1.jpg" />
                
                
                <div style="position:absolute;top:975px;left:1160px;width:120px;height:120px;z-index:0;font-size:40px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://www.vodafone.de/privat/mobiles-internet-dsl/gigacube.html')" value="Mehr erfahren"  style="font-weight: bold !important;" class="btn_slider_1" /></div>
                
                
                <!--<div style="position:absolute;top:797px;left:1886px;width:20px;height:20px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><a id="example2" href="img/sternchentext_preis.jpg"><img src="img/sternchen.png" alt="" border="0" style="width: 20px !important; height: 20px !important;" /></a></div>-->
                
                <%--<div style="position:absolute;top:163px;left:993px;width:13px;height:13px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><img src="img/sternchen.png" alt="" border="0" style="width: 13px !important; height: 13px !important;" /></div>--%>
                
                
                
            </div>
            
            
            
            <%--<div>
                <img data-u="image" src="img/slider_2.jpg" />
                
                <div style="position:absolute;top:430px;left:570px;width:480px;height:120px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://zuhauseplus.vodafone.de/gigatv/')" value="Mehr erfahren" style="font-weight: normal !important;" /></div>
            </div>--%>
            
            
            <%--<div>
                <img data-u="image" src="img/slider_3.jpg" />
                
                <div style="position:absolute;top:190px;left:580px;width:480px;height:120px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://zuhauseplus.vodafone.de/gigatv/')" value="Mehr erfahren" style="font-weight: normal !important;" /></div>
            </div>--%>
        </div>
        
        
        
        
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px; display:none !important;"></div>
        </div>
        <!-- Arrow Navigator -->
        <!--<span data-u="arrowleft" class="jssora22l" style="top:0px;left:8px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:8px;width:40px;height:58px;" data-autocenter="2"></span>-->
    </div>
    
    
    
    
    </div>
    
    
    

  
    
  <div class="wrapper">
  
  <div class="content_1"> 
 
   
   <h1>Hast Du den richtigen Stecker?<br />Gewinne Dein Urlaubsabenteuer</h1> 
   
   <p><strong>Mitmachen und tolle Preise gewinnen*.</strong></p>
   
   
   
  
   <div id="jssor_2" style="position:relative;margin:0 auto; width:800px;height:308px; visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;left:0px;width:100%;height:100%;"></div>
        </div>
        
        
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:800px;height:308px;overflow:hidden;">
           
            <div>
               <img data-u="image" src="img/gewinn_1.jpg" />       
                
                <%--<div style="position:absolute;top:410px;left:540px;width:480px;height:120px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://zuhauseplus.vodafone.de/gigatv/')" value="Mehr erfahren" style="font-weight: normal !important;" class="btn_slider_1" /></div>--%> 
                
            </div>
            
            
            
             <div>
                <img data-u="image" src="img/gewinn_2.jpg" />            
                
                <%--<div style="position:absolute;top:410px;left:540px;width:480px;height:120px;z-index:0;font-size:25px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://zuhauseplus.vodafone.de/gigatv/')" value="Mehr erfahren" style="font-weight: normal !important;" class="btn_slider_1" /></div>--%> 
                
            </div>
            
            
            
            
            
        </div>
        
        
        
        
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px; display:none !important;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" data-autocenter="2"></span>
    </div>
   
    
    <script type="text/javascript">jssor_1_slider_init();</script>
    
    <script type="text/javascript">jssor_2_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
   
   
   
   
    
   
   </div>
   
   </div>
   
 
   
   
   
   <div class="wrapper">
   
   <div class="content_1">
  
  
  
   <p style="float:right;"><a id="example2" href="img/ueberblick.png"><img src="img/flyer.jpg" alt="Ticket" border="0" class="ticket_bild"  /></a></p>
       <p><strong>Und so geht’s:</strong></p>  
   
   
<table border="0" cellpadding="0" cellspacing="0">
 <tr>
  <td valign="top" style="width: 30px;"><p><strong>&bull;</strong></p></td>
  <td><p>Komm am Aktionstag in den Vodafone Shop in Deiner Nähe</p></td>
 </tr>
 <tr>
  <td valign="top"><p><strong>&bull;</strong></p></td>
  <td><p>Teste, ob Dein Stecker Dir Glück bringt und gewinne eine Woche Urlaub in einem Baumhaushotel oder ein Vodafone Tab prime 7</p></td>
 </tr>

</table>

 <p style="margin-top: 100px;"><input type="button" onclick="window.open('img/Teilnahmebedingungen.pdf')" value="Teilnahmebedingungen"  style="font-weight: bold !important;" class="btn_slider_2" /></p>

   


   
   

   
<p>&nbsp;</p>
   
 
   <div style="clear: both;"></div>
   
   
   
   
       <asp:Panel ID="eingabe" Visible="true" runat="server">
       
       <div class="geteilt">
       
       <div class="beschriftung">Vorname*</div>
       <div class="formfeld"><asp:TextBox ID="vorname" runat="server"></asp:TextBox></div>
       
       <div class="beschriftung">Nachname*</div>
       <div class="formfeld"><asp:TextBox ID="nachname" runat="server"></asp:TextBox></div>
       
       <div class="beschriftung">Adresse*</div>
       <div class="formfeld"><asp:TextBox ID="adresse" runat="server"></asp:TextBox></div>       
       
       </div>
       
       <div class="geteilt_2">
       
        <div class="beschriftung">PLZ*</div>
       <div class="formfeld"><asp:TextBox ID="plz" runat="server"></asp:TextBox></div>

        <div class="beschriftung">Ort*</div>
       <div class="formfeld"><asp:TextBox ID="ort" runat="server"></asp:TextBox></div>


       <div class="beschriftung">E-Mail*</div>
       <div class="formfeld"><asp:TextBox ID="email" runat="server"></asp:TextBox></div>
       
       <div class="beschriftung">Mobilfunk-Nr.*</div>
       <div class="formfeld"><asp:TextBox ID="telefonnummer" runat="server"></asp:TextBox></div>
       
       
       
       </div>
       
        <div style="width: 95% !important; margin-top:  30px;" class="geteilt">
       
       <asp:CheckBox ID="Teilnahmebedingungen" runat="server"  /> Ich akzeptiere die <a href="img/Teilnahmebedingungen.pdf" target="_blank" style="color: #525252;">Teilnahme- und Datenschutzbedingungen</a>!
              
       
       </div>
       
       <div style="width: 100% !important; margin-top:  30px;" class="geteilt_2">
       
      <asp:Button ID="btn_senden" UseSubmitBehavior="false" runat="server" Text="Senden" /><br /><br />
      
      <asp:Label ID="fehler_teilnahme" ForeColor="Red" Font-Bold="true" runat="server" Text="Bitte akzeptiere die Teilnahmebedingungen." Visible="false"></asp:Label>
              
       
       </div>
       
      
      
       
       
       
            
                   
       </asp:Panel>
       
        <div style="clear: both;"></div>
       
        <asp:Panel ID="ausgabe" Visible="false" runat="server">
        
        
        
           <table border="0" cellpadding="0" cellspacing="0" style="padding: 15px 15px 15px 0px; font-size: 100% !important; margin: 0px 0px 0px 0px;" class="ausgabe_tab">
               <tr>                   
                   <td style="vertical-align: top;">
                       <p><strong><asp:Label ID="ergebnis" runat="server"></asp:Label></strong></p>
                       
                      
                   </td>
                   
                       
                   
               </tr>
           </table>
          <asp:Button ID="Button1" UseSubmitBehavior="false"  runat="server" Text="Zurück" />
       </asp:Panel>
 
   
   
   
   
   
   
   <p class="abschluss"></p>  
     
  </div>
  
  </div> 
  
  

<div class="header" style="margin: 0px 0px 0px 0px;">    
  <img src="img/karte.jpg" alt="">	    
</div>
  
  
<%--<div class="header">    
  
	<div class="maps_2">
    
    <iframe width="960" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.vodafone-consumer.de/maps.aspx"></iframe>    
     
    
    <div style="position:absolute; z-index: 1000; width: 48%; height: 100%">
    <img src="img/redone.png" style="position:absolute; top:0; left:0">    </div>
	</div>   
    
</div>--%>






  
  <div class="wrapper">
  
  <div class="content_1">  
    <h1>Auch in Deiner Nähe</h1> 

  <p>Erlebe GigaCube live in unseren Vodafone-Shops. Wann und wo die nächste Aktion stattfindet, erfährst Du mit einem Klick auf das folgende Auswahlfeld.</p>

<p>&nbsp;</p>
 
 <p> 
                        Termin aussuchen:
                       <!--<asp:DropDownList ID="Terminauswahl" AutoPostBack="true" runat="server" style="width:100% !important;"></asp:DropDownList>-->
                        <select id="Terminauswahl" name="Terminauswahl" onclick="termin();" size="1" style="width:100% !important;">
                        <option>Bitte wähle einen Termin aus</option>
                        <option value="1">12.05.2017 - 13.05.2017, Erding, Lange Zeile 14</option>
                        <option value="2">12.05.2017 - 13.05.2017, Wuppertal, Poststr. 10</option>
                        <option value="3">17.05.2017 - 18.05.2017, Augsburg, Bahnhofstr. 2</option>
                        <option value="4">19.05.2017 - 20.05.2017, Ulm, Blaubeurer Str. 95</option>
                        <option value="5">19.05.2017 - 20.05.2017, Dortmund, Westenhellweg 52</option>
                        <option value="6">24.05.2017 - 25.05.2017, Münster, Ludgeristr. 35</option>
                        <option value="7">26.05.2017 - 27.05.2017, München, Marienplatz 25</option>
                        <option value="8">26.05.2017 - 27.05.2017, Aachen, Adalbertstr. 25a</option>
                        <option value="9">31.05.2017 - 01.06.2017, Marktredwitz, Leopoldstr. 30</option>
                        <option value="10">31.05.2017 - 01.06.2017, Neuss, Sebastianusstraße 3</option>
                        <option value="11">02.06.2017 - 03.06.2017, Dresden, Dr.-Külz-Ring 15</option>   
                        <option value="12">02.06.2017 - 03.06.2017, Köln, Schildergasse 69-73</option>
                        <option value="13">07.06.2017 - 08.06.2017, Halle, Leipziger Straße 98</option>
                        <option value="14">07.06.2017 - 08.06.2017, Gießen, Seltersweg 20</option>
                        <option value="15">09.06.2017 - 10.06.2017, Cottbus, Karl-Liebknecht-Str. 136</option>
                        <option value="16">09.06.2017 - 10.06.2017, Frankfurt, Zeil 85</option>
                        <option value="17">14.06.2017 - 15.06.2017, Berlin, Schloßstr. 15</option>
                        <option value="18">14.06.2017 - 14.06.2017, Darmstadt, Ludwigsplatz 4</option>
                        <option value="19">16.06.2017 - 17.06.2017, Berlin, Breite Str. 20</option>
                        <option value="20">16.06.2017 - 17.06.2017, Freiburg, Kaiser-Joseph-Str. 230</option>
                        <option value="21">21.06.2017 - 22.06.2017, Esslingen, Bahnhofstr. 13</option>
                        <option value="22">23.06.2017 - 24.06.2017, Neubrandenburg, Marktplatz 1-2</option>
                        <option value="23">23.06.2017 - 24.06.2017, Reutlingen, Wilhelmstraße 74</option>
                        <option value="24">28.06.2017 - 29.06.2017, Norderstedt, EKZ Herold Center, Berliner Allee 42</option>
                        <option value="25">30.06.2017 - 01.07.2017, Hamburg, Jungfernstieg 14</option>
                        <option value="26">30.06.2017 - 01.07.2017, Ludwigshafen, Rhein-Galerie Im Zollhof 4</option>   
                        <option value="27">03.07.2017 - 04.07.2017, Hannover, Niki-de-Saint-Phalle-Promenade 43</option>   
                        <option value="28">05.07.2017 - 06.07.2017, Hannover, Georgstr. 20</option>
                        <option value="29">07.07.2017 - 08.07.2017, Bremen, Sögestr. 21</option>
                        
                        </select>
 </p>
 <p>&nbsp;</p>
     <p>
         <div id="1" style="display:none;width:100%;">
             <a href="http://www.vodafone-shops.de/erding-200527941/" target="_blank"><img src="Shop_bilder/erding.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="2" style="display:none;">
             <a href="http://www.vodafone-shops.de/wuppertal-200528740/" target="_blank"><img src="Shop_bilder/wuppertal.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="3" style="display:none;">
             <a href="http://www.vodafone-shops.de/augsburg-200528871/" target="_blank"><img src="Shop_bilder/augsburg.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
          <div id="4" style="display:none;">
             <a href="http://www.vodafone-shops.de/ulm-200528081/" target="_blank"><img src="Shop_bilder/ulm.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="5" style="display:none;">
             <a href="http://www.vodafone-shops.de/dortmund-203327933/" target="_blank"><img src="Shop_bilder/dortmund.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
           <div id="6" style="display:none;">
             <a href="http://www.vodafone-shops.de/muenster-westf-200528579/" target="_blank"><img src="Shop_bilder/muenster_westf.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="7" style="display:none;">
             <a href="http://www.vodafone-shops.de/muenchen-200591650/" target="_blank"><img src="Shop_bilder/muenchen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="8" style="display:none;">
             <a href="http://www.vodafone-shops.de/aachen-203344151/" target="_blank"><img src="Shop_bilder/aachen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="9" style="display:none;">
             <a href="http://www.vodafone-shops.de/marktredwitz-200527896/" target="_blank"><img src="Shop_bilder/marktredwitz.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
           <div id="10" style="display:none;">
             <a href="http://www.vodafone-shops.de/neuss-200527622/" target="_blank"><img src="Shop_bilder/neuss.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
           <div id="11" style="display:none;">
             <a href="http://www.vodafone-shops.de/dresden-200529126/" target="_blank"><img src="Shop_bilder/dresden.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="12" style="display:none;">
             <a href="http://www.vodafone-shops.de/koeln-200576833/" target="_blank"><img src="Shop_bilder/koeln.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>  
          <div id="13" style="display:none;">
             <a href="http://www.vodafone-shops.de/halle-saale-200528927/" target="_blank"><img src="Shop_bilder/halle_saale.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="14" style="display:none;">
             <a href="http://www.vodafone-shops.de/giessen-200528774/" target="_blank"><img src="Shop_bilder/giessen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="15" style="display:none;">
             <a href="http://www.vodafone-shops.de/cottbus-200531314/" target="_blank"><img src="Shop_bilder/cottbus.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="16" style="display:none;">
             <a href="http://www.vodafone-shops.de/frankfurt-200528769/" target="_blank"><img src="Shop_bilder/frankfurt.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="17" style="display:none;">
             <a href="http://www.vodafone-shops.de/berlin-200576978/" target="_blank"><img src="Shop_bilder/berlin_schloss.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
          <div id="18" style="display:none;">
             <a href="http://www.vodafone-shops.de/darmstadt-203346988/" target="_blank"><img src="Shop_bilder/darmstadt.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="19" style="display:none;">
             <a href="http://www.vodafone-shops.de/berlin-200533244/" target="_blank"><img src="Shop_bilder/berlin_breite.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
           <div id="20" style="display:none;">
             <a href="http://www.vodafone-shops.de/freiburg-im-breisgau-200531405/" target="_blank"><img src="Shop_bilder/freiburg.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="21" style="display:none;">
             <a href="http://www.vodafone-shops.de/esslingen-203330579/" target="_blank"><img src="Shop_bilder/esslingen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="22" style="display:none;">
             <a href="http://www.vodafone-shops.de/neubrandenburg-200528430/" target="_blank"><img src="Shop_bilder/neubrandenburg.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
          <div id="23" style="display:none;">
             <a href="http://www.vodafone-shops.de/reutlingen-203345699/" target="_blank"><img src="Shop_bilder/reutlingen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="24" style="display:none;">
             <a href="http://www.vodafone-shops.de/norderstedt-203344013/" target="_blank"><img src="Shop_bilder/norderstedt.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="25" style="display:none;">
             <a href="http://www.vodafone-shops.de/hamburg-200580881/" target="_blank"><img src="Shop_bilder/hamburg.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
          <div id="26" style="display:none;">
             <a href="http://www.vodafone-shops.de/ludwigshafen-200561595/" target="_blank"><img src="Shop_bilder/ludwigshafen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="27" style="display:none;">
             <a href="http://www.vodafone-shops.de/hannover-200527862/" target="_blank"><img src="Shop_bilder/hannover_niki.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
          <div id="28" style="display:none;">
             <a href="http://www.vodafone-shops.de/hannover-200580880/" target="_blank"><img src="Shop_bilder/hannover_georg.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>
         <div id="29" style="display:none;">
             <a href="http://www.vodafone-shops.de/bremen-200528849/" target="_blank"><img src="Shop_bilder/bremen.png" alt="" border="0" style="width:100% !important;" /></a>
         </div>


     </p>
      <%--<asp:Label ID="label_shopinfos" runat="server"></asp:Label>--%>
  
      <%--<asp:Panel ID="panel_shopdaten" Visible="false" runat="server">
            <div style="background-color:#6E6E6E; border: 0px solid red;">
                <div style="float:left; color: #fff; border: 0px solid red;  width: 50% !important;"><p><strong><span style="font-size: 120% !important;">Vodafone Filiale <asp:Label ID="label_stadt" runat="server"></asp:Label></span></strong></p>
                     <p><asp:Label ID="label_strasse" runat="server"></asp:Label></p>
                     <p><asp:Label ID="label_plzort" runat="server"></asp:Label></p>
                </div>
                <div style="float:left;  color: #fff;border: 0px solid red;">
                    <p><strong><span style="font-size: 120% !important;">Aktionszeit:</span></strong></p>
                    <p><asp:Label ID="label_zeitraum" runat="server"></asp:Label></p>
                    <p>12:00 Uhr bis 20:00 Uhr</p>
                </div>
                <div style="clear:both;"></div>
            </div>
        </asp:Panel>--%>
  </div>
  <div class="content_1"> 
  
  
  
  
      <asp:Label ID="wall" runat="server" Visible="false"></asp:Label>
  

   <div style="clear:both;"></div>
   
   <p class="abschluss"></p>
     
  </div>
  
  </div>
  
  <div class="header" style="margin: 0px 0px 0px 0px;">    
  <img src="img/header_2.jpg" alt="">	    
  </div>
  
  
  
  

  
  

<div class="wrapper">
  
  
  
  <div class="content_1"> 
 
  
  <h1>Überall surfen wie zuhause –<br />
mit dem Vodafone GigaCube</h1> 
  
   <p>Einfach einstecken und lossurfen mit Highspeed-Internet in ganz Deutschland – denn der Vodafone GigaCube ist Dein WLAN-Router zum Mitnehmen. Für LTE-Highspeed mit bis zu 150 Mbit/s, wo Du es brauchst. Und das Beste: Mit GigaCube Flex bezahlst Du nur dann den monatlichen Basispreis, wenn Du den GigaCube in Deinem Rechnungszeitraum tatsächlich nutzt.</p>
   
   <p style="margin-top: 30px;"><input type="button" onclick="window.open('https://www.vodafone.de/privat/mobiles-internet-dsl/gigacube.html')" value="Mehr erfahren" style="font-weight: normal !important;" /></p>
   
   <p style="margin-top: 100px; font-size: 80%;">
   <strong>1.</strong> Basispreis GigaCube Flex-Tarif: 34,99 €, Hardwarekosten GigaCube Flex-Tarif: 49,90 €. Basispreis GigaCube-Tarif: 34,99 €, Hardwarekosten GigaCube-Tarif: 1 €. Bereitstellungsentgelt einmalig: 39,99 €. Evtl. Rabatte ziehen wir ab. Kunden im Rahmenvertrag sind ausgeschlossen. Angebot gilt ab 27.04.2017. GigaKombi-Gutschrift GigaCube: Die Gutschrift von 10 € pro Monat bekommen Sie bei Buchung eines berechtigten Mobilfunk-Vertrags zusammen mit einem GigaCube- oder GigaCubeFlex-Vertrag unter derselben Kundennummer. Berechtigte Mobilfunkverträge: Red S/M/L/XL/XXL, Red 1,5GB/3GB/8GB/20GB, Red Young, Red Young L/XL, Young M/L/XL. Kündigen Sie eines der Produkte oder wechseln Sie in einen nicht berechtigten Tarif, entfällt die Gutschrift. Mindestlaufzeit: 24 Monate, Kündigungsfrist: 3 Monate. Der Vertrag ist, wenn nichts anderes vereinbart ist, erstmals zum Ende des 2. Vertragsjahres kündbar. Falls Sie nicht rechtzeitig kündigen, verlängert er sich automatisch um je ein Jahr. Pro Rechnungszeitraum: 50GB mit bis zu 150Mbit/s (Download) und 50Mbit/s (Upload) bei optimalen Bedingungen an immer mehr Standorten in Deutschland. Danach höchstens bis zu 32kbit/s. Unverbrauchtes Datenvolumen wird nicht auf Folgemonate übertragen. Telefonie-/SMS-Services nicht im Tarif enthalten. Datenvolumen gilt nur im deutschen Vodafone-Mobilfunknetz. Sie benötigen einen Stromanschluss für den Betrieb des GigaCube. Die Anwendung ist auf nomadische/stationäre Nutzung beschränkt (keine mobile Nutzung). Video-Streams werden auf SD-Qualität mit 480p komprimiert. Sie können die Video-Komprimierung deaktivieren lassen, um Videos in HD zu empfangen. Es fallen Kosten nach der Preisliste an. Wenden Sie sich hierzu an Vodafone.   
   </p>
   
   <p style="margin-top: 30px; font-size: 80%;">
   <strong>2.</strong> Zahlung nur bei Nutzung im GigaCube Flex-Tarif: Wenn Sie den GigaCube innerhalb eines Rechnungszeitraums nicht nutzen, gilt ein Basispreis von 0 €. Als Nutzung gilt jeder Datentransfer, z.B. aktive Nutzung oder automatischer Verbindungsaufbau durch angeschlossene Geräte (z.B. Firmware Updates).
   </p>
   
    <p style="margin-top: 30px; font-size: 80%;">
   <strong>3. </strong>Die Zufriedenheitsgarantie gilt für alle Vertragsabschlüsse bis zum 31.10.2017. Als Neukunde eines GigaCube- oder GigaCube Flex-Vertrags hast Du ein Sonderkündigungsrecht, wenn Du mit dem Vodafone-Netz unzufrieden bist. Dies gilt innerhalb von 30 Tagen ab Vertragsabschluss: Gib hierfür das GigaCube-Gerät zusammen mit Deiner schriftlichen Kündigung einfach an Vodafone zurück. Dafür kannst Du gerne dieses Formular benutzen: <a href="http://www.vodafone.de/gigacube/sonderkuendigungsformular" target="_blank" style="color:#E60000">www.vodafone.de/gigacube/sonderkuendigungsformular</a>. Hier liest Du, wie die Rückgabe im Rahmen der Zufriedenheitsgarantie funktioniert: <a href="http://www.vodafone.de/hilfe/gigacubetarife" target="_blank" style="color:#E60000">www.vodafone.de/hilfe/gigacubetarife</a>.
   </p>
   
    <p style="margin-top: 30px; font-size: 80%;">
   Alle Preise inkl. MwSt.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vodafone GmbH · Ferdinand-Braun-Platz 1 · 40549 Düsseldorf · vodafone.de

   </p>
   
   
  
  
  
  
  
   
   <p class="abschluss">&nbsp;</p>
     
  </div>
  
  </div>
  
  
  
  
  
  
  
    

  
  <div id="footer">     
   <span style="margin-right: 5px">© 2017 Vodafone GmbH</span> | <a href="http://www.vodafone.de/datenschutz.html" target="_blank">Datenschutz</a> | <a href="img/Teilnahmebedingungen.pdf" target="_blank">Teilnahmebedingungen</a> | <a href="http://www.vodafone.de/impressum.html" target="_blank">Impressum</a>
   
   
   
   

   	  
  </div> 

</form>
</body>

</html>