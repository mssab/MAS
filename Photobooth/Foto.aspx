<%@ Page Language="VB" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Foto.aspx.vb" Inherits="_Foto" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://graph.facebook.com/schema/og/">

 <head runat="server">

  <title>vodafone.de - Photo Booth</title>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <meta property="fb:admins" content="100009863794289"/>

<%--<meta property="og:url"           content="http://www.google.com" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Your Website Title" />
  <meta property="og:description"   content="Your description" />
  <meta property="og:image"         content="<%=inhalt("Name_Bild") %>"/>


  <meta property="fb:admins" content="1691686011126583"/>
  <meta property="fb:app_id" content="1691686011126583" />
  <script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
  <script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php" type="text/javascript"></script>--%>   
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>
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

     <script type="text/javascript" language="javascript">



         function termin() {
             treffer = document.getElementById("Terminauswahl").value;
             for (var i = 1; i <= 30; i++) {
                 if (i == treffer) {
                     document.getElementById(i).style.display = 'block';
                 }
                 else {
                     document.getElementById(i).style.display = 'none';
                 }
                
             }
           
               
           
           
       }

       
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
   

 <script>(function (d, s, id) {
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) return;
         js = d.createElement(s); js.id = id;
         window.open($(this).attr('href'), 'fbShareWindow', 'height=450, width=550, top=' + ($(window).height() / 2 - 275) + ', left=' + ($(window).width() / 2 - 225) + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
         js.src = "//connect.facebook.net/de_DE/sdk.js#xfbml=1&version=v2.9";
         fjs.parentNode.insertBefore(js, fjs);
     }(document, 'script', 'facebook-jssdk'));</script>
     
 
 </head>
 
 
 
<body> 

<%--     <div id="fb-root"></div>
  <script>(function (d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
          fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>



    <script>
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id))
        return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

window.fbAsyncInit = function() {
    FB.init({
        appId:1691686011126583 ,  // Change appId 409742669131720 with your Facebook Application ID
        status: true,
        xfbml: true,
        cookie: true
    });
};

$(document).ready(function() {
    $('.fb-share').click(function() {
        FB.ui({
            method: 'feed',
            name: 'PhotoBooth',
            link: 'http://stackoverflow.com/users/2502457/manoj-yadav',
            picture: 'https://www.gravatar.com/avatar/119a8e2d668922c32083445b01189d67',
            description: 'Hallo Vodafone'
        });
    });
});

    </script>--%>



