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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style2.css" rel="stylesheet">

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  <!-- =======================================================
  * Template Name: Remember - v4.7.0
  * Template URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
/* * {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}
 */
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
#portfolio{
height:150px;
}
</style>
</head>

<body>
<section id="portfolio" class="portfolio section-bg">
      <div class="container">

 
       <!--  <div class="row" data-aos="fade-up"> -->
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">AgriFood</li>
              <li data-filter=".filter-app">Notification</li>
              <li data-filter=".filter-card">Admin</li>
              <li data-filter=".filter-web"><a href="LogoutCon">Logout</a></li>
            </ul>
          </div>
      <!--   </div> -->

      

      </div>
    </section><!-- End Portfolio Section -->
 
  <!-- ======= Header ======= -->
<!-- <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="Home.jsp">Agritech</a></h1>
        Uncomment below if you prefer to use an image logo
        <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
        <li><a href="Home.jsp"><img src="assets/img/IFlag.png">India</a></li>
          
          <li><a href="ViewUsers.jsp">View Users</a></li> 
          
          <li><a href="LogoutCon">Logout</a></li>
        
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>.navbar

    </div>
  </header> --><!-- End Header -->

 <header id="header">
    <div class="d-flex flex-column">

      <!-- <div class="profile">
        <img src="assets/img/profile-img.jpg" alt="" class="img-fluid rounded-circle">
        <h1 class="text-light"><a href="index.html">Alex Smith</a></h1>
        <div class="social-links mt-3 text-center">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div> -->

      <nav id="navbar" class="nav-menu navbar">
        <ul>
          
          <li><a href="ViewUsers.jsp" class="nav-link scrollto"><i class="bx bx-server"></i> <span> View User</span></a></li>
          <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Product Verification</span></a></li>
      <!--     <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Result</span></a></li> -->
          <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Feedback</span></a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->
  
  <!-- ======= About Section ======= -->
     <section id="contact">
			<div class="container"> 
				<div class="row">
					<div class="col-md-12">
						<div class="col-lg-12">
							<div class="text-center color-elements">
							
							<h2><b>View Users Data</b></h2>
						<br><br>
							</div>
						</div>
						<div class="col-sm-offset-2 col-lg-6">
						 <form class="subscription-form">
                    <div style="margin-left:100px;margin-right:20px">
                    <table class="table table-bordered" style="color:black">
                    
                     <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from user");
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
		                     <!-- <th >Profile Picture</th> -->
		                  <!--  <th>image name</th> -->
		                  <th>Select Field</th>
		                    <th>First Name</th>
		                     <th>Last Name</th>		                    
		                     <th>Mobile No</th>		                     
		                     <th>password</th>
		                     <th>Referral Code</th>
		                     <th>Date Of Birth</th>
		                     <th>State</th>
		                     <th>City</th>
		                     <th>Status</th>
		                    <!--  <th>Action</th> -->
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	<%-- <td><img alt="Profile Pic" class="img-circle" src="Profilepic.jsp?id=<%=rs.getInt(1) %>"  width="100px" height="80px"/></td> --%>
                    	 <td style="color:black"><%=rs.getString(2) %></td>
                    	 <td style="color:black"><%=rs.getString(3) %></td> 
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	 <td style="color:black"><%=rs.getString(5) %></td>
                    	 <td style="color:black"><%=rs.getString(6) %></td>
                    	 <td style="color:black"><%=rs.getString(7) %></td>
                    	 <td style="color:black"><%=rs.getString(8) %></td>
                    	 <td style="color:black"><%=rs.getString(9) %></td>
                    	 <td style="color:black"><%=rs.getString(10) %></td>
          
                    	<%-- <th><a href="UserStatusController?id=<%=rs.getInt(1)%>&status=<%=rs.getString(9)%>"><%=rs.getString(9)%></a></th> --%>
                    	 <td><a href="DeleteCon?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td>
                    	 </TR>                    	 
                    <%count++; }while(rs.next());}%> 
                   
                    </table> </div>    
                  </form>
						</div>
					</div>
				</div>
			</div>
		</section>
     
<!---------------------------------------END Add Catagory--------------------------------------->

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