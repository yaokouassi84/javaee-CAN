/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fr.can.controller;

import fr.can.model.Personne;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dev-y
 */
@WebServlet(name = "DeleteUnePersonne", urlPatterns = {"/deleteUnePersonne"})
public class DeleteUnePersonne extends HttpServlet {
    
//EntityManagerFactory emf = Persistence.createEntityManagerFactory("CanPU");
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
        super.init();
        emf = Persistence.createEntityManagerFactory("CanPU");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            // Récupérer l'ID de la personne à supprimer depuis la requête
            Long personneId = Long.parseLong(request.getParameter("id"));

            // Commencer la transaction
            tx.begin();

            // Récupérer la personne depuis la base de données
            Personne personne = em.find(Personne.class, personneId);

            // Si la personne existe, la supprimer
            if (personne != null) {
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
            if (em != null && em.isOpen()) {
                em.close();
            }
        }

        // Rediriger vers la page où vous souhaitez après la suppression
        response.sendRedirect(request.getContextPath() + "/listePersonne.jsp");
    }

    @Override
    public void destroy() {
        super.destroy();
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
    }

