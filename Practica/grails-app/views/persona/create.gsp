<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear Persona</title>
</head>

<body>

    <g:form controller="persona" action="guardar" >
        Nombre: <g:textField name="nombre" id="nombre" value="" />
        Apellido Paterno: <g:textField name="apellidoPaterno" id="apellidoPaterno" value="" />
        Apellido Materno: <g:textField name="apellidoMaterno" id="apellidoMaterno" value="" />
        Fecha de Nacimineto: <g:textField name="fechaNacimiento" id="fechaNacimiento" value="" />
        Edad: <g:textField name="edad" id="edad" value="" />
        <g:actionSubmit value="Guardar" />
   </g:form>
</body>
</html>