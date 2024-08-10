<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
  width:700px;
  /* background-color:#FCF3CF; */
} 
 /* .addbutton .card-body {
  width:350px;
}  */

.addbutton .ADDTOCART {
  float: left;
  width: 20%;
  padding: 5px;
  background: #2196F3;
   background-color: #DC7633; 
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}
.addbutton .BUYNOW {
  float: left;
  width: 20%;
  padding: 5px;
  background: #2196F3;
   background-color: #16A085; 
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
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
     
     <form class="example" action="/action_page.php" style="margin:auto;max-width:300px">
  <input type="text" placeholder="Search.." name="search2">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp"><img src="assets/img/IFlag.png">India</a></li>
        <li class="dropdown"><a href="#"><span>All Categories</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Vegetables</a></li>
                  <li><a href="#">Fruits</a></li>                
                </ul>
              </li>         
          <!-- <li><a href="UserLogin.jsp">Login</a></li> 
          <li><a href="UserRegistration.jsp">Register</a></li> -->
        <li><a href="">Add Cart</a></li>        
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 

    <section id="addbutton" class="addbutton">
      <div class="container">
      
      <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from addproduct");
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
                    
		                  <%}%>
                    	
		 <div class="col-md-5">
           <!--  <div class="card mb-3" align="center"> -->
            <div class="card" align="center">
                <div class="card-body"> 
                  <%-- <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString(4) %>
                    </div>
                  </div>
                  <hr> --%>
                  <div class="row">
                    <!-- <div class="col-sm-3">
                      <h6 class="mb-0">Image</h6>
                    </div> -->
                    <div class="col-sm-9 text-secondary">
                    <img src="AddProductView.jsp?id=<%=rs.getInt(1) %>"  width="200px" height="150px"/>
                    </div>
                  </div>
                  <!--  <hr> -->
                  <div class="row">
                    <div class="col-sm-3">
                     <h6 class="mb-0">Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString(4) %>
                    </div>
                  </div>
                  <!-- <hr>  -->
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Price</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString(6) %>
                    </div>
                  </div>
                 <!--  <hr> -->
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Weight</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=rs.getString(7) %>
                    </div>
                  </div>
                  <hr> 
                  
                    <div class="col-sm-12">
                      <a class="ADDTOCART" href="ProductView.jsp">ADD TO CART</a>
                    <a class="BUYNOW" href="ProductView.jsp">BUY NOW</a>
                    </div>
                    </div>
                  
                   <%count++; }while(rs.next());}%> 
          
   
          
            </div>
            
            
          </div>

        </div>
        
        
      
      
     <!--  <div class="text-center"><button type="submit">Add Product</button></div> -->
      </div></section>
    
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