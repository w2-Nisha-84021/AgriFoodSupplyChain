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
 * Servlet implementation class PaymenttCon
 */
@WebServlet("/PaymenttCon")
public class PaymenttCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymenttCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
						PrintWriter out = response.getWriter();

						
				String name = request.getParameter("name");		
				String accountno = request.getParameter("accountno");
				String ifsc = request.getParameter("ifsc");
				String status = "Active";
				
				Userbean b = new Userbean();
				
				ProductDao db=new ProductDao();
				
				b.setName(name);
				b.setAccountno(accountno);
				b.setIfsc(ifsc);		
				b.setStatus(status);
				

				try {
					if (db.CreatePaymentt(b)) {
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Payment Done Successfully...')");
						out.println("location='ConsumerHome.jsp';");
						out.println("</script>");
					} else {
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Payment not done..Pls Try Again')");
						out.println("location='ConsumerHome.jsp';");
						out.println("</script>");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
