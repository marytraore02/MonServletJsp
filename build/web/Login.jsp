<%-- 
    Document   : Login
    Created on : 25 juil. 2022, 09:49:08
    Author     : mttraore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="registration-form">
        <form method="POST" action="Monservlet">
            <div>
                <input type="text" class="form-control item" name="pseudo" placeholder="pseudo">
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" name="pass1" minlength="8" placeholder="mot de passe" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-block create-account">Se connecter</button>
            </div>
        </form>
        <div class="social-media">
            <h5>S'inscrire avec des media sociaux</h5>
            <h6><a href="Inscrire.jsp">S'inscrire</a> </h6>
            <div class="social-icons">
                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                <a href="#"><i class="icon-social-google" title="Google"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
            </div>
        </div>
    </div>
    </body>
</html>

