package fr.can.controller;

import fr.can.model.Personne;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dev-y
 */
@WebServlet(name = "ListePersonne", urlPatterns = {"/liste"})
public class ListePersonne extends HttpServlet {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("CanPU");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();
        
            List<Personne> pers = em.createQuery("SELECT p FROM Personne p", Personne.class).getResultList();
            request.setAttribute("pers", pers);
            RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("/WEB-INF/listePersonne.jsp");
            rd.forward(request, response);
        

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //EntityManagerFactory emf = Persistence.createEntityManagerFactory("CanPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            // Récupérer l'ID de la personne à supprimer depuis la requête
            Long personneId = Long.parseLong(request.getParameter("Id"));

            // Commencer la transaction
            tx.begin();

            // Récupérer la personne depuis la base de données
            Personne personne = em.find(Personne.class, personneId);

            if (personne != null) {
                // Supprimer la personne
                em.remove(personne);
            }

            // Commit de la transaction
            tx.commit();
        } catch (Exception e) {
            // Gérer les exceptions
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            e.printStackTrace(); // Ou utilisez un logger
        } finally {
            // Fermer l'EntityManager
            em.close();
        }

        // Rediriger vers la page où vous affichez les personnes après la suppression
        response.sendRedirect(request.getContextPath() + "/liste");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
