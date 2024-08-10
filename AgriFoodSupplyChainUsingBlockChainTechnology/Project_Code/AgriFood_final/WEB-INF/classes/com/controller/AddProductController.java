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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bean.Userbean;
import com.dao.ProductDao;

/**
 * Servlet implementation class AddProductController
 */
@MultipartConfig
@WebServlet("/AddProductController")
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InputStream image=null;		
	String imageName="";
	String path=null;
	File upload=null; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		/*String SelectCategory = request.getParameter("SelectCategory");*/
		String name = request.getParameter("name");
		String price = request.getParameter("price");		
		String weight = request.getParameter("weight");
		String manudate = request.getParameter("manudate");
		String expdate = request.getParameter("expdate");
		String mobileno = request.getParameter("mobileno");
		String status = "Pending";
		
		ProductDao dao = new ProductDao();
		
		Userbean b = new Userbean();
		int hashcode=b.hashCode();
		System.out.println("Hashcode value is:"+hashcode);
		
		Part part=request.getPart("file");
		
		if(part!=null)
		{
			image=part.getInputStream();
			System.out.println("is size:"+image.available());
			
			imageName=dao.extractFileName(part);
			System.out.println("name:"+imageName);
		}

		
		
//		b.setSelectCategory(SelectCategory);
		b.setHashcode(hashcode);
		b.setName(name);
		b.setManudate(manudate);
		b.setExpdate(expdate);
		b.setPrice(price);
		b.setWeight(weight);
		b.setImage(image);
		b.setImage_name(imageName);
		b.setMobileno(mobileno);
		b.setStatus(status);

		/*ProductDao dao = new ProductDao();*/
		HttpSession session=request.getSession();  
        session.setAttribute("name",b.getName());  
       

		try {
			if (dao.AddNewProduct(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product Added Successfully')");
				out.println("location='ProcessorHome.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Product not added...')");
				out.println("location='ProcessorHome.jsp';");
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
