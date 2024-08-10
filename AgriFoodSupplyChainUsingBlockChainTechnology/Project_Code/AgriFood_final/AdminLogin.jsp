<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>AgriFood</title>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Remember - v4.7.0
  * Template URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
#about{

  width: 100%;
  height: 81.70vh;
/*   background: url("../img/hero.jpg") top center; */
  background-size: cover;
  position: relative;
}
.midbar .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.midbar .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .midbar .search-container {
    float: none;
  }
  .midbar a, .midbar input[type=text], .midbar .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .midbar input[type=text] {
    border: 1px solid #ccc;  
  }
}


/* input[type=text], input[type=password] {
  
  width: 80%;
  padding: 10px 10px;
  margin: 5px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  align:center;`
} */
  input[type=button], input[type=submit], input[type=reset] {
 
	/*  position:relative; */
    padding: 11px 32px;
	border-radius:15px;
	background-color:#4CAF50;
	align:center;	
	color: white;
	text-decoration: none; 
    font-size: 17px;
    margin: 4px 2px;
    cursor: pointer; 
}  
</style>
</head>

<body>

  
  <!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="Home.jsp">AgriFood</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp">Home</a></li>
         
          <li><a href="UserLogin.jsp">User</a></li> 
          
          <li><a href="AdminLogin.jsp">Admin</a></li>
      
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->


  
  <!-- ======= About Section ======= -->
     <section id="aboutt" class="aboutt" style="background-color: #eee;">
    
      <div class="container">

        <div class="row d-flex justify-content-center align-items-center h-100">
     <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
          <div class="col-xl-6 col-lg-6 video-box d-flex justify-content-center align-items-stretch" data-aos="zoom-in">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
       <img src="assets/img/admin.jpg" width="465px" >
         
         
          </div>

          <div class="col-xl-6 col-lg-6 d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <div class="box-heading" data-aos="fade-up">
              <center><h4>Log In</h4></center>
             <div class="text-center">
            
             
              <form action="AdminLoginCon" method="post">
           <div class="form-group mt-1">           
                <input type="text" class="form-control" name="email" id="email" placeholder="Enter Email ID." required>
                </div>
                <div class="form-group mt-1">
                <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter Password" required>
              </div><br>
               <div class="form-group mt-1">                        
          
                         
       <input type="Submit" value="SignIn" class="about-btn"></div>                       
             </form>
            
           
             
              </div>               
            </div>           
        </div>

      </div></div></div></div></div>
      <br><br>
    </section>

<!--  ======= Footer ======= -->
 <footer id="footer">

   <!--  <div class="footer-top"> -->
       <div class="col-lg-6">
             <div class="contact-info d-flex align-items-left">
     <a href="Home.jsp"><img src="assets/img/logo.png" width="50px" height="50px"></a></i></div>
             </div>
  	   
      
    
  </footer><!-- End Footer -->
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
