<%-- 
    Document   : loginCorre
    Created on : 24-abr-2018, 9:22:02
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
    <title>JSP Page</title>
  </head>
  <body>
    <% 
          HashMap<String, String> m = new HashMap<String, String>();
            m.put("Pepe", "Pepe");
            m.put("admin", "admin");
            m.put("luis", "luis");
            m.put("usuario", "usuario");
            
            
            String nombre = request.getParameter("usu");
            String contraseña = request.getParameter("cont");

            if (m.containsKey(nombre)) {
                if (m.get(nombre).equals(contraseña)) {
                    session.setAttribute("nombre", nombre);
                    response.sendRedirect("princi.jsp");

                } else {
                    out.println("<div class ='entero'><p class='alert'>Usuario o contraseña incorrecta</p>");
                    out.println("<a href='index.jsp' <button class = 'pepe'>Volver </button></a> </div>");
                }
            } else {
               out.println("<div class ='entero'><p class='alert'>Usuario o contraseña incorrecta</p>");
                    out.println("<a href='index.jsp' <button class = 'pepe'>Volver </button></a></div>");
            }
          %>
  </body>
</html>
