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

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- =======================================================
  * Template Name: Remember - v4.7.0
  * Template URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<style type="text/css">
.govt .govt-btn {
  font-family: "Raleway", sans-serif;
  font-weight: 600;
  font-size: 16px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 8px 28px;
  border-radius: 25px;
  transition: 0.5s;
  margin-top: 10px;
  border: 2px solid #fff;
  background-color:#0B7E51;
  color: #fff;
}
.services .services-btn {
  font-family: "Raleway", sans-serif;
  font-weight: 600;
  font-size: 16px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 8px 28px;
  border-radius: 25px;
  transition: 0.5s;
  margin-top: 10px;
  border: 2px solid #fff;
  background-color:#BA4A00;
  color: #fff;
}

.services .servicess-btn {
  font-family: "Raleway", sans-serif;
  font-weight: 600;
  font-size: 16px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 8px 28px;
  border-radius: 25px;
  transition: 0.5s;
  margin-top: 10px;
  border: 2px solid #fff;
  background-color:#000000;
  color: #fff;
}
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
        <h1 class="text-light"><a href="Home.jsp">AgriFood</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="ViewGovtScheme.jsp">View Scheme Details</a></li>
        <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String firstname=(String)session.getAttribute("firstname");  
	                out.print(" "+firstname+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
               <ul>
	                <li><a href="LogoutCon">Logout</a></li>
	                </ul>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

<!--  ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/Paramparagat-Krishi-Vikas-Yojana-PKVY.jpg" class="" alt="" width="40%" height="40%">
                <h3>Paramparagat Krishi Vikas Yojna (PKVY)</h3>
               <!--  <h4>Ceo &amp; Founder</h4> -->
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Parampragat Krishi Vikas Yojana (PKVY) is one of the important government schemes which encourages farmers for traditional and organic farming in India. Under the scheme, the Government of India provides a financial assistance to the farmers of Rs 50,000 per hectare every three years for organic inputs, certification, labelling, packaging, transportation and marketing of organic produce. The scheme focuses on reducing the ill effects of overuse of fertilisers and agrochemicals by promoting organic manures, bio-fertilisers and bio-pesticides.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/Pradhan-Mantri-Fasal-Bima-Yojana-PMFBY.jpg" class="" alt="" width="40%" height="40%">
                <h3>Pradhan Mantri Fasal Bima Yojana (PMFBY)</h3>
               <!--  <h4>Designer</h4> -->
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  The extreme weather conditions such as droughts, floods and hailstorms cause crop failures and financial loss to the farmers every year. And therefore, to save them from these ill effects, the Government, by merging all previous crop insurance schemes, launched Pradhan Mantri Fasal Bima Yojana (PMFBY) from Kharif 2016 season with the aim to support production in agriculture by providing an affordable crop insurance system.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/Pradhan-Mantri-Krishi-Sinchai-Yojana-PMKSY.jpg" class="" alt="" width="40%" height="40%">
                <h3>PM Kisan Maan Dhan Yojana</h3>
                <!-- <h4>Store Owner</h4> -->
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  
                  Government has launched the Pradhan Mantri Kisan Maan DhanYojana (PM-KMY) on 12.9.2019 with a view to provide social security to Small and Marginal Farmers in their old age when they have no means of livelihood and minimal or no savings to take care of their expenses.
                  
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/Micro-Irrigation-Fund-scheme.jpg" class="" alt="" width="40%" height="40%">
                <h3>Pradhan Mantri Kisan Samman Nidhi</h3>
                <!-- <h4>Freelancer</h4> -->
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Pradhan Mantri Kisan Samman Nidhi (PM-KISAN) is a new Central Sector Scheme to provide income support to all landholding farmers' families in the country to supplement their financial needs for procuring various inputs related to agriculture and allied activities as well as domestic needs.

                 
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->
 <!--------------------------------------------------------------->   
     <section id="govt" class="govt">
      <div class="container">
      <div class="text-center">
      <table class="table table-bordered">
     
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Scheme Name</th>
      <th scope="col">Scheme Nidhi</th>
      <th scope="col">Scheme Amount Period</th>
      <th scope="col">Apply for Scheme</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Paramparagat Krishi Vikas Yojna</td>
      <td>50K</td>
      <td>3 Years</td>    
      <!-- <td><a href="GovtScheme.jsp"><button type="button" class="govt-btn">Apply</button></a></td>
       -->
        <td><button type="button" class="govt-btn" data-toggle="modal" data-target="#myModal">Apply</button></td>
      
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Pradhan Mantri Fasal Bima Yojana</td>
      <td>1 Lakh</td>
      <td>10 years</td>
      <!-- <td><button type="button" class="govt-btn" href="GovtScheme.jsp">Apply</button></td>          
       -->
        <td><button type="button" class="govt-btn" data-toggle="modal" data-target="#myModal1">Apply</button></td>
      
    </tr>
    
    <tr>
    <th scope="row">3</th>
      <td>PM Kisan Maan Dhan Yojana</td>
      <td>3,000/-</td>
      <td>Till Age 60</td>
      <!-- <td><button type="button" class="govt-btn" href="GovtScheme.jsp">Apply</button></td>          
       -->
        <td><button type="button" class="govt-btn" data-toggle="modal" data-target="#myModal2">Apply</button></td>
      
    </tr>
    <tr>
    <th scope="row">4</th>
      <td>Pradhan Mantri Kisan Samman Nidhi</td>
      <td>6000 per annum per family(3 installment 2000)</td>
      <td>1 Year</td>
      <!-- <td><button type="button" class="govt-btn" href="GovtScheme.jsp">Apply</button></td> -->
      <td><button type="button" class="govt-btn" data-toggle="modal" data-target="#myModal3">Apply</button></td>
      
    </tr>
    
    
  </tbody>
</table>
      </div>
      </div>
      </section>
    
<!--------------------------------------------------------------->  
<!---------------------------------------Add Scheme1---------------------------------------> 
 <section id="services" class="services">
     
 <div class="container">
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title">Add Scheme</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddSchemeCon" method="post">
              
             <!--  <div class="form-group mt-1">
                   <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
               -->
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="Paramparagat Krishi Vikas Yojna" value="Paramparagat Krishi Vikas Yojna" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="50K" value="50K" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="period" id="period" placeholder="3 Years" value="3 Years" readonly>
              </div>
              
              <div class="form-group mt-1">
                
              <input type="text" class="form-control" name="firstname" id="firstname" value="${firstname}" readonly>
              
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="lastname" id="lastname" value="${lastname}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="address" id="address" value="${citySelect}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Scheme"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="servicess-btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
     <!--   </section>  -->
          
<!---------------------------------------END Add Scheme1---------------------------------------> 

<!---------------------------------------Add Scheme2---------------------------------------> 
 <!-- <div class="container"> -->
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title">Add Scheme</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddSchemeCon" method="post" enctype="multipart/form-data">
              
             <!--  <div class="form-group mt-1">
                   <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
               -->
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="Pradhan Mantri Fasal Bima Yojana" value="Pradhan Mantri Fasal Bima Yojana" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="1 Lakh" value="1 Lakh" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="period" id="period" placeholder="10 Years" value="10 Years" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="firstname" id="firstname" value="${firstname}" readonly>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="lastname" id="lastname" value="${lastname}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="Address" id="Address" value="${citySelect}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Scheme"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="servicess-btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
<!-- </div> -->
      <!--  </section>  -->
          
<!---------------------------------------END Add Scheme2---------------------------------------> 
   
<!---------------------------------------Add Scheme3---------------------------------------> 
<!--  <div class="container"> -->
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title">Add Scheme</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddSchemeCon" method="post" enctype="multipart/form-data">
              
             <!--  <div class="form-group mt-1">
                   <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
               -->
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="PM Kisan Maan Dhan Yojana" value="PM Kisan Maan Dhan Yojana" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="3,000" value="3000" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="period" id="period" placeholder="Till Age 60" value="Till Age 60" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="firstname" id="firstname" value="${firstname}" readonly>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="lastname" id="lastname" value="${lastname}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="Address" id="Address" value="${citySelect}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Scheme"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="servicess-btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  

<!---------------------------------------END Add Scheme3--------------------------------------->
<!---------------------------------------Add Scheme4---------------------------------------> 
<!--  <div class="container"> -->
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title">Add Scheme</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddSchemeCon" method="post" enctype="multipart/form-data">
              
             <!--  <div class="form-group mt-1">
                   <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
               -->
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="Pradhan Mantri Kisan Samman Nidhi" value="Pradhan Mantri Kisan Samman Nidhi" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="6000 per annum per family(3 installment 2000)" value="6000 per annum per family(3 installment 2000)" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="period" id="period" placeholder="1 Years" value="1 Years" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="firstname" id="firstname" value="${firstname}" readonly>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="lastname" id="lastname" value="${lastname}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="Address" id="Address" value="${citySelect}" readonly>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Scheme"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="servicess-btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
<!---------------------------------------END Add Scheme4---------------------------------------> 
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