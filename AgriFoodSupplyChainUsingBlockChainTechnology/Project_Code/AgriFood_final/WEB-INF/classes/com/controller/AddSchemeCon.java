package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Userbean;
import com.dao.UserDao;

/**
 * Servlet implementation class AddSchemeCon
 */
@WebServlet("/AddSchemeCon")
public class AddSchemeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSchemeCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String period = request.getParameter("period");		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String address = request.getParameter("address");
		String mobileno = request.getParameter("mobileno");				
		String status = "Pending";

		Userbean b = new Userbean();
		
		b.setName(name);
		b.setPrice(price);
		b.setPeriod(period);
		b.setFirstname(firstname);
		b.setLastname(lastname);
		b.setAddress(address);
		b.setMobileno(mobileno);
		b.setStatus(status);

		UserDao dao = new UserDao();

		try {
			if (dao.AddScheme(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Apply Successfully...')");
				out.println("location='FarmerPortal.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Not Apply..Pls try again...')");
				out.println("location='FarmerPortal.jsp';");
				out.println("</script>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
