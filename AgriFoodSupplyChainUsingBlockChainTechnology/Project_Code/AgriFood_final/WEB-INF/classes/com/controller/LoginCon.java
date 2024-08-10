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
 * Servlet implementation class LoginCon
 */
@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String firstname=request.getParameter("firstname");
		String selectfield=request.getParameter("selectfield");
		String mobileno=request.getParameter("mobileno");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao();
	
		Userbean user=dao.CheckUser(selectfield,mobileno, password);
		
		if(user == null) {
			out.println("<script type=\"text/javascript\">");
			 out.println("alert('No Such User Present...')");
			 out.println("location='UserLogin.jsp';");
			 out.println("</script>");
		}
		else if((user.getMobileno()!=null && user.getMobileno()!="") && (user.getPassword()!=null && user.getPassword()!=""))
		{
			
			
			if(user.getSelectfield().equals("Farmer"))
			{
				
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Successful')");
			out.println("location='FarmerPortal.jsp';");
			out.println("</script>");
			out.print("welcome"+firstname);
			HttpSession session=request.getSession();  
	        session.setAttribute("mobileno",user.getMobileno());  
	        session.setAttribute("firstname", user.getFirstname());
	        session.setAttribute("lastname", user.getLastname());
	        session.setAttribute("id", user.getId());	       
	        session.setAttribute("address", user.getAddress());	
	        session.setAttribute("dob", user.getDob());
	        session.setAttribute("citySelect", user.getCitySelect());
	        session.setAttribute("selectfield", user.getSelectfield());
	        
				}else if(user.getSelectfield().equals("Processor"))
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login Successful')");
					out.println("location='ProcessorHome.jsp';");
					out.println("</script>");
					out.print("welcome"+firstname);
					HttpSession session=request.getSession();  
			        session.setAttribute("mobileno",user.getMobileno());  
			        session.setAttribute("firstname", user.getFirstname());
			        session.setAttribute("lastname", user.getLastname());
			        session.setAttribute("address", user.getAddress());	
			        session.setAttribute("dob", user.getDob());
			        session.setAttribute("citySelect", user.getCitySelect());
			        session.setAttribute("selectfield", user.getSelectfield());
			        session.setAttribute("id", user.getId());
				}else if(user.getSelectfield().equals("Distributor"))
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login Successful')");
					out.println("location='DistributorHome.jsp';");
					out.println("</script>");
					out.print("welcome"+firstname);
					HttpSession session=request.getSession();  
			        session.setAttribute("mobileno",user.getMobileno());  
			        session.setAttribute("firstname", user.getFirstname());
			        session.setAttribute("lastname", user.getLastname());
			        session.setAttribute("address", user.getAddress());
			        session.setAttribute("dob", user.getDob());
			        session.setAttribute("citySelect", user.getCitySelect());
			        session.setAttribute("selectfield", user.getSelectfield());
			        session.setAttribute("id", user.getId());
				
				}else if(user.getSelectfield().equals("Retailer"))
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login Successful')");
					out.println("location='RetailerHome.jsp';");
					out.println("</script>");
					out.print("welcome"+firstname);
					HttpSession session=request.getSession();  
			        session.setAttribute("mobileno",user.getMobileno());  
			        session.setAttribute("firstname", user.getFirstname());
			        session.setAttribute("lastname", user.getLastname());
			        session.setAttribute("address", user.getAddress());
			        session.setAttribute("dob", user.getDob());
			        session.setAttribute("citySelect", user.getCitySelect());
			        session.setAttribute("selectfield", user.getSelectfield());
			        session.setAttribute("id", user.getId());
				
				}
				else
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Login Successful')");
					out.println("location='ConsumerHome.jsp';");
					out.println("</script>");
					out.print("welcome"+firstname);
					HttpSession session=request.getSession();  
			        session.setAttribute("mobileno",user.getMobileno());  
			        session.setAttribute("firstname", user.getFirstname());
			        session.setAttribute("lastname", user.getLastname());
			        session.setAttribute("address", user.getAddress());
			        session.setAttribute("dob", user.getDob());
			        session.setAttribute("citySelect", user.getCitySelect());
			        session.setAttribute("selectfield", user.getSelectfield());
			        session.setAttribute("id", user.getId());
				}
		    }
			else {
				request.setAttribute("ErrMsg", "Wait for activation of your account!...");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Wait For Activation')");
				out.println("location='UserLogin.jsp';");
				out.println("</script>");
			}
		
		
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
