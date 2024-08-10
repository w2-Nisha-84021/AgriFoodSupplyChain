<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserHome</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <%
       response.setHeader("Cache-Control", "no-cache, no-store");
       response.setHeader("Pragma", "no-cache");
       response.setHeader("Expires","0");
     
       String uemail=(String)session.getAttribute("email");
       if(uemail!=null)
        {
   %>
  <%
}
else
{
  response.sendRedirect("userlogin.jsp");	
}
%>
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <strong>Email: </strong><%=uemail %>
                    &nbsp;&nbsp;
                    <strong>Support: </strong>+91-966-530-0820
                </div>

            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
     		<div class="left-div">
    			<div class="user-settings-wrapper">
				 	<h1 style="color: white">  PREDICTION OF CROP YIELD AND SUITABLE CROP</h1>        
                </div>
            </div>
        </div>
    </div>
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a  href="userhome.jsp">Home</a></li>
                            <li><a href="UserProfileController">MyProfile</a></li>
                            <li><a href="add_details.jsp">UploadImage</a></li>
                            <li><a href="LogoutServlet">Logout</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
            <div class="col-md-10">
     
      <br>
      <br>
      <h2 align="center" style="color:maroon;font:bold;">MY PROFILE</h2>
      <br>
      <br>
      <div class="col-md-2"></div>
 <table border="1"  align="center" class="col-md-12" >
<thead>
      
	<tr >
		<th style="width: 50px"> <center>ID</center></th>
		<th style="width: 70px"> <center>Name</center></th>
		<th style="width: 70px"> <center>Address</center></th>
		<th style="width: 70px"> <center>Email</center></th>
		<th style="width: 80px"> <center>Mob</center></th>
		
		
	</tr>
</thead>
<tbody>
               <%
               try
                { 
            	 // Object obj=session.getAttribute("rs");
                  ResultSet rs=(ResultSet)session.getAttribute("rs");
              
                while(rs.next())
                {
                %>
              <tr>
		         <td style="color:green"><center><%=rs.getInt(1) %></center></td>
		         <td style="color:green"><center><%=rs.getString(2) %></center></td>
		         <td style="color:green"><center><%=rs.getString(3) %></center></td>
		         <td style="color:green"><center><%=rs.getString(4) %></center></td>
		         <td style="color:green"><center><%=rs.getString(5) %></center></td>
		        
		      </tr>   
               <%
                
                }
            
               }
               catch(Exception e)
               { 
           
                 out.println("Unable to connect to database.");
                }
              %>  
</tbody> 
</table>  
      </div>
         
            </div>
         </div>
     </div>
                
     <footer>
	
	<div>
		<div class="container">
			<div class="row">
			www.farmerbuddy.com 
			</div>
		</div>
	</div>
	</footer>           
             
    <!-- CONTENT-WRAPPER SECTION END-->
  
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
