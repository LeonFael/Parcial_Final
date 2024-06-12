<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biciparqueadero_Nombre"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">
    INSERT INTO Ciclas (color, marca, precio_dia, tamaño, marchas, frenos, suspensión, inventario) 
    VALUES ('${param.color}', '${param.marca}','${param.precio_dia}', '${param.tamaño}', '${param.marchas}', '${param.frenos}', '${param.suspensión}', '${param.inventario}');
</sql:update>

<c:redirect url="index.jsp"/>