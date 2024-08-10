package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.blockchain.ETHconnect;
import com.bean.Userbean;
import com.connection.DBConnection;

public class ProductDao {
	
	public void contractCall() throws Exception {
		ETHconnect.txn();
	}
	
	Connection connection = null;
	Boolean resultStatus = Boolean.FALSE;
	static PreparedStatement ps;
	ResultSet rs;
	Statement st = null;
	String sql;
	static boolean flag = false;

	public boolean AddProduct(Userbean b) throws Exception {
		sql = "insert into addproduct(SelectCategory,image,imagename,name,manudate,expdate,price,weight,status) values(?,?,?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getSelectCategory());
			ps.setBlob(2, b.getImage());
			ps.setString(3, b.getImage_name());
			ps.setString(4, b.getName()); 
			ps.setString(5, b.getManudate());
			ps.setString(6, b.getExpdate());
			ps.setString(7, b.getPrice());
			ps.setString(8, b.getWeight());			
			ps.setString(9, b.getStatus());
	
			int index = ps.executeUpdate();

			if (index > 0) {
				flag = true;
				contractCall();
			} else {
				flag = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return flag;
	}

	public String extractFileName(javax.servlet.http.Part part) {
		final String partHeader = part.getHeader("content-disposition");
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	            return content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
		return null;
	}
	
public boolean DeleteProduct(int id) throws Exception {
		
		String sql="delete from addproduct where id='"+id+"'";
		 Connection con=DBConnection.getConnection();
		 try {
			ps=con.prepareStatement(sql);
			int index =ps.executeUpdate();
			if(index>0)
			{
				flag=true;
				contractCall();
			}
			else
			{
				flag=false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
			return flag;
	}

public boolean AddRowMaterial(Userbean b) throws Exception {
	sql = "insert into rowmaterial(image,imagename,pname,price,weight,name,status) values(?,?,?,?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		
		ps.setBlob(1, b.getImage());
		ps.setString(2, b.getImage_name());
		ps.setString(3, b.getPname()); 
		ps.setString(4, b.getPrice());
		ps.setString(5, b.getWeight());	
		ps.setString(6, b.getName());
		ps.setString(7, b.getStatus());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean AddNewProduct(Userbean b) throws Exception {
	sql = "insert into addnewproduct(hashcode,image,imagename,name,manudate,expdate,price,weight,mobileno,status) values(?,?,?,?,?,?,?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setInt(1, b.getHashcode());
		ps.setBlob(2, b.getImage());
		ps.setString(3, b.getImage_name());
		ps.setString(4, b.getName()); 
		ps.setString(5, b.getManudate());
		ps.setString(6, b.getExpdate());
		ps.setString(7, b.getPrice());
		ps.setString(8, b.getWeight());	
		ps.setString(9, b.getMobileno());
		ps.setString(10, b.getStatus());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean UpdateProductStatus(int id, String status) throws Exception {
	
		if(status.equalsIgnoreCase("Approve"))
			status="Pending";
		else
			status="Approve";
		
		String sql="update addnewproduct set status=? where id=?";
		
		try {
			ps=DBConnection.getConnection().prepareStatement(sql);
			ps.setString(1, status);
			ps.setInt(2, id);
			
			int index=ps.executeUpdate();
			if(index>0)
			{
				flag=true;
				contractCall();
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
}

public ResultSet SelectProduct() {
	ResultSet rs= null;
	String sql ="Select * from addnewproduct";
	try {
		PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
		rs = pstmt.executeQuery();			
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return rs;
}

public boolean CreateBatch(Userbean b) throws Exception {
	sql = "insert into createbatch(hashcode,batchname,prodate,bestbefore,profarm,quality,pric,wt,mobileno,status,statuss) values(?,?,?,?,?,?,?,?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setInt(1, b.getHashcode());
		ps.setString(2, b.getBatchname());
		ps.setString(3, b.getProdate());
		ps.setString(4, b.getBestbefore()); 
		ps.setString(5, b.getProfarm());
		ps.setString(6, b.getQuality());
		ps.setString(7, b.getPric());
		ps.setString(8, b.getWt());	
		ps.setString(9, b.getMobileno());
		ps.setString(10, b.getStatus());
		ps.setString(11, b.getStatuss());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean UpdateBatchStatus(int id, String status) throws Exception {
	if(status.equalsIgnoreCase("Receive"))
		status="Send";
	else
		status="Receive";
	
	String sql="update createbatch set status=? where id=?";
	
	try {
		ps=DBConnection.getConnection().prepareStatement(sql);
		ps.setString(1, status);
		ps.setInt(2, id);
		
		int index=ps.executeUpdate();
		if(index>0)
		{
			flag=true;
			contractCall();
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return flag;
}

public ResultSet SelectBatch() {
	ResultSet rs= null;
	String sql ="Select * from createbatch";
	try {
		PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
		rs = pstmt.executeQuery();			
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return rs;

}

public boolean DeleteBatch(int id) throws Exception {
	String sql="delete from createbatch where id='"+id+"'";
	 Connection con=DBConnection.getConnection();
	 try {
		ps=con.prepareStatement(sql);
		int index =ps.executeUpdate();
		if(index>0)
		{
			flag=true;
			contractCall();
		}
		else
		{
			flag=false;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	 
		return flag;
}

public boolean UpdateBatchStatuss(int id, String statuss) throws Exception {
	if(statuss.equalsIgnoreCase("Receive"))
		statuss="Send";
	else
		statuss="Receive";
	
	String sql="update createbatch set statuss=? where id=?";
	
	try {
		ps=DBConnection.getConnection().prepareStatement(sql);
		ps.setString(1, statuss);
		ps.setInt(2, id);
		
		int index=ps.executeUpdate();
		if(index>0)
		{
			flag=true;
			contractCall();
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return flag;
}

public ResultSet SelectBatchs() {
	ResultSet rs= null;
	String sql ="Select * from createbatch";
	try {
		PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
		rs = pstmt.executeQuery();			
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return rs;
}

public boolean AddCategory(Userbean b) throws Exception {
	sql = "insert into addcategory(categoryname,mobileno,status) values(?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setString(1, b.getCategoryname());
		ps.setString(2, b.getMobileno());
		ps.setString(3, b.getStatus());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean AddSubCategory(Userbean b) throws Exception {
	sql = "insert into subcat(categoryname,subcatname,mobileno,status) values(?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setString(1, b.getCategoryname());
		ps.setString(2, b.getSubcatname());
		ps.setString(3, b.getMobileno());
		ps.setString(4, b.getStatus());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean CreatePayment(Userbean b) throws Exception {
	sql = "insert into payment(name,accountno,ifsc,status) values(?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setString(1, b.getName());
		ps.setString(2, b.getAccountno());
		ps.setString(3, b.getIfsc());
		ps.setString(4, b.getStatus());
		
		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean CreatePaymentt(Userbean b) throws Exception {
	sql = "insert into paymentt(name,accountno,ifsc,status) values(?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		
		ps.setString(1, b.getName());
		ps.setString(2, b.getAccountno());
		ps.setString(3, b.getIfsc());
		ps.setString(4, b.getStatus());
		
		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

public boolean CreateNewOrder(Userbean b) throws Exception {
	sql = "insert into neworder(orderno,ordername,batchno,productid,fieldm,comment,mobileno,status) values(?,?,?,?,?,?,?,?)";

	Connection con = DBConnection.getConnection();

	try {
		ps = con.prepareStatement(sql);

		ps.setString(1, b.getOrderno());
		ps.setString(2, b.getOrdername());
		ps.setString(3, b.getBatchno());
		ps.setString(4, b.getProductid()); 
		ps.setString(5, b.getFieldm());
		ps.setString(6, b.getComment());
		ps.setString(7, b.getMobileno());
		ps.setString(8, b.getStatus());

		int index = ps.executeUpdate();

		if (index > 0) {
			flag = true;
			contractCall();
		} else {
			flag = false;
		}
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return flag;
}

}


	
	

