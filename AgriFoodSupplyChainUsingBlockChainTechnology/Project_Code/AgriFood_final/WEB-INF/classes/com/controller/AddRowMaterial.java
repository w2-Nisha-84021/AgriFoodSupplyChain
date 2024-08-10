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
 * Servlet implementation class AddRowMaterial
 */
@MultipartConfig
@WebServlet("/AddRowMaterial")
public class AddRowMaterial extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	InputStream image=null;		
	String imageName="";
	String path=null;
	File upload=null; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRowMaterial() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");		
		String weight = request.getParameter("weight");
		String name = request.getParameter("name");
		String status = "Active";
		
		Userbean b = new Userbean();
		
		ProductDao dao = new ProductDao();
		Part part=request.getPart("file");
		
		if(part!=null)
		{
			image=part.getInputStream();
			System.out.println("is size:"+image.available());
			
			imageName=dao.extractFileName(part);
			System.out.println("name:"+imageName);
		}

		
		
	
		b.setName(name);
		b.setPrice(price);
		b.setWeight(weight);
		b.setImage(image);
		b.setImage_name(imageName);
		b.setPname(pname);
		b.setStatus(status);

		/*ProductDao dao = new ProductDao();*/

		try {
			if (dao.AddRowMaterial(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product Added Successfully')");
				out.println("location='FarmerPortal.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product not added...')");
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
