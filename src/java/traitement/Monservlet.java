/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package traitement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilisateur.utilisateur;

/**
 *
 * @author mttraore
 */
public class Monservlet extends HttpServlet {

    List<utilisateur> liste = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

            if (request.getParameter("valider") != null) {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String pseudo = request.getParameter("pseudo");
            String email = request.getParameter("email");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");

            if (pass1.equals(pass2)) {
                if (nom != null && prenom != null && pseudo != null && email != null) {
                    utilisateur u1 = new utilisateur(nom,prenom,pseudo,email,pass1,pass2);
                    liste.add(u1);
                    request.setAttribute("liste", liste);
                    request.setAttribute("nom", nom);
                    request.setAttribute("prenom", prenom);
                    this.getServletContext().getRequestDispatcher("/Accueil.jsp").forward(request, response);
                } else {
                    try ( PrintWriter out = response.getWriter()) {
                        /* TODO output your page here. You may use following sample code. */
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>mot de passe incorrect</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Mot de passe incorrect</h1>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                }
            }else{
                try ( PrintWriter out = response.getWriter()) {
                        /* TODO output your page here. You may use following sample code. */
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>mot de passe incorrect</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Mot de passe incorrect</h1>");
                        out.println("</body>");
                        out.println("</html>");
                    }
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
      
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
