package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Userbean;
import com.dao.UserDao;

/**
 * Servlet implementation class AdminLoginCon
 */
@WebServlet("/AdminLoginCon")
public class AdminLoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
			
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			
			if(email.equals("admin@gmail.com") && pass.equals("Admin@123"))
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Login Successful')");
				out.println("location='AdminHome.jsp';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid Credentials.......')");
				out.println("location='AdminLogin.jsp';");
				out.println("</script>");
			}
		/*response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao();
	
		Userbean user=dao.CheckAdmin(email, password);
		
		if(user == null) {
			out.println("<script type=\"text/javascript\">");
			 out.println("alert('No Such User Present...')");
			 out.println("location='AdminLogin.jsp';");
			 out.println("</script>");
		}
		else if((user.getEmail()!=null && user.getEmail()!="") && (user.getPassword()!=null && user.getPassword()!=""))
		{
			
			
			if(user.getStatus().equals("Active"))
			{
				
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Successful')");
			out.println("location='AdminHome.jsp';");
			out.println("</script>");
			out.print("welcome"+name);
			HttpSession session=request.getSession();  
	        session.setAttribute("mobileno",user.getMobileno());  
	        session.setAttribute("name", user.getName());
	        
	        session.setAttribute("id", user.getId());	       
	        session.setAttribute("address", user.getAddress());	
	        
	        
	        
			}
		    }
			else {
				request.setAttribute("ErrMsg", "Wait for activation of your account!...");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Wait For Activation')");
				out.println("location='AdminLogin.jsp';");
				out.println("</script>");
			}
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
