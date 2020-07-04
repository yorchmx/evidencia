
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Registro" %>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
        
        <h1>Inicia Sesión</h1>
        <h2> <% String us = ""; String ps = ""; String nn = "";
        HttpSession sesion = resquest.getSession(true);
        Enumeration e = request.getSession(true);
        if (e.hasMoreElements() && sesion.getAttribute("usuario") != null && sesion.getAttribute("usuario") != nn) {
            ps = "";
            nn = sesion.getAttribute("usuario").toString();
            out.print("El usuario '" + sesion.get.Attribute("usuario") + "'" +
                    " ya se encuentra registrado, intente ingresar por favor");
        }
        HttpSession sesion2 = request.getSession(true);
        Enumeration en = sesion2.getAttributenames();
        if (en.hasMoreElements() && sesion2.getAttribute("user") != null && sesion2.getAttribute("user") != us) {
            us = sesion2.getAttribute("user").toString();}
        if(en.hasMoreElements() && sesion.getAttribute("usuario") == null && sesion2.getAttribute("contraeña") != null) {
            ps = sesion2.getAttribute("contraseña").toString();}
        
        %>
        </h2>
        <form action="Login" method="post">
            Usuario:<br>
            <input type="text" name="user" value="<% us %>"><br>
            Contraseña:<br>
            <input type="password" name="pass" value="<% ps %>"><br>
            <input type="submit" value="Entrar">
        </form>
            <a href="registrousuario.jsp" > ¿No tienes usuario? Registrate aquí. </a>
    </body>
</html>
