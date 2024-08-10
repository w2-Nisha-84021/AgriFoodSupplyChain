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
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
   /*  position: relative; */
   /*  display: flex; */
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #D7E8E8;
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

#services .btn {
  font-family: "Raleway", sans-serif;
  font-weight: 500;
  font-size: 16px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 8px 28px;
  border-radius: 50px;
  transition: 0.5s;
  margin: 10px;
  border: 2px solid #8fc04e;
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
  background-color:#0B7E51;
  color: #fff;
}
/* input[type=text], input[type=password], input[type=date],input[id=select]{
  
  width: 90%;
  padding: 2px 2px;
  margin: 2px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  align:center;
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
        <!-- <li><a href="Home.jsp"><img src="assets/img/IFlag.png">India</a></li> -->        
          <li><a href="MyProfile.jsp">My Profile</a></li>   
          <!-- <li><a href="">Live Trading</a></li>        
          <li><a href="">Mandi Rates</a></li>
          <li><a href="GovernmentScheme.jsp">Government Scheme</a></li> -->
          <li><a href="E-Market.jsp">E-Market</a></li>
        
          <!-- <li class="dropdown"><a href="#"><span>Complaint</span> <i class="bi bi-chevron-down"></i></a>
            <ul>       
              <li><a href="AddComplaint.jsp">Add Complaint</a></li>
              
            </ul> -->
          </li>
         <!--  <li><a href="CreateNewOrder.jsp">Create New Order</a></li> -->
          <li><a href="">View Feedback</a></li>
          <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String firstname=(String)session.getAttribute("firstname");  
	                out.print(" "+firstname+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
               <ul>
	                <li><a href="LogoutCon">Logout</a></li>
	                </ul>
          </ul>
          <!-- <ul style="text-align:right">
				
				</ul> -->
          
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header>
  
  
 <!--   ======= Services Section ======= -->   
    <section id="services" class="services">
      <div class="container">
        <!-- <div class="row justify-content-between"> -->
         
                  
         <div class="col-lg-6">
        <img alt="" src="assets/img/retailer.jpg" height="450px" width="500px">
          
            <!-- </div> -->
          </div>

        <div class="col-lg-6">
        <div class="text-center">
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="SendBatchRetailer.jsp" style="color:white;">Received Batch</a></button><br>
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="ViewRawMaterial1.jsp" style="color:white;">Buy Material From Farmer</a></button><br>
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="ViewRawMaterial2.jsp" style="color:white;">View Buy Raw Material</a></button><br>
          
          
           <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;" data-toggle="modal" data-target="#myModal">Add Category</button><br>
          
           <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="ViewCategory.jsp" style="color:white;">View Category</a></button><br>
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;" data-toggle="modal" data-target="#myModal1">Add Sub-Category</button><br>
          
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="ViewSubCat.jsp" style="color:white;">View Sub-Category</a></button><br>
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;" data-toggle="modal" data-target="#myModal2">Add Product</button><br>
          <button type="button" class="btn btn-info btn-lg" style="height:40px; width:250px; background-color:black;"><a href="ViewProductRetailer.jsp" style="color:white;">View Product</a></button><br>
                                                                                                                               
        </div></div></div>
     
        
        <!---------------------------------------Add Category---------------------------------------> 
 <div class="container">
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title">Add Category</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddCategoryCon" method="post">
            
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="categoryname" id="categoryname" placeholder="Enter Category Name" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Category"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
      
          
        
        <!---------------------------------------Add Sub-Category---------------------------------------> 
 <div class="container">
 
   
  <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title">Add Sub-Category</h4>
        </div>
        <div class="modal-body">
    
             <form action="AddSubCatCon" method="post" align="center">
              
                <div class="form-group mt-1">
            
            <select id="categoryname" name="categoryname" class="form-group mt-1">
            <option>Select Category</option>

                <%
                try{
                	
                
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from addcategory"); 
                  //while(rs.next())
                    while(rs.next()) {
                   	%>
                   	<option><%=rs.getString("categoryname")%></option>
                   	<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>
                </select>  </div>
                
                <div class="form-group mt-1">
                <input type="text" class="form-control" name="subcatname" id="subcatname" placeholder="Enter Sub-Category Name" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="mobileno" id="mobileno" value="${mobileno}" readonly>
              </div>   
              
               <div class="form-group mt-1" align="center">                        
                             
        <input type="Submit" class="services-btn" value="Add Sub-Category"><br>
        
  </div></form>

</div>

        <div class="modal-footer">
          <button type="button" class="btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

     <!---------------------------------------Add Product---------------------------------------> 
 <div class="container">
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          
          <h4 class="modal-title">Add Product</h4>
        </div>
        <div class="modal-body">
    
              <form action="AddProductCon" method="post" enctype="multipart/form-data">
              
               <div class="form-group mt-1">
           
                <select id="SelectCategory" name="SelectCategory" class="form-group mt-1">
            <option>Select Category</option>

                <%
                try{
                	
                
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from addcategory"); 
                  //while(rs.next())
                    while(rs.next()) {
                   	%>
                   	<option><%=rs.getString("categoryname")%></option>
                   	<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>
                </select>  </div>
                <div class="form-group mt-1">
              <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
               <div class="form-group mt-1">
                <input type="text" class="form-control" name="name" id="name" placeholder="Product Name" required>
              </div>
              <div class="form-group mt-1">
              <label>Manufacturing Date</label>
                <input type="date" class="form-control" name="manudate" id="manudate" placeholder="Manufacturing date" required>
              </div>
              <div class="form-group mt-1">
              <label>Exp Date</label>
                <input type="date" class="form-control" name="expdate" id="expdate" placeholder="Expiry Name" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="Price" required>
              </div>
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="weight" id="weight" placeholder="weight" required>
              </div>
              
               
               
               
              <%-- <div class="form-group mt-1">
              <%
                try{
                	
                
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from addnewproduct"); 
                  //while(rs.next())
                    while(rs.next()) {
                   	%>
                   	
                   <input type="file" name="file" class="form-control custom-labels" /> 
               </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="imagename" id="imagename" value="<%=rs.getString("imagename")%>" readonly>
                
                    	 
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="price" id="price" placeholder="Price" required>
              </div>
              
              <div class="form-group mt-1">
                <input type="text" class="form-control" name="weight" id="weight" placeholder="weight" required>
              </div>
              <% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %> --%> 
                  <div class="text-center">        
              <input type="Submit" class="services-btn" value="Add Product"><br>
                  </div>                 
              </form>

</div>

        <div class="modal-footer">
          <button type="button" class="btn" data-dismiss="modal">Close</button>
        </div>
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