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
<!--        <form name="personne" action="addPersonne" method="POST">-->
<form name="personne" action="/addPersonne" method="POST" enctype="multipart/form-data">
            <label for="nom">Nom</label>
            <input type="text" name="nom" />
            <label for="prenom">Prénom</label>
            <input type="text" name="prenom" />
            <label for="age">Age</label>
            <input type="number" name="age"  />
            <input type="submit" value="Envoyer" name="Envoyer" />
        </form>
    </body>
</html>
