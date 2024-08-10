<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>AgriTech</title>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 5px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 5px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
 .addbutton .card {
  width:350px;
  /* background-color:#FCF3CF; */
} 
 /* .addbutton .card-body {
  width:350px;
}  */


</style>
</head>

<body>

  <!-- ======= Top Bar ======= -->
 <!--  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+1 5589 55488 55</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </section> -->

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="Home.jsp">AgriTech</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>
     
     <form class="example" action="/action_page.php" style="margin:auto;max-width:300px">
  <input type="text" placeholder="Search.." name="search2">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp"><img src="assets/img/IFlag.png">India</a></li>
       <!--  <li class="dropdown"><a href="#"><span>All Categories</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  
                  <li><a href="#">Vegetables</a></li>
                  <li><a href="#">Fruits</a></li>
                </ul>
              </li> -->
             <!--  <li><a href="ProductE-ShopDetails.jsp"><i class="fa fa-shopping-cart">Cart</i></a></li>  -->
              <li class="dropdown">
           <a style="color:white;"><b>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String firstname=(String)session.getAttribute("firstname");  
	                out.print(" "+firstname+""); }   %></b><i class="bi bi-chevron-down"></i></a>
         <ul> <li><a href="LogoutCon">Logout</a></li> </ul></li>        
         
       <!--  <li><a href="">Add Cart</a></li>     -->    
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 
  <!--   ======= Services Section ======= -->
<section id="testimonials" class="testimonials">
      <div class="container">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/Veg1.jpg" class="testimonial-img" alt="">
                <!-- <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4> -->
                <!-- <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p> -->
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/veg2.jpg" class="testimonial-img" alt="">
                <!-- <h3>Sara Wilsson</h3>
                <h4>Designer</h4> -->
               <!--  <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p> -->
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
               
                <img src="assets/img/Veg3.jpg" class="testimonial-img" alt="">
                <!-- <h3>Jena Karlis</h3>
                <h4>Store Owner</h4> -->
                <!-- <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p> -->
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/Veg4.jpg" class="testimonial-img" alt="">
                <!-- <h3>Matt Brandon</h3>
                <h4>Freelancer</h4> -->
               <!--  <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p> -->
              </div>
            </div>

            

          </div>
          <div class="swiper-pagination"></div>
        </div>
        
        
    
        
        
        

      </div>
    </section>
    
    <!--  -->
    
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title" data-aos="zoom-in">
        
          <h3> <span></span></h3>
          <p></p>
        </div>

        <div class="row">
        <%
                try{
                	
                
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from addproduct");  
                   /*  ResultSet rs=st.executeQuery("select addcategoryauction.id,addcategoryauction.categoryname,addsubcategoryauction.subcategoryname,addsessiondateauction.date,addsessiontimeauction.time,addcategoryauction.status from addcategoryauction inner join addsubcategoryauction on addcategoryauction.cat=addsubcategoryauction.cat inner join addsessiondateauction on addcategoryauction.cat=addsessiondateauction.cat inner join addsessiontimeauction on addcategoryauction.cat=addsessiontimeauction.cat");
                     */
                    //while(rs.next())
                    	
                    while(rs.next()) {
                   	%>
                   	
                  <div class="col-lg-4 col-md-6">
                   	
            <div class="box recommended" data-aos="zoom-in" data-aos-delay="100">
              <!-- <span class="recommended-badge"> -->
                        </button></span>
                         
              <h4><td><img alt="Profile Pic" src="NewProductPic.jsp?id=<%=rs.getInt(1) %>"  width="150px" height="150px"/></td>
                    	 </h4>
              Name: <%=rs.getString(5) %><br>
              Price: <%=rs.getString(8) %><br>             
              Weight: <%=rs.getString(9) %>
              <div class="btn-wrap">
          
               <button style="background-color:green;"><a style="color:white;" href="ProductE-ShopDetails.jsp?name=<%=rs.getString(5)%>"> Add To Cart</a></button>
              
              </div>
            </div>
          </div>
        
       
                   	
                   	<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>

          

          


        </div>

      </div>
    </section><!-- End Pricing Section --> 
      
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