package com.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algo.Encryptor;
import com.algo.MD5;
import com.bean.Userbean;
import com.dao.UserDao;

/**
 * Servlet implementation class UserRegCon
 */
@WebServlet("/UserRegCon")
public class UserRegCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String selectfield = request.getParameter("selectfield");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");		
		String mobileno = request.getParameter("mobileno");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");		
		String countrySelect = request.getParameter("countrySelect");
		String citySelect = request.getParameter("citySelect");
		String status = "Active";

		Userbean b = new Userbean();
		
		b.setSelectfield(selectfield);
		b.setFirstname(firstname);
		b.setLastname(lastname);
		b.setMobileno(mobileno);
		b.setPassword(password);
		b.setDob(dob);
		b.setCountrySelect(countrySelect);
		b.setCitySelect(citySelect);
		b.setStatus(status);

		UserDao dao = new UserDao();

		MD5 md5=new MD5();
		String hashvalue=md5.generate(selectfield);
		String filename=selectfield+".txt";
	      File myObj = new File("D:\\Nodes\\User\\"+filename+hashvalue);
	      if (myObj.createNewFile()) {
	        System.out.println("File created: " + myObj.getName());
	      } else {
	        System.out.println("File already exists.");
	      }
	      
	      FileWriter myWriter = new FileWriter("D:\\Nodes\\User\\"+filename+hashvalue);
	      myWriter.write("Distributor Details-"+"selectfield:"+selectfield+","+"firstname:"+firstname+","+"lastname:"+lastname+",dob:"+dob+",countrySelect:"+countrySelect+",citySelect:"+citySelect+",Mobile No:"+mobileno+"");
	      myWriter.close();
	      
	      Encryptor bfe=new Encryptor();
			
			try {
				
				bfe.encrypt("D:\\Nodes\\User\\"+filename+hashvalue);
				
				  
			} catch (Exception e1) {
				
				e1.printStackTrace();
			}
		
		try {
			if (dao.InsertUserData(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Registration Successful')");
				out.println("location='UserLogin.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Registration UnSuccessful')");
				out.println("location='UserRegistration.jsp';");
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
