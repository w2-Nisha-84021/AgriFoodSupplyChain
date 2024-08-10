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
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        
		int id = Integer.parseInt(request.getParameter("id"));
		/*String selectfield = request.getParameter("selectfield");*/
		String firstname = request.getParameter("firstname");
		/*String lastname = request.getParameter("lastname");	*/	
		String mobileno = request.getParameter("mobileno");
		/*String password = request.getParameter("password");
		String referralcode = request.getParameter("referralcode");*/
		String dob = request.getParameter("dob");		
		String countrySelect = request.getParameter("countrySelect");
		String citySelect = request.getParameter("citySelect");
		String status = "Active";

		Userbean b = new Userbean();
		
		b.setId(id);
		/*b.setSelectfield(selectfield);*/
		b.setFirstname(firstname);
		/*b.setLastname(lastname);*/
		b.setMobileno(mobileno);
	/*	b.setPassword(password);
		b.setReferralcode(referralcode);*/
		b.setDob(dob);
		b.setCountrySelect(countrySelect);
		b.setCitySelect(citySelect);
		b.setStatus(status);

		UserDao dao = new UserDao();

		try {
			if (dao.updateProfile(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('User Profile Successfully Updated...')");
				out.println("location='profile.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('User Profile not updated')");
				out.println("location='EditUserProfile.jsp';");
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
