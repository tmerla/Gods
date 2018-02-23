 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
   <title>Locket Login</title>
   <!--<script >
   function validate()
   {
   
      if( document.myForm.username.value == "" )
      {
         alert( "Username is missing!" );
         document.myForm.Name.focus() ;
         return false;
      }
      
      if( document.myForm.password.value == "" )
      {
         alert( "Password is missing!" );
         document.myForm.password.focus() ;
         return false;
      }
   }
   </script>-->
   <style>
  input:valid {
  border: 1px solid black;
}
   h1{
     text-align: center;
     box-shadow: 0 0 10px 4px #FF6347;
     color: LightSkyBlue;
    
    }
   h2{
      color:#c9c9c9;
      text-decoration: underline;
      font-size:large;
      font-weight: 900;
      font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
    }
   body{
  text-align:justify;
  padding : 200px;
  background-image:url("https://www.hdwallpapers.in/walls/the_legend_of_zelda_breath_of_the_wild_4k-wide.jpg");
  background-size: 2160px 1440px;
  background-repeat: no-repeat;
  background-attachment:fixed;
  }
 .line{
  text-decoration:none;
}
.lines{
 text-decoration:none;
 color : #c9c9c9;
 text-align : center;
}
 #intro{
 font-weight: 700;
 color:red;
}
a:visited {
   color: #c9c9c9;
}

a:hover {
   color: red;
}
nav {
   padding: 20px 0;
   min-width: 100px; 
}
nav ul li {
   display: inline-block;
}
nav ul li a {
   padding: 10px; 
   color: #FFFFF;
   font-size: 18px;
   font-family: Arial;
   text-decoration: none;
   display: block;
 }
   </style>
   
   </head>
   <nav>
   <ul>
       <li><a href="#">HOME</a></li>
       <li><a href="#">PEOPLE</a></li>
       <li><a href="#">CHAT</a></li>
       <li><a href="#">GROUP</a></li>
       <li><a href="#">BLOG</a></li>
       <li><a href="#">COMMUNITY</a></li>
       <li><input type="text" id="search" placeholder="Search for..." required>
           <input type="submit" value="go" id="submit"></li>
   </ul>
</nav>


   <h1>Locket</h1>
   <h2> Welcome To Locket </h2>
   <h3 align = "center" style = "color:red">${message}</h3>
   <form  action = "login.do" ,"method ="POST" >
   <div id ="intro">
    <span style="cursor:text;">
    <lable for ="use">username:</lable>
     <input id = "use" type="text" name="username" required  placeholder ="User ID" autofocus ><br/><br/>
     <lable for ="pass">password:</lable>
  <input id ="pass" type="password" name="password" required placeholder ="Password"><br/><br/>
  
    </span>
    <span style="cursor:pointer">
    <input type="submit" value="SignIn">
    <a class ="lines" href = "Register.jsp">  Create NewAccount</a><br/><br/>
    </span>
    </div>
    <span style="cursor:pointer;">
    <a class ="line" href="#">forgot username?</a><br/>
    <a class="line" href="ForgotPassword.jsp">forgot password?</a>
    </span>
   </form>
  
<body>
</body>
</html>