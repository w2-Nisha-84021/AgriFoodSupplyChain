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
 * Servlet implementation class ProcessorRawMaterialOrderCon
 */
@WebServlet("/ProcessorRawMaterialOrderCon")
public class ProcessorRawMaterialOrderCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessorRawMaterialOrderCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String pname = request.getParameter("pname");
		String weight = request.getParameter("weight");
		String name = request.getParameter("name");		
		String payment = request.getParameter("payment");
		String accountno = request.getParameter("accountno");
		String ifsc = request.getParameter("ifsc");		
		String uname = request.getParameter("uname");
		String status = "Pending";

		Userbean b = new Userbean();
		
		b.setPname(pname);
		b.setWeight(weight);
		b.setName(name);
		b.setPayment(payment);
		b.setAccountno(accountno);
		b.setIfsc(ifsc);
		b.setUname(uname);		
		b.setStatus(status);

		UserDao dao = new UserDao();

		
		
		try {
			if (dao.InsertProcessorRawMaterialBuy(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Buying Successfully')");
				out.println("location='BuyRawMaterialProcessor.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('UnSuccessful')");
				out.println("location='BuyRawMaterialProcessor.jsp';");
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
