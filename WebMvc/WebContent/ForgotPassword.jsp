<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
    <h1 th:text="#{message.resetPassword}">reset</h1>
 
    <label th:text="#{label.user.email}">email</label>
    <input id="email" name="email" type="email" value="" />
    <button type="submit" onclick="resetPass()"
      th:text="#{message.resetPassword}">reset</button>
 
<a th:href="@{/registration.html}" th:text="#{label.form.loginSignUp}">
    registration
</a>
<a th:href="@{/login}" th:text="#{label.form.loginLink}">login</a>
 
<script src="jquery.min.js"></script>
<script th:inline="javascript">
var serverContext = [[@{/}]];
function resetPass(){
    var email = $("#email").val();
    $.post(serverContext + "user/resetPassword",{email: email} ,
      function(data){
          window.location.href = 
           serverContext + "login?message=" + data.message;
    })
    .fail(function(data) {
        if(data.responseJSON.error.indexOf("MailError") > -1)
        {
            window.location.href = serverContext + "emailError.html";
        }
        else{
            window.location.href = 
              serverContext + "login?message=" + data.responseJSON.message;
        }
    });
}
 
</script>
</body>
 
</html>