<form method="post" class="anmeldeform_login" id="form1" runat="server"> 

 <div id="fb-root"></div>
            <script>
                window.fbAsyncInit = function () {
                    FB.init({
                        appId: '1691686011126583', status: true, cookie: true,
                        xfbml: true
                    });
                };
                (function () {
                    var e = document.createElement('script'); e.async = true;
                    e.src = document.location.protocol +
                        '//connect.facebook.net/en_US/all.js';
                    document.getElementById('fb-root').appendChild(e);
                }());
            </script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#share_button').click(function (e) {
                        e.preventDefault();
                        FB.ui(
                            {
                                method: 'feed',
                                name: 'This is the content of the mssab.',
                                link: 'http://photobooth.gate-internet.de/faceb.aspx',
                                picture: '<%inhalt("Name_Bild")%>',
                                caption: 'Top 3 reasons why you should care about your finance',
                                description: "Hier Discription",
                                message: "hi wie geht's"
                            });
                    });
                });
            </script>
  
  
      
  
	<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:2560px;height:1123px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;left:0px;width:100%;height:100%;"></div>
        </div>
        
        
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:2560px;height:1123px;overflow:hidden;">
           
            <div>
                <img data-u="image" src="img/slider_1.jpg" />
                
                
                <!--<div style="position:absolute;top:975px;left:1160px;width:120px;height:120px;z-index:0;font-size:40px;color:#ffffff;line-height:38px;"><input type="button" onclick="window.open('https://www.vodafone.de/privat/mobiles-internet-dsl/gigacube.html')" value="Mehr erfahren"  style="font-weight: bold !important;" class="btn_slider_1" /></div>-->
                
                
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
 
  
  
  
  
  <div class="container_links">
  
  <h1 style="margin-top: 0px;">Teile Dein Foto</h1> 
  
  <p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit commodo ligula eget dolor. Consectetuer adipiscing elit.</strong></p>
  
  
  
  <table border="0" cellpadding="0" cellspacing="0">
   <tr>
    <td valign="top"><p>1.)&nbsp;&nbsp;</p></td>
    <td valign="top"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p></td>   
   </tr>
   <tr>
    <td valign="top"><p>2.)&nbsp;&nbsp;</p></td>
    <td valign="top"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget.</p></td>   
   </tr>
   <tr>
    <td valign="top"><p>3.)&nbsp;&nbsp;</p></td>
    <td valign="top"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit commodo ligula eget dolor.</p></td>   
   </tr>
  
  </table>
  <p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit commodo ligula eget dolor. </strong></p>
  
  <%--<p style="margin-top: 20px;"><a href="#"><img src="img/button_facebook.png" border="0" style="width: 184px !important; height: auto;" /></a></p>--%>
 
  <%--<div class="fb-share"   src="https://www.facebook.com/plugins/share_button.php?href=<%=inhalt("Name_Bild")%>" ><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<%=inhalt("Name_Bild")%>" style="width: 60px !important; height: 50px;"><img src="img/button_facebook.png" border="0" style="width: 184px !important; height: auto;" /></a></div>--%>
       <%--<iframe src="https://www.facebook.com/plugins/share_button.php?href=<%=inhalt("Name_Bild")%>" width="73" height="28" style="border:none;overflow:hidden" scrolling="no" frameborder="0">TEILEN</iframe>--%>
      
    <%--   <div class="fb-share-button"  data-href="http://www.your-domain.com/your-page.html data-layout="img/button_facebook.png" /> teil </div>--%>
     <%--<a href="https://www.facebook.com/sharer/sharer.php?u=photobooth.gate-internet.de/faceb.aspx?id=<% =Request.QueryString.Item(0) %>" onclick="window.open(this.href, 'mywin','left=20,top=20,width=500px,height=500px,toolbar=1,resizable=0'); return false;" /><img src = "img/button_facebook.png" ></a>--%>
      <a href="#" onClick="window.open('https://www.facebook.com/sharer/sharer.php?u=photobooth.gate-internet.de/faceb.aspx?id=<% =Request.QueryString.Item(0) %>','HALLO','resizable,height=260,width=370'); return false;"><img src = "img/button_facebook.png" ></a>

    </form>
</body>
</html> 

  </div>
  
   <div class="container_rechts">
  
  <%--<p><img src="img/platzhalter.jpg" border="0" style="width: 100% !important; height: auto;" /></p>--%>
  
       <p><asp:Label ID="TargetFoto" runat="server" Text="Label"></asp:Label></p>
  
  </div>
  
  
   
   
   
   
  
  
  
  
  <div style="clear: both;"></div>
   
   <p class="abschluss">&nbsp;</p>
     
  </div>
  
  </div>
  
  
  
  
  
  
  
    

  
  <div id="footer">     
   <span style="margin-right: 5px">© 2017 Vodafone GmbH</span> | <a href="http://www.vodafone.de/datenschutz.html" target="_blank">Datenschutz</a> | <a href="img/Teilnahmebedingungen.pdf" target="_blank">Teilnahmebedingungen</a> | <a href="http://www.vodafone.de/impressum.html" target="_blank">Impressum</a>
   
   
   
   

   	  
  </div> 

</form>

  
    <script type="text/javascript">jssor_1_slider_init();</script>
    
    <script type="text/javascript">jssor_2_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
</body>

</html>