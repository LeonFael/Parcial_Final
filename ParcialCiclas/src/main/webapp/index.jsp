<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parcial ciclas</title>
</head>
<body>
<h1>Parcial ciclas</h1>

<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biciparqueadero_Nombre"
                   user="dba" password="123456789.eT"/>
                   
<sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Ciclas;
</sql:query>

<table border="1">
    <tr>
        <th>id</th>
        <th>color</th>
        <th>marca</th>
        <th>precio_dia</th>
        <th>tamaño</th>
        <th>marchas</th>
        <th>frenos</th>
        <th>suspension</th>
        <th>inventario</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td>${row.id}</td>
            <td>${row.color}</td>
            <td>${row.marca}</td>
            <td>${row.precio_dia}</td>
            <td>${row.tamaño}</td>
            <td>${row.marchas}</td>
            <td>${row.frenos}</td>
            <td>${row.suspensión}</td>
            <td>${row.inventario}</td>
        </tr>
    </c:forEach>
</table>

<a href="agregarCicla.jsp">Ingresar una nueva cicla</a>

</body>
</html>