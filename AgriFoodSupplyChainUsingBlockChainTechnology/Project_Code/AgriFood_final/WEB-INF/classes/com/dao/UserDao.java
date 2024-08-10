package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.bean.Userbean;
import com.blockchain.ETHconnect;
import com.connection.DBConnection;



public class UserDao {
	
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
	
	

	public boolean InsertUserData(Userbean b) throws Exception {
		sql = "insert into user(selectfield,firstname,lastname,mobileno,password,dob,countrySelect,citySelect,status) values(?,?,?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getSelectfield());
			ps.setString(2, b.getFirstname()); 
			ps.setString(3, b.getLastname());
			ps.setString(4, b.getMobileno());
			ps.setString(5, b.getPassword());
			ps.setString(6, b.getDob());
			ps.setString(7, b.getCountrySelect());
			ps.setString(8, b.getCitySelect());
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
	
	
	public boolean updateProfile(Userbean user) throws Exception {
		try {
			Connection conn = DBConnection.getConnection();
			/*Connection conn = DBConnection.getInstance().getConnection();*/
			PreparedStatement st = conn.prepareStatement("UPDATE user SET selectfield = ?, firstname = ?, lastname = ?, mobileno = ?, password = ?, mobileno = ?, dob = ?, countryselect = ?, cityselect = ?, status = ? WHERE id = ?;");
			ps.setInt(1, user.getId());
			ps.setString(2, user.getSelectfield());
			ps.setString(3, user.getFirstname()); 
			ps.setString(4, user.getLastname());
			ps.setString(5, user.getMobileno());
			ps.setString(6, user.getPassword());
			ps.setString(7, user.getDob());
			ps.setString(8, user.getCountrySelect());
			ps.setString(9, user.getCitySelect());
			ps.setString(10, user.getStatus());
			
			/*ps.setInt(1, user.getId());
			ps.setString(2, user.getSelectfield());
			ps.setString(3, user.getFirstname()); 
			ps.setString(4, user.getLastname());
			ps.setString(5, user.getMobileno());
			ps.setString(6, user.getPassword());
			ps.setString(7, user.getReferralcode());
			ps.setString(8, user.getDob());
			ps.setString(9, user.getCountrySelect());
			ps.setString(10, user.getCitySelect());
			ps.setString(11, user.getStatus());*/
			
			/*ps.setString(1, user.getSelectfield());
			ps.setString(2, user.getFirstname()); 
			ps.setString(3, user.getLastname());
			ps.setString(4, user.getMobileno());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getReferralcode());
			ps.setString(7, user.getDob());
			ps.setString(8, user.getCountrySelect());
			ps.setString(9, user.getCitySelect());
			ps.setString(10, user.getStatus());
			ps.setInt(11, user.getId());*/
			
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
			/*st.execute();
			return "Profile Update Successful.";
		} catch (MySQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
			return "Email alreay used.";
		} catch (SQLException e) {
			e.printStackTrace();
			return "Profile Update Failed.";
		}*/
	}
	
	

	public boolean DeleteUser(int id) throws Exception {
		
		String sql="delete from user where id='"+id+"'";
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

	
	public Userbean CheckUser(String selectfield, String mobileno, String password) {
					
			Userbean bean=new Userbean();
			sql = "select * from user where selectfield='"+selectfield+"' and mobileno='" + mobileno + "' and password='" + password + "' ";
			int flag = 0;
			try {
				Statement stmt = DBConnection.getConnection().createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				
				if (rs.next()) {
					flag = 1;
					bean.setId(rs.getInt(1));
					bean.setSelectfield(rs.getString(2));
					bean.setFirstname(rs.getString(3));
					bean.setLastname(rs.getString(4));
					bean.setMobileno(rs.getString(5));
					bean.setPassword(rs.getString(6));
					bean.setDob(rs.getString(7));
					bean.setCountrySelect(rs.getString(8));
					bean.setCitySelect(rs.getString(9));
					bean.setStatus(rs.getString(10));
				
				}

			} catch (SQLException e) {

				e.printStackTrace();
			}
			if(flag ==1)
				return bean;
			else 
				return null;
		}


	public ResultSet getDetails(int id) {
		
		 ResultSet rs=null;
		   
		   
	       String sql = "Select * from user where id='"+id+"'";
			
			try {
				Statement stmt = DBConnection.getConnection().createStatement();
				 rs = stmt.executeQuery(sql);
				/*Statement stmt=connection.createStatement();
			
				 rs = stmt.executeQuery(sql);*/
				
			 } 
			catch (SQLException e) 
			   {
				
				 e.printStackTrace();
			   }
			return rs;
			
	}


	public boolean AddScheme(Userbean b) throws Exception {
		sql = "insert into governmentscheme(name,price,period,firstname,lastname,address,mobileno,status) values(?,?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getName());
			ps.setString(2, b.getPrice()); 
			ps.setString(3, b.getPeriod());
			ps.setString(4, b.getFirstname());		
			ps.setString(5, b.getLastname());
			ps.setString(6, b.getAddress());
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


	public boolean AddComplaint(Userbean b) throws Exception {
		sql = "insert into addcomplaint(firstname,lastname,mobileno,address,reasonforcomp,compagains,status) values(?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getFirstname());
			ps.setString(2, b.getLastname()); 
			ps.setString(3, b.getMobileno());
			ps.setString(4, b.getAddress());
			ps.setString(5, b.getReasonforcomp());
			ps.setString(6, b.getCompagains());
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


	public boolean UpdateGovtStatus(int id, String status) throws Exception {
		if(status.equalsIgnoreCase("Approve"))
			status="Pending";
		else
			status="Approve";
		
		String sql="update governmentscheme set status=? where id=?";
		
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


	public ResultSet SelectGovt() {
		ResultSet rs= null;
		String sql ="Select * from governmentscheme";
		try {
			PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;
	
	}


	public boolean DeleteGovtScheme(int id) throws Exception {
		String sql="delete from governmentscheme where id='"+id+"'";
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


	public boolean DeleteRowMaterial(int id) throws Exception {
		String sql="delete from rowmaterial where id='"+id+"'";
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


	


	public boolean InsertAdminData(Userbean b) {
		sql = "insert into admin(name,address,mobileno,email,password,status) values(?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getName());
			ps.setString(2, b.getAddress()); 			
			ps.setString(3, b.getMobileno());
			ps.setString(4, b.getEmail());
			ps.setString(5, b.getPassword());			
			ps.setString(6, b.getStatus());
	
			int index = ps.executeUpdate();

			if (index > 0) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return flag;
	}


	public Userbean CheckAdmin(String email, String password) {
		Userbean bean=new Userbean();
		sql = "select * from admin where email='" + email + "' and password='" + password + "' ";
		int flag = 0;
		try {
			Statement stmt = DBConnection.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				flag = 1;
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setAddress(rs.getString(3));
				bean.setMobileno(rs.getString(4));
				bean.setEmail(rs.getString(5));
				bean.setPassword(rs.getString(6));				
				bean.setStatus(rs.getString(7));
			
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		if(flag ==1)
			return bean;
		else 
			return null;
	}


	public boolean InsertFeedback(Userbean b) throws Exception {
		sql = "insert into feedback(name,email,subject,message,status) values(?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getName());			
			ps.setString(2, b.getEmail());
			ps.setString(3, b.getSubject());
			ps.setString(4, b.getMessage());
			ps.setString(5, b.getStatus());
	
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


	public boolean InsertProcessorRawMaterialBuy(Userbean b) throws Exception {
		sql = "insert into processorrawbuy(pname,weight,name,payment,accountno,ifsc,uname,status) values(?,?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, b.getPname());			
			ps.setString(2, b.getWeight());
			ps.setString(3, b.getName());
			ps.setString(4, b.getPayment());
			ps.setString(5, b.getAccountno());
			ps.setString(6, b.getIfsc());
			ps.setString(7, b.getUname());
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


	public boolean DeleteRawByProcessor(int id) throws Exception {
		String sql="delete from processorrawbuy where id='"+id+"'";
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


	public boolean UpdateRawMaterialRequestByProcessorStatus(int id, String status) throws Exception {
		if(status.equalsIgnoreCase("Acceepted"))
			status="Pending";
		else
			status="Acceepted";
		
		String sql="update processorrawbuy set status=? where id=?";
		
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


	public ResultSet SelectRawMaterialRequestByProcessor() {
		ResultSet rs= null;
		String sql ="Select * from processorrawbuy";
		try {
			PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;
	}


	public boolean DeleteFeedbackUser(int id) throws Exception {
		String sql="delete from feedback where id='"+id+"'";
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


	public boolean DeleteComplaint(int id) throws Exception  {
		
		String sql="delete from addcomplaint where id='"+id+"'";
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
	
	}
	
		
	


