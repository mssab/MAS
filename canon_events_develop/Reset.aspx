<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Reset.aspx.vb" Inherits="Abmeldung" %>

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
    



    </form>
</body>
</html>
