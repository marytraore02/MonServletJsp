<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inscrption</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <div class="registration-form">
            <form method="POST" action="Monservlet" id="formulaire">
                <div class="form-icon">
                    <span><i class="icon icon-user"></i></span>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control item" name="nom" id="nom" placeholder="nom" >
                </div>              
                <span id="error"></span>
                <div class="form-group">
                    <input type="text" class="form-control item" name="prenom" placeholder="prenom">
                </div>
             
                <div class="form-group">
                    <input type="text" class="form-control item" name="pseudo" placeholder="speudo">
                </div>
              
                <div class="form-group">
                    <input type="text" class="form-control item" name="email" placeholder="Email">
                </div>
             
                <div class="form-group">
                    <input type="password" class="form-control item" name="pass1" minlength="8" placeholder="mot de passe">
                </div>
           
                <div class="form-group">
                    <input type="password" class="form-control item" name="pass2" minlength="8" placeholder="Confirme mot de passe">
                </div>
              
                <div class="form-group">
                    <input type="submit" name="valider" class="btn btn-block create-account" value="Envoyer" onClick="javascript: return verif();">
                </div>
            </form>
            <div class="social-media">
                <h6><a href="Login.jsp">Login</a> </h6>
                <h5>S'inscrire avec des media sociaux</h5>
                <div class="social-icons">
                    <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                    <a href="#"><i class="icon-social-google" title="Google"></i></a>
                    <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
                </div>
            </div>
        </div>



        <script>
            let formulaire = document.getElementById('formulaire');
            formulaire.addEventListener('submit', function(e) {
            let myInput = document.getElementById('nom');
            let myRegex = /^[a-zA-Z-\s]+$/;
            
            if(myInput.value.trim() === ""){
                let myError = document.getElementById('error');
                myError.innerHTML = "Le nom est requis.";
                myError.style.color = 'red';
                e.preventDefault();
            }else if(myRegex.test(myInput.value) = false){
                let myError = document.getElementById('error');
                myError.innerHTML = "Le nom doit comporter des lettres des tirets";
                 myError.style.color = 'red';
                 e.preventDefault();
            }
            });
            /*function verif()
            {
            var nom = document.formulaire.nom.value;
            if (document.formulaire.nom.value == "")
            {
            alert ('Veuillez entrer votre nom');
            document.formulaire.nom.focus();
            return false;
            }
            if (document.formulaire.prenom.value == "")
            {
            alert ('Veuillez entrer votre prénom');
            document.formulaire.prenom.focus();
            return false;
            }
            if (document.formulaire.pseudo.value == "")
            {
            alert ('Veuillez entrer votre pseudo');
            document.formulaire.pseudo.focus();
            return false;
            }
            if (document.formulaire.email.value == "")
            {
            alert ('Veuillez entrer votre email');
            document.formulaire.email.focus();
            return false;
            }
            else {return true; }
            }*/

        </script>

    </body>
</html>






