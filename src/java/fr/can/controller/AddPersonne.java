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
@WebServlet(name = "AddPersonne", urlPatterns = {"/addPersonne"})
public class AddPersonne extends HttpServlet {
 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       /* String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String ageParameter = request.getParameter("age");   
        Integer age = Integer.parseInt(ageParameter);
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("CanPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        
            tx.begin();
            Personne p = new Personne();
            p.setNom(nom);
            p.setPrenom(prenom);
            p.setAge(age);           
            em.persist(p);
            tx.commit();
            em.close();
           */ 
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String ageParameter = request.getParameter("age");   
        Integer age = Integer.parseInt(ageParameter);
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("CanPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        
            tx.begin();
            Personne p = new Personne();
            p.setNom(nom);
            p.setPrenom(prenom);
            p.setAge(age);           
            em.persist(p);
            tx.commit();
            em.close();
            
        
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
