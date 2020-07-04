
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
            <script src="js/registrousuario.js"> <script>
    </head>
    <body>
        <h1>Registro de usuarios</h1>
        <form action="Registro" method="post">
        Nombre Completo:<br>
        <input type="text" name="rnombrec" value=""></br>
        Edad:<br>
        <input type="text" name="redad" id="ed" value=""></br>
        Estatura:<br>
        <input type="text" name="restatura" id="est" value=""></br>
        Sexo:<br>
        <input type="checkbox" name="rsexo" id="rs" value="Hombre"> Hombre </br>
        <input type="checkbox" name="rsexo" id="rs" value="Muejer"> Mujer </br>
        Usuario:<br>
        <input type="password" name="rpass" value=""></br>
        <input type="submit" value="Registrar" id="btn">
        </form>
    </body>
</html>
