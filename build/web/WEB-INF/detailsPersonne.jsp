<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <c:forEach var="p" items="personne">
            <p>${p.nom}</p>
            <p>${p.prenom}</p>
            <p>${p.age}</p>
        </c:forEach>
    </body>
</html>
