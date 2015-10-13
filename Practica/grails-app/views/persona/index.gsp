<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Practica</title>
</head>

<body>

    <g:formRemote name="form" url="[controller: 'persona',
                                    action: 'buscar']" update="contenido">
        <div id="contenido1">
            <g:if test="${param == 'nombre'}">
                Nombre: <g:textField id="nombre" name="nombre" placeholder="Nombre" />
                Apellido Paterno: <g:textField id="apellidoP" name="apellidoP" placeholder="Apellido Paterno" />
                Apellido Materno: <g:textField id="apellidoM" name="apellidoM" placeholder="Apellido Materno" />
                <input type="submit" value="Buscar"/>
            </g:if>
            <g:if test="${param == 'fecha'}">
                De : <g:textField id="fecha1" name="fecha1" placeholder="Fecha Inicio" />
                a: <g:textField id="fecha2" name="fecha2" placeholder="Fecha Final" />
                <input type="submit" value="Buscar"/>
            </g:if>
        </div>
    </g:formRemote>
<g:formRemote name="form2" url="[controller: 'persona',
                                     action: 'select']" update="contenido1">
    Buscar por: <g:select name="filtro" from="${['nombre', 'fecha']}"/>
    <input type="submit" value="Aceptar"/>
</g:formRemote>

<div id="contenido">
<g:render template="lista" model="[listaPersonas:listaPersonas]"/>
</div>
<g:form controller="Persona" action="crear">


    <g:actionSubmit value="Crear"/>
</g:form>

</body>
</html>