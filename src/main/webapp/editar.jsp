<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    Productos prod = (Productos) request.getAttribute("prod");

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
        <h1>
            <c:if test="${producto.id == 0}">Insertar Nuevo Producto: </c:if> 
            <c:if test="${producto.id != 0}">Modificar el Producto:</c:if>
        </h1>
        <form action="MainController" method="post">

            <input type="hidden" name="id" value="${prod.id}">

            <table>
                <tr>
                    <td>Producto</td>
                    <td><input type="text" name="producto" value="${prod.producto}"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="${prod.precio}"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="${prod.cantidad}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>   

    </body>
</html>
