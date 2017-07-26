
function authUser(form) { 
if (form.Username.value=="gate") { 
if (form.Password.value=="gate#2015") { 
    location="home.asp" 
} else { 
    location="index.asp"
    } 
} else { 
    location="index.asp"
    } 
} 