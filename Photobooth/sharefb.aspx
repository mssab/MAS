<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sharefb.aspx.vb" Inherits="sharefb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta property="fb:admins" content="100009863794289"/>
    <meta property="fb:app_id" content="529221790561119"/>

      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $('#imgSmallThumb').attr('src', 'http://www.gate-multimedia.de/Fotobooth/Device1/16_06_2017/Bild8.jpg');

         })

     </script>

</head>
<body>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '529221790561119',
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
        } (document, 'script', 'facebook-jssdk'));
</script>
    <form id="form1" runat="server">
    <div>
        <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//www.vodafone-consumer.de/faceb.aspx?id=KW51G">teilen</a>
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
&nbsp;</div>
    </form>
</body>
</html>
