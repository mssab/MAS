<%@ Page Language="VB" AutoEventWireup="true" CodeFile="danke.aspx.vb" MaintainScrollPositionOnPostback="true" Inherits="_Danke" %>

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

  
    <div id="slide2">
        <div>
            <div>
  
  <!-- Panel offen -->    
<!-- Panel geschlossen -->





<!-- Panel DANKE offen -->
 <asp:Panel ID="danke" runat="server">

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