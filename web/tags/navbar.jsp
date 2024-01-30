<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="site-navigation text-right text-md-right">

              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li class="active">
                  <a href="<c:url value="/accueil"/>">Accueil</a>
                </li>
                <li><a href="<c:url value="/gallery"/>">Galleries</a></li>
                <li class="has-children">
                  <a href="players.html">Players</a>
                  <ul class="dropdown arrow-top">
                    <li><a href="#">Jakub Bates</a></li>
                    <li><a href="#">Russell Vance</a></li>
                    <li><a href="#">Carson Hodgson</a></li>
                    <li class="has-children">
                      <a href="#">Sub Menu</a>
                      <ul class="dropdown">
                        <li><a href="#">Joshua Fugueroa</a></li>
                        <li><a href="#">Jakub Bates</a></li>
                        <li><a href="#">Russell Vance</a></li>
                        <li><a href="#">Carson Hodgson</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="events.html">Events</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="<c:url value="/contact"/>">Contact</a></li>
              </ul>

              <a href="#" class="site-menu-toggle js-menu-toggle text-black d-inline-block d-lg-none"><span class="icon-menu h3"></span></a>
            </nav>
    </body>
</html>
