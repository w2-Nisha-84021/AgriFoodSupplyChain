package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Userbean;
import com.dao.ProductDao;

/**
 * Servlet implementation class CreateNewOrderCon
 */
@WebServlet("/CreateNewOrderCon")
public class CreateNewOrderCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateNewOrderCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

			
		String orderno = request.getParameter("orderno");		
		String ordername = request.getParameter("ordername");
		String batchno = request.getParameter("batchno");
		String productid = request.getParameter("productid");
		String fieldm = request.getParameter("fieldm");
		String comment = request.getParameter("comment");
		String mobileno = request.getParameter("mobileno");
		String status = "Pending";
		
		Userbean b = new Userbean();
		
		ProductDao db=new ProductDao();
		
		b.setOrderno(orderno);
		b.setOrdername(ordername);
		b.setBatchno(batchno);
		b.setProductid(productid);
		b.setFieldm(fieldm);
		b.setComment(comment);
		b.setMobileno(mobileno);
		b.setStatus(status);
		
		try {
			if (db.CreateNewOrder(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Create New Order')");
				out.println("location='RetailerHome.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Order Not created')");
				out.println("location='RetailerHome.jsp';");
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
