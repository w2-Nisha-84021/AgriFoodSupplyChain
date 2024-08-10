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
 * Servlet implementation class AddComplaintCon
 */
@WebServlet("/AddComplaintCon")
public class AddComplaintCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComplaintCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String address = request.getParameter("address");
		String mobileno = request.getParameter("mobileno");
		String compagains = request.getParameter("compagains");
		String reasonforcomp = request.getParameter("reasonforcomp");
		String status = "Active";

		Userbean b = new Userbean();
		
		
		b.setFirstname(firstname);
		b.setLastname(lastname);
		b.setMobileno(mobileno);
		b.setAddress(address);
		b.setReasonforcomp(reasonforcomp);
		b.setCompagains(compagains);
		b.setStatus(status);

		UserDao dao = new UserDao();

		try {
			if (dao.AddComplaint(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Complaint Added Successfully...')");
				out.println("location='Home.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Complaint not added...pls try again...')");
				out.println("location='Home.jsp';");
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
