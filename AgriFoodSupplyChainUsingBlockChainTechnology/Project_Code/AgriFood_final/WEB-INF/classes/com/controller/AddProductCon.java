package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.Userbean;
import com.dao.ProductDao;


/**
 * Servlet implementation class AddProductCon
 */
@MultipartConfig
@WebServlet("/AddProductCon")
public class AddProductCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	InputStream image=null;		
	String imageName="";
	String path=null;
	File upload=null; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String SelectCategory = request.getParameter("SelectCategory");
		String name = request.getParameter("name");
		String price = request.getParameter("price");		
		String weight = request.getParameter("weight");
		String manudate = request.getParameter("manudate");
		String expdate = request.getParameter("expdate");
		
		String status = "Active";
		
		ProductDao dao = new ProductDao();
		Part part=request.getPart("file");
		
		if(part!=null)
		{
			image=part.getInputStream();
			System.out.println("is size:"+image.available());
			
			imageName=dao.extractFileName(part);
			System.out.println("name:"+imageName);
		}

		Userbean b = new Userbean();
		
		
		b.setSelectCategory(SelectCategory);
		b.setName(name);
		b.setPrice(price);
		b.setWeight(weight);
		b.setImage(image);
		b.setImage_name(imageName);
		b.setManudate(manudate);
		b.setExpdate(expdate);
		b.setStatus(status);

		/*ProductDao dao = new ProductDao();*/

		try {
			if (dao.AddProduct(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product Added Successfully')");
				out.println("location='E-Market.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product not added...')");
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
