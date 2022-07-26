<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Accueil</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body> 
        <div class="registration-form">
            <form method="POST" action="./monservlet2">
                <h1> 
                    Bienvenue 
                   
                    <c:out value="${nom}"/>
                    <c:out value="${prenom}"/>
                    !
                </h1>

                <div class="form-group">
                    <button type="submit" name="deconnecter" class="btn btn-block create-account">Déconnecter</button>
                </div>
            </form>
        </div>
                    
        <table border=1 width="100%">
            <tr>
                <th>Numero</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>pseudo</th>
                <th>email</th>
                <th>mdp</th>
                <th>mdp confirm</th>
            </tr>

            <c:forEach items="${liste}" var="cour" varStatus="v">

                <tr>
                    <td>${v.count}</td>
                    <td>${cour.nom}</td>
                    <td>${cour.prenom}</td>
                    <td>${cour.email}</td>
                    <td>${cour.pseudo}</td>
                    <td>${cour.pass1}</td>
                    <td>${cour.pass2}</td> 
                </tr>

            </c:forEach>
        </table>

    </body>
</html>
