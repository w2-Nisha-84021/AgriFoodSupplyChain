<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>AgriFood</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
 <!--  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
  
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


/* input[type=text], input[type=password], input[type=date],input[id=select]{
  
  width: 90%;
  padding: 2px 2px;
  margin: 2px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  align:center;`
}*/SS
input[type=button], input[type=submit], input[type=reset] {
    width: 50%;
	position:relative;
    padding: 5px 22px;
	border-radius:15px;
	background-color:#4CAF50;
	align:center;	
	color: white;
	text-decoration: none; 
    font-size: 17px;
    margin: 4px 2px; 
    cursor: pointer;
}  */
/* input[type=radio]{
 position:relative; 
    padding: 5px 12px;
	border-radius:10px;
	/* align:center; */	
	/* color: white;
	text-decoration: none; 
    font-size: 5px;
     margin: 4px 2px; 
    cursor: pointer;
} */ */
</style>

<script type="text/javascript">
var citiesByState = {
		/* Andaman and Nicobar Islands: ["Port Blair"],
		Andhra Pradesh: ["Adoni","Amaravati","Anantapur","Anantapuram","Bhimavaram","Chittoor","Dharmavaram","Eluru","Gudivada","Guntakal","Guntur","Hindupur","Kadapa","Kakinada","Kavali","Kurnool","Machilipatnam","Madanapalle","Nandyal","Narasaraopet","Nellore","Ongole","Proddatur","Rajahmundry""Srikakulam","Tadepalligudem","Tadipatri","Tenali","Vijayanagaram","Vijayawada","Visakhapatnam"],
 */
 
 Odisha: ["Bhubaneswar","Puri","Cuttack"],
Maharashtra: ["Mumbai","Pune","Nagpur"],
Kerala: ["kochi","Kanpur"]  
}
function makeSubmenu(value) {
if(value.length==0) document.getElementById("citySelect").innerHTML = "<option></option>";
else {
var citiesOptions = "";
for(cityId in citiesByState[value]) {
citiesOptions+="<option>"+citiesByState[value][cityId]+"</option>";
}
document.getElementById("citySelect").innerHTML = citiesOptions;
}
}
function displaySelected() { var country = document.getElementById("countrySelect").value;
var city = document.getElementById("citySelect").value;
alert(country+"\n"+city);
}
function resetSelection() {
document.getElementById("countrySelect").selectedIndex = 0;
document.getElementById("citySelect").selectedIndex = 0;
}
</script>
</head>

<body>

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
         
         <!--  <li><a href="Login.jsp">Login</a></li> 
          
          <li><a href="Register.jsp">Register</a></li>
           -->
          <!-- <li style="color:white;"><b>|</b></li>  -->
        <!--   <li><a href="">Careers</a></li> -->
          <!-- <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header>
  
 
  
  <!-- ======= About Section ======= -->
     <section id="about" class="about" style="background-color: #eee;">
      
      <div class="container">
     
     <div class="row d-flex justify-content-center align-items-center h-100">
     <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
        <!-- <div class="row"> -->
          <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch" data-aos="zoom-in">
          <img src="assets/img/admin1.jpg" width="390px;" height="450px;">
          </div>

          <div class="col-xl-6 col-lg-6 d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <div class="box-heading" data-aos="fade-up">          
             <div class="text-center">
            <h3>Register</h3>
             
              <form action="AdminRegCon" method="post">
              
           
                


                
                <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="Name" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="address" id="address" placeholder="Address" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" placeholder="Mobile No" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="email" id="email" placeholder="Email Id" required>
              </div>
                <div class="form-group mt-1">
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" required>
              </div>
            
          
               <div class="form-group mt-1" align="center">                        
                             
        <input type="Submit" class="about-btn" value="Register"><br>
      <a href="AdminLogin.jsp" style="color:red" >Already Register? Login here!!!</a>
             
        </div>                               
              </form></div>              
                        
              
            </div>           
        </div>

      </div></div></div></div></div>
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