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
 * Servlet implementation class CreateBatchCon
 */
@WebServlet("/CreateBatchCon")
public class CreateBatchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateBatchCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		/*String Batchno = request.getParameter("Batchno");*/		
		String batchname = request.getParameter("batchname");		
		String prodate = request.getParameter("prodate");
		String bestbefore = request.getParameter("bestbefore");
		String profarm = request.getParameter("profarm");
		String quality = request.getParameter("quality");
		String pric = request.getParameter("pric");
		String wt = request.getParameter("wt");
		String mobileno = request.getParameter("mobileno");
		String status = "Send";
		String statuss = "Send";
		
		Userbean b = new Userbean();
		
		
		int hashcode=b.hashCode();
		System.out.println("hashcode value is:"+hashcode);
		
		ProductDao db=new ProductDao();
		
		b.setHashcode(hashcode);
		b.setBatchname(batchname);
		b.setProdate(prodate);
		b.setBestbefore(bestbefore);
		b.setProfarm(profarm);
		b.setQuality(quality);
		b.setPric(pric);
		b.setWt(wt);
		b.setMobileno(mobileno);
		b.setStatus(status);
		b.setStatuss(statuss);

		try {
			if (db.CreateBatch(b)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Create Batch')");
				out.println("location='ProcessorHome.jsp';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Batch not created')");
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
