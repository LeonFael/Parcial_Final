<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingresar nueva cicla</title>
</head>
<body>

<form action="agregarCicla.jsp" method="post">

    color: <input type="text" name="color"/><br/>
    marca: <input type="text" name="marca"/><br/>
    precio_dia: <input type="text" name="precio_dia"/><br/>
    tamaño: <input type="text" name="tamaño"/><br/>
    marchas: <input type="text" name="marchas"/><br/>
    frenos: <input type="text" name="frenos"/><br/>
    suspensión: <input type="text" name="suspensión"/><br/>
    inventario: <input type="text" name="inventario"/><br/>
    
    <input type="submit" value="Agregar Cicla"/>
</form>

</body>
</html>