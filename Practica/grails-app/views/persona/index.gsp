<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Practica</title>
</head>
<script>
    function filtrar(){
        ${remoteFunction(controller: 'persona',
                            action: 'buscar',
                            params:"\'nombre=\'+nombre",
                            update: 'contenido')

        };
    }
</script>

<body>

    <g:formRemote name="form" url="[controller: 'persona',
                                    action: 'buscar']" update="contenido">
        <g:textField id="busqueda" name="nombre" placeholder="Buscar.." />
        <input type="submit"/>
    </g:formRemote>

<div id="contenido">
<g:render template="lista" model="[listaPersonas:listaPersonas]"/>
</div>
<g:form controller="Persona" action="crear">


    <g:actionSubmit value="Crear"/>
</g:form>

</body>
</html>