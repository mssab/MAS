<%@ Page Language="VB" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Ausgabe2.aspx.vb" Inherits="Ausgabe2" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://graph.facebook.com/schema/og/" >

 <head>
  <title>vodafone.de - Photo Booth</title>
  <meta property="fb:admins" content="100009863794289"/>
  <%--<meta property="fb:app_id" content="1718540968383015" />
  <script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
  <script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php" type="text/javascript"></script>--%>   
      
  <link href="img/favicon.ico" rel="shortcut icon" />
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  
   <link rel="stylesheet" href="css/style_ausgabe.css" type="text/css" />  
   
  
   
   <link href="css/style_rhombus.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            
                printWindow.print();
            
            printWindow.close();
            return false;
        }
    </script>
     <style>
         body {
             background-image: url(../IMAGES/background.jpg);
             background-repeat: no-repeat;
             background-size: cover;
         }

     </style>
        
<script type="text/javascript" src="js/jquery.min.js"></script>
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
         jssor_1_slider_init = function () {

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
        jssor_2_slider_init = function () {

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
<script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '1718540968383015',
                xfbml: true,
                version: 'v2.5'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
</script>





<form method="post" class="anmeldeform_login" id="form1" runat="server"> 


<div class="ausgabe_oben">
<center>
<asp:Panel ID="pnlContents" runat="server">
                <asp:Label ID="resultload" runat="server" Text=""></asp:Label>
                <asp:Label ID="TargetFoto" runat="server" Text=""></asp:Label>
            </asp:Panel>

            <br />
            <asp:Panel ID="PanelButtons" runat="server">
                <table style=" width: 70%; margin-top: 30px;" border="0" cellpadding="10" cellspacing="0">
                    

                    <tr>
                        <td align="center">

                            <asp:Button ID="druckbtn" OnClientClick="return PrintPanel();" runat="server" Text="Drucken" class="button_weiss" /></td>
                            <td align="center"><asp:Button ID="emailTab" runat="server" Text="Per E-Mail" class="button_weiss" /></td>
                            <td align="center"><asp:Button ID="DeleteBtn" runat="server"  OnClientClick="return confirm('Wirklich löschen?')" Text="Löschen" class="button_rot" />
                            

                        </td>

                    </tr>

                </table>

            </asp:Panel>
          
                <asp:Panel ID="PanelEmailform" runat="server" style="background-color:whitesmoke" Width="1536px">
                    <div class="auto-style3">

                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="anrede_frau" Text="Herr" runat="server" GroupName="anrede" />
                                    <asp:RadioButton ID="anrede_herr" Text="Frau" runat="server" GroupName="anrede" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="vorname" runat="server" Height="22px" placeholder="Vorname"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="email" runat="server" Height="22px" placeholder="E-Mail"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Button ID="abrechen" runat="server" Text="Abrechen" />
                                     <asp:Button ID="Senden" runat="server" Text="Senden" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                </asp:Panel>
</center>

</div>


<div class="ausgabe_unten">
<asp:Button ID="Button1" runat="server" Text="Abbrechen" class="button_footer" />

</div>
  
    

            
       
  
  
  
  </form>
    

  




  
    <script type="text/javascript">jssor_1_slider_init();</script>
    
    <script type="text/javascript">jssor_2_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
</body>

</html>