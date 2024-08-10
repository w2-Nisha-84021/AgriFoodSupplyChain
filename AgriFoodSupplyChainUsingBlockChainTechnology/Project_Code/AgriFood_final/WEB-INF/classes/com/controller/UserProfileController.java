package com.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.RegisterBean;
import com.dao.UserDao;



/**
 * Servlet implementation class UserProfileController
 */
@WebServlet("/UserProfileController")
public class UserProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
HttpSession session=request.getSession();
		
		Object obj=session.getAttribute("id");
	    int id=Integer.parseInt(obj.toString());
		System.out.println("id= "+id);
		
		RegisterBean bean=new RegisterBean();
		
		bean.setId(id);
	    
	    UserDao ud=new UserDao();
	    
		ResultSet rs=ud.getDetails(id);
		
		if(rs != null)
		{
			session.setAttribute("rs", rs);
			session.setAttribute("id", id);
	        response.sendRedirect("userdetails.jsp");
		}
		else
		{
			response.sendRedirect("FarmerPortal.jsp");
		}
	}

}
