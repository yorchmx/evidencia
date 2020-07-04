
<%@page import="Modelo.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Login" %>
<%@page import="Controlador.Registro" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        <script src="js/resultados.js"> </script> 
        </head>
    <body>
        <%-- Session --%>
        <h2>
            <%
                HttpSession sesion = request.getSession(true);
                Enumeration e = sesion.getAttributeNames();
                if (e.hasMoreElements()) {
                    out.print("Hola" + sesion.getAttribute("NombreC") + ", " + "buenvenido");
                }
                String name = sesion.getAttribute("NombreC").toString();
                %>
        </h2>
                <%-- /Session --%>
        
                <h2>
                    Ingrese los siguientes datos para calcular su IMC.
                </h2>
                
                <form action="RegistroDatos" method="post">
                    Peso:<br>
                    <input type="text" name="peso" id="pes"></br>
                    <input type="text" name="calcular" id="btnc">
                </form>
                <a href="index.jsp" > Salir </a>
                
                <div class="container">
                    
                    
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Peso</th>
                                <th>IMC</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                PreparedStatement ps = null;
                                ResultSet rs;
                                try {
                                    
                                }
                            %>
                        </tbody>
                        
    </body>
</html>
