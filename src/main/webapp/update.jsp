<%-- 
    Document   : insert
    Created on : 05-mar-2021, 20:36:01
    Author     : DAW2-PROFESOR
--%>

<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar producto</h1>
        <%
            Productos miProducto = (Productos) request.getAttribute("miProducto");
        %>
        <form action="ServletProductos" method="get">
            <p><label>Nombre: <input type="text" name="nombre" value="<%= miProducto.getNombre() %>" required > </label></p>
            <p><label>Imagen: <input type="text" name="imagen" value="${miProducto.imagen}" required > </label></p>
        <p><label>Categoría: <input type="text" name="categoria" value="${miProducto.categoria}" required > </label></p>
        <p><label>Precio: <input type="text" name="precio" value="${miProducto.precio}" required > </label></p>
        <input type="hidden" name="op" required value="update2"> 
        <input type="submit" value="Actualizar" >       
        </form>
    </body>
</html>

