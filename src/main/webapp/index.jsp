<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    List<Productos> lista = (List<Productos>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
        <table border="1" style="margin: 0 auto;">
            <tr>
                <td> <strong> PRÁCTICA TEM-742 </strong> <br>
                    <strong>Nombre:</strong> OTOYA SURCO JULIAN HILARIO <br>
                    <strong>Carnet:</strong> 4925296 LP <br>
                </td>
            </tr>
        </table>
        <br>
        <h1>Listado de Productos en Almacen:</h1>
        <p><a href="MainController?op=nuevo">Nuevo Producto:</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio Bs</th>
                <th>Cantidad</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>

                    <td>
                        <a href="MainController?op=editar&id=${item.id}">Modificar</a>
                    </td>
                    <td>
                        <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro de Eliminar el registro ?'))">Eliminar</a>
                    </td>
                </tr>    
            </c:forEach>
        </table>

    </body>
</html>
