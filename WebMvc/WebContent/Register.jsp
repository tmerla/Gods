<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Locket Registration</title>
<script>

function myFunction() {
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    if (pass1 != pass2) {
        alert("Passwords Do not match");
        document.getElementById("pass1").style.borderColor = "#E34234";
        document.getElementById("pass2").style.borderColor = "#E34234";
    }
    else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.Email.value))  
  {  
    return (true)  
  }  
    alert("You have entered an invalid email address!")  
    return (false)  
}  
</script>
<style>
  body{
  text-align:justify;
  padding : 200px;
  background-image:url("http://www.planwallpaper.com/static/images/background-design-14-Cool-Backgrounds.jpg");
  background-size: 1920px 1080px;
  background-repeat: no-repeat;
  background-attachment:fixed;
  }
h1{
  text-decoration:underline;
  color:#c9c9c9;
}

</style>
</head>
<body>
<form name ="myForm" action = "register.do" onsubmit = "myFunction()"  method="post">
<h1 align="center">LOCKET REGISTRATION</h1>
<h3 align = "center" style = "color:red">${message}</h3>
<table align ="center">
<tr>
<th>FirstName</th>
<th><input type="text" name = "FirstName" Required placeholder = "First Name" autofocus></th>
</tr>
<tr>
<th>LastName</th>
<th><input type = "text" name = "LastName" Required placeholder = "Last Name"></th>
</tr>
<tr>
<th>username</th>
<th><input type="text" name = "username" Required placeholder ="User ID"></th>
</tr>
<tr>
<th>password</th>
<th><input id = "pass1" type = "password" name = "password" Required placeholder = "Password"></th>
</tr>
<tr>
<<th>Confirm Password</th>
<th><input id ="pass2" type = "password" name = "password" Required placeholder = "Retype Password"></th>
</tr>
<tr>
<th>Phone</th>
<th><input type = "text" name = "Phone" Required placeholder = "Phone Number"></th>
</tr>
<tr>
<tr>
<th>Email</th>
<th><input type = "text" name = "Email"Required placeholder = "Email"></th>
</tr>
<tr>
<th>
<input type="reset" value="clear"></th>
<th><input type="Submit" value="submit"></th>
</tr>
</table></form>

</body>
</html> 