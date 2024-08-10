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
 * Servlet implementation class FeedBackCon
 */
@WebServlet("/FeedBackCon")
public class FeedBackCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedBackCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");		
		String message = request.getParameter("message");
	
		String status = "Active";

		Userbean b = new Userbean();
		
		b.setName(name);
		b.setEmail(email);
		b.setSubject(subject);
		b.setMessage(message);
		b.setStatus(status);

		UserDao dao = new UserDao();

		try {
			if (dao.InsertFeedback(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Submited Successfully')");
				out.println("location='Feedback.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('UnSuccessful')");
				out.println("location='Feedback.jsp';");
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
