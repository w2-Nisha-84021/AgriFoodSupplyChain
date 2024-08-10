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

      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp"><img src="assets/img/IFlag.png">India</a></li>
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

<section id="contact">
			<div class="container"> 
				<div class="row">
					<div class="col-md-12">
						<div class="col-lg-12">
							<div class="text-center color-elements">
							
							<h2><b>Order Details</b></h2>
						<br><br>
							</div>
						</div>
						<!-- <div class="col-sm-offset-2 col-lg-6">
						 <form class="subscription-form">
                    <div style="margin-left:100px;margin-right:20px"> -->
                    <table class="table table-bordered" style="color:black">
                    
                     <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from governmentscheme"); 
                    /*  ResultSet rs=st.executeQuery("select user.id,governmentscheme.firstname,user.status from user inner join governmentscheme on user.firstname=governmentscheme.firstname");
                     */
                     //while(rs.next())
                     if(rs.next() == false) {
                    	%>
                    	<h4><b>No Users Present</b></h4>
                    	<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
                    	 <tr  class="danger" style="color:black">
		                    
		                  <!-- <th>ID</th> -->
		                    <th>Scheme Name</th>
		                   <th>Price</th>		                    
		                     <th>Period</th>	                     		                                  
		               <th>Name</th>
		                     <th>Address</th>
		                     <th>Mobile No</th>
		                      <th>Status</th>
		               <!--  <th>Action</th>  --> 
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	<%-- <td><img alt="Profile Pic" class="img-circle" src="Profilepic.jsp?id=<%=rs.getInt(1) %>"  width="100px" height="80px"/></td> --%>
                    	 <td style="color:black"><%=rs.getString(2) %></td>
                    	 <td style="color:black"><%=rs.getString(3) %></td> 
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	 <td style="color:black"><%=rs.getString(5) %> <%=rs.getString(6) %></td>
                    	 <td style="color:black"><%=rs.getString(7) %></td>  
                    	<td style="color:black"><%=rs.getString(8) %></td>  
                         <td style="color:black"><%=rs.getString(9) %></td> 
                    	  <%-- <th><button style="background-color:green"><a style="color:white" href="UpdateGovtSchemeStatus?id=<%=rs.getInt(1)%>&status=<%=rs.getString(9)%>"><%=rs.getString(9)%></a></button></th> 
                    	  --%>
                    	 <%-- <td><a href="DeleteCon?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td> --%>
                    	    
                    	 </TR>                    	 
                    <%count++; }while(rs.next());}%> 
                   
                    </table> </div>    
                  </form>
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