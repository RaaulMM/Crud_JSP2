<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link href="css.css" rel="stylesheet" type="text/css">
     <link href="css2.css" rel="stylesheet" type="text/css">
    <title>BBDD Coches - Raúl Moreno Montiel</title>
  </head>
  <body>
    <br>
    <br>
    <div class="container entero">
       <h1> <p>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Coches","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE Vehiculo SET "
                           + "matVeh='" + request.getParameter("matVeh")
                           + "', vinVeh='" + request.getParameter("vinVeh")
                           + "', cod_tipo='" + Integer.valueOf(request.getParameter("cod_tipo"))
                           + "', cod_mod='" + Integer.valueOf(request.getParameter("cod_mod"))
                           + "' WHERE codVeh= '" + Integer.valueOf(request.getParameter("codVeh")) +"'";
      s.execute(actualizacion);
      out.println("Coche actualizado correctamente.");
      
      conexion.close();
    %>
    </p></h1>
    <br>
    <a href="princi.jsp" id="pri"class="btn btn-success"><span class="glyphicon glyphicon-home"></span> Página principal</button></a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </div>
  </body>
</html>
