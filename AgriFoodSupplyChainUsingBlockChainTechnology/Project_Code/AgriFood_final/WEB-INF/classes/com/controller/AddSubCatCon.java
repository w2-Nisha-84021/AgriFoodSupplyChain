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
 * Servlet implementation class AddSubCatCon
 */
@WebServlet("/AddSubCatCon")
public class AddSubCatCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubCatCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String categoryname = request.getParameter("categoryname");
		String mobileno = request.getParameter("mobileno");
		String subcatname = request.getParameter("subcatname");
		String status = "Active";

		Userbean b = new Userbean();
		
		b.setCategoryname(categoryname);
		b.setSubcatname(subcatname);
		b.setMobileno(mobileno);
		b.setStatus(status);

		/*request.setAttribute("subcategoryname", b.getSubcatname());*/
		ProductDao dao = new ProductDao();

		try {
			if (dao.AddSubCategory(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Sub-Category added Successfully...')");
				out.println("location='RetailerHome.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Sub-Category not added...')");
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
