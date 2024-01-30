<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Guemps FootBall Club </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Oswald:400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  <div class="site-wrap">


    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->

    <div class="container">

      <div class="row no-gutters site-navbar align-items-center py-3">

        <div class="col-6 col-lg-2 site-logo">
          <a href="index.html">SportsTeam</a>
        </div>
        <div class="col-6 col-lg-10 text-right menu">
            <%@include file="tags/navbar.jsp" %>
        </div>
      </div>

    </div>
    
    
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="hero-wrap" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
            <div class="hero-contents">
              <h2>Team after Training</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui distinctio aliquid dolor odio ullam odit cum veniam fuga aperiam aut.</p>
              <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="col-lg-8 ml-auto">
          <div class="row">
            <div class="col-md-6 col-lg-6 mb-5 mb-lg-0">
              <div class="custom-media d-flex">
                <div class="img-wrap mr-3">
                  <a href="#"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div>
                  <span class="caption">Latest News</span>
                  <h3><a href="#">Roman Greg scorer 4 goals</a></h3>
                  <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-6 mb-5 mb-lg-0">
              <div class="custom-media d-flex">
                <div class="img-wrap mr-3">
                  <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div>
                  <span class="caption">Team</span>
                  <h3><a href="#">Line for the upcoming match</a></h3>
                  <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          
        </div>
      </div>

      <a href="#"></a>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-6">
            <h2 class="section-title">Our Players</h2>
          </div>
          <div class="col-6 text-right">
            <a href="#" class="custom-prev js-custom-prev-v2">Prev</a>
            <span class="mx-2">/</span>
            <a href="#" class="custom-next js-custom-next-v2">Next</a>
          </div>
        </div>

        <div class="owl-4-slider owl-carousel">
          <div class="item player">
            <a href="#"><img src="images/player_4.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Jakub Bates</h3>
              <p>#10 / Forward</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_1.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Joshua Figueroa</h3>
              <p>#7 / Forward</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_5.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Russell Vance</h3>
              <p>#1 / Goal Keeper</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_3.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Carson Hodgson</h3>
              <p>#3 / Forward</p>
            </div>
          </div>

          <div class="item player">
            <a href="#"><img src="images/player_4.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Yanis Velasquez</h3>
              <p>#4 / Forward</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_1.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Joshua Figueroa</h3>
              <p>#8 / Forward</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_2.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Russell Vance</h3>
              <p>#6 / Forward</p>
            </div>
          </div>
          <div class="item player">
            <a href="#"><img src="images/player_3.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4">
              <h3>Carson Hodgson</h3>
              <p>#9 / Forward</p>
            </div>
          </div>

        </div>
        
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-center mb-2">
          <div class="col-6">
            <h2 class="section-title">Team Gallery</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_1.jpg" data-fancybox="gal"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_2.jpg" data-fancybox="gal"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_3.jpg" data-fancybox="gal"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
          </div>

          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_4.jpg" data-fancybox="gal"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_5.jpg" data-fancybox="gal"><img src="images/img_5.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_1.jpg" data-fancybox="gal"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_2.jpg" data-fancybox="gal"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-4">
            <a href="images/img_3.jpg" data-fancybox="gal"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
          </div>
        </div>
      </div>
    </div>



    <div class="site-section">
      <div class="container">
        <div class="row align-items-center mb-2">
          <div class="col-6">
            <h2 class="section-title">Events</h2>
          </div>
        </div>

        <div class="row mb-5">
          <div class="col-sm-6 col-md-4 col-lg-3 mb-5 mb-lg-0">
            <div class="custom-media d-block">
              <div class="img-wrap mb-3">
                <a href="#"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div>
                <span class="caption">May 19, 2020</span>
                <h3><a href="#">Roman Greg scorer 4 goals</a></h3>
                <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4 col-lg-3 mb-5 mb-lg-0">
            <div class="custom-media d-block">
              <div class="img-wrap mb-3">
                <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div>
                <span class="caption">May 19, 2020</span>
                <h3><a href="#">Line for the upcoming match</a></h3>
                <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4 col-lg-3 mb-5 mb-lg-0">
            <div class="custom-media d-block">
              <div class="img-wrap mb-3">
                <a href="#"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div>
                <span class="caption">May 19, 2020</span>
                <h3><a href="#">Roman Greg scorer 4 goals</a></h3>
                <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4 col-lg-3 mb-5 mb-lg-0">
            <div class="custom-media d-block">
              <div class="img-wrap mb-3">
                <a href="#"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div>
                <span class="caption">May 19, 2020</span>
                <h3><a href="#">Roman Greg scorer 4 goals</a></h3>
                <p class="mb-0"><a href="#" class="more"><span class="mr-2">+</span>Learn More</a></p>
              </div>
            </div>
          </div>

        </div>

        <div class="row justify-content-center">
          <div class="col-lg-4 text-center">
            <a href="#" class="btn btn-primary py-3 px-4">View All Events</a>
          </div>
        </div>
      </div>
    </div>

    
    <div class="footer">
        <%@include file="tags/footer.jsp" %>
    </div >
    

  </div>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
