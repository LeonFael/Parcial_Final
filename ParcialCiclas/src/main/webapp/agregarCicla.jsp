<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Biciparqueadero_Nombre"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">
    INSERT INTO Ciclas (color, marca, precio_dia, tama�o, marchas, frenos, suspensi�n, inventario) 
    VALUES ('${param.color}', '${param.marca}','${param.precio_dia}', '${param.tama�o}', '${param.marchas}', '${param.frenos}', '${param.suspensi�n}', '${param.inventario}');
</sql:update>

<c:redirect url="index.jsp"/>