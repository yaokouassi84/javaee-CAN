package fr.can.controller;

import fr.can.model.Personne;
import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet(name = "DetailsPersonne", urlPatterns = {"/detailsPersonne"})
public class DetailsPersonne extends HttpServlet {

    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
        super.init();
        emf = Persistence.createEntityManagerFactory("CanPU");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérer l'ID de la personne à trouver depuis la requête
        Long personneId = Long.parseLong(request.getParameter("id"));

        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            // Commencer la transaction
            tx.begin();

            // Trouver la personne par son ID
            Personne personne = em.find(Personne.class, personneId);

            // Commit de la transaction
            tx.commit();

            // Si la personne est trouvée, la renvoyer en réponse
            if (personne != null) {
                response.getWriter().println("Personne trouvée : " + personne.getNom() + " " + personne.getPrenom());
            } else {
                response.getWriter().println("Personne non trouvée pour l'ID : " + personneId);
            }
        } catch (Exception e) {
            // Gérer les exceptions
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            e.printStackTrace(); // Ou utilisez un logger
        } finally {
            // Fermer l'EntityManager
            if (em != null && em.isOpen()) {
                em.close();
            }
        }
    }

    @Override
    public void destroy() {
        super.destroy();
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
    }


