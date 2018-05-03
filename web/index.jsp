<%-- 
    Document   : Index2.jsp
    Created on : 24-abr-2018, 8:54:23
    Author     : raul
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link href="css.css"
      rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <script>
      $('.message a').click(function () {
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
      });
    </script>
  </head>
  <body>
    <div class="login-page">
      <div class="form" >
        <p><h1>CRUD COCHES</h1></p>
        <form  class="login-form" action="loginCorre.jsp">
          <input id ="usuario" name ="usu" type="text" placeholder="username"/>
          <input id = "contrasena" name="cont" type="password" placeholder="password"/>
          <button>login</button>
        </form>
      </div>
    </div>
  </body>
</html>
