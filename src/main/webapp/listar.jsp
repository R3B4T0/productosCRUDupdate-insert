<%-- 
    Document   : listar
    Created on : 05-mar-2021, 20:53:22
    Author     : DAW2-PROFESOR
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Restaurante Bosco</a>

            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="ServletProductos?op=listar">Listar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ServletProductos?op=insert1">Insert</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">TPV</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Listado de productos</h1>
        <% List<Productos> misProductos = (List<Productos>) request.getAttribute("misProductos");
        %>
        <table border="1">
            <tr><th>id</th><th>Nombre</th><td>Imagen</td><td>Categoría</td><td>Precio</td><td>Borrar</td><td>Actualizar</td></tr>
            <% for( Productos p: misProductos) { 
            String cadenaBorrar = "<a onclick='return Confirmation()' href='ServletProductos?op=borrar&id="+p.getId()+"'>Borrar</a>";
            String cadenaActualizar = "<a href='ServletProductos?op=update1&id="+p.getId()+"'>Actualizar</a>";
             %>
            <tr><td><%=p.getId()%></td><td><%=p.getNombre() %></td><td><%=p.getImagen() %></td>
                <td><%=p.getCategoria() %></td><td><%=p.getPrecio() %></td><td><%=cadenaBorrar%></td><td><%=cadenaActualizar%></td></tr>    
            
            <% } %>
        </table>
        <script>
            function Confirmation(){
                if ( confirm("Está seguro?")==true) {
                    alert("Procedo a borrar");
                    return true;
                }else {
                    alert("Operación cancelada");
                    return false;
                }
            }
        </script>
    </body>
</html>
