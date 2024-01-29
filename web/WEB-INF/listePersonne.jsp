<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste des Personnes!</h1>
        <div>
            <table border="2">
                <thead>
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Age</th>
                        <th>Suppression</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach  items="${pers}" var="p">
                        <tr>
                            <td>${p.nom}</td>
                            <td>${p.prenom}</td>
                            <td>${p.age}</td>
                            <td>Suppression</td>
                        </tr>  
                    </c:forEach>
                </tbody>

            </table> 
        </div>
        <h1>Liste des Personnes!</h1>
        <div>
            <table border="2">
                <thead>
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Age</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${pers}" var="p">
                        <c:set var="style" value="${p.age > 40 ? 'color: red;' : ''}" />
                        <tr style="${style}">
                            <td>${p.nom}</td>
                            <td>${p.prenom}</td>
                            <td>${p.age}</td>
                        </tr>  
                    </c:forEach>
                </tbody>                
            </table>

        </div>
        <h1>Liste des Personnes!</h1>
        <div>
            <table border="2">
                <thead>
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Age</th>
                        <th>Suppression</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${pers}" var="p">
                        <c:set var="style" value="${p.age > 40 ? 'color: red;' : 'color: green;'}" />
                        <tr style="${style}">
                            <td>${p.nom}</td>
                            <td>${p.prenom}</td>
                            <td>${p.age}</td>
                            <td>
                                <form method="post" action="${pageContext.request.contextPath}/deleteUnePersonne">
                                    <input type="hidden" name="id" value="${p.id}" />
                                    <button type="submit">Supprimer</button>
                                </form>
                            </td>
                        </tr>  
                    </c:forEach>
                </tbody>                
            </table>

        </div>
    </body>
</html>
