 <html>
 <head>
 <title>Home Page</title>
 <style>
 a:visited {
   color: #c9c9c9;
}

a:hover {
   color: red;
}
 .dropbtn {
    background-color: #c9c9c9;
    color: white;
    padding: 10px;
    font-size: 10px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
 .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
 nav {
   padding:-10;
   min-width: 200px; 
  
}
nav ul li {
   
   display: inline-block;
}
nav ul li a {
   padding: 35px; 
   color: blue;
   font-size: 18px;
   font-family: Arial;
   text-decoration: none;
   display: block;
 }
  body{
  text-align:justify;
  padding : 30px;
  background-image:url("http://1080pwallpaper.net/wp-content/uploads/2017/06/Assassins-Creed-Origins-Pyramid-Slide-4K-Wallpaper.jpg");
  background-size: 1920px 1080px;
  background-repeat: no-repeat;
  background-attachment:fixed;
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
 <li> <div class="dropdown">
  <button class="dropbtn">Settings</button>
  <div class="dropdown-content">
    <a href="#">Profile</a>
    <a href="#">Subscription</a>
    <a href="#">Content</a>
    <a href="Login.jsp">SignOut</a>
  </div>
</div></li>
           
   </ul>
   </nav>
<body>
<strong>Welcome ${Username}.</strong>

</body>
</html>