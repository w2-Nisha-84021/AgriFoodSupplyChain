<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Agritech</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Remember - v4.7.0
  * Template URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style type="text/css">
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
   /*  position: relative; */
   /*  display: flex; */
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
</style>
</head>

<body>

 

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="Home.jsp">Agritech</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp">Home</a></li>
          <!-- <li style="color:white;"><b>|</b></li>  -->
          <!-- <li><a href="Login.jsp">Login</a></li> 
          <li style="color:white;"><b>|</b></li>
          <li><a href="Register.jsp">Register</a></li>
          <li style="color:white;"><b>|</b></li> 
          <li><a href="">Careers</a></li> -->
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->


		
		
		<section id="services" class="services">
      <div class="container">
        <div class="row justify-content-between">
         <div class="section-title" data-aos="zoom-in">
          
         <h3><span>Profile</span></h3></div>
         
       
		<!-- <div class="col-lg-6 col-md-6">  -->
              <div class="card mb-3" align="center">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%response.setContentType("text/html");  
				 /* HttpSession sessio=request.getSession(true);   */
	               if(session!=null){  
	               String firstname=(String)session.getAttribute("firstname"); 
	               String lastname=(String)session.getAttribute("lastname");
	                out.print(" "+firstname+"");
	                out.print(" "+lastname+"");}   %>
                    </div>
                  </div>
                  <hr>
               
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile No</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");   
	               if(session!=null){  
	               String mobileno=(String)session.getAttribute("mobileno");  
	                out.print(" "+mobileno+""); }   %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Date of birth</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");   
	               if(session!=null){  
	               String dob=(String)session.getAttribute("dob");  
	                out.print(" "+dob+""); }   %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%response.setContentType("text/html");  
	               if(session!=null){  
	                String citySelect=(String)session.getAttribute("citySelect");  
	                out.print(" "+citySelect+"");}
	              %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Field</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%response.setContentType("text/html");  
	               if(session!=null){  
	                String selectfield=(String)session.getAttribute("selectfield");  
	                out.print(" "+selectfield+"");}
	              %>
                    </div>
                  </div>
                  <!-- <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info " href="Edit&Save.jsp" target="__blank" href="">Edit</a>
                    </div>
                  </div> -->
            
            </div>
          </div>

        </div>
        </div>
        </div>
      
        
       </section> 
		
		
  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>



