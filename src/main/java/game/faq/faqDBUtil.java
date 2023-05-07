package game.faq;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class faqDBUtil {
	
	//initializing the connection, statement and resultset variables
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	//insert function of FAQ inquiry
	public static boolean insertFaq(String userType, String name,String email, String phone, String question) {
		
		boolean isSuccess = false;
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "INSERT INTO gamefaq VALUES (0, '"+userType+"', '"+name+"', '"+email+"', '"+phone+"', '"+question+"')";
			
			int rs = stmt.executeUpdate(sql);
					
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
					
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//retrieving a single tuple of data function
	public static List<Faq> getFaqDetails(String Name){
		
		// int convertedID = Integer.parseInt(Name);
		
		ArrayList<Faq> faq = new ArrayList<>();
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "select * from gamefaq where name ='"+Name+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String userType = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String question = rs.getString(5);
				
				Faq f = new Faq(userType, name, email, phone, question);
				
				faq.add(f);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return faq;
	}
	
	//update function of FAQ Inquiries
	public static boolean updateFaq(String faq_id, String userType, String name, String email, String phone, String question) {
		
		boolean isSuccess = false;
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "UPDATE gamefaq set userType='"+userType+"', name='"+name+"', email='"+email+"', phone='"+phone+"', question ='"+question+"'"
					+ "where faq_id ='"+faq_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else{
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//delete function of FAQ inquiries
	public static boolean deleteFaq(String faq_id) {
		
		boolean isSuccess = false;
		
		int convid = Integer.parseInt(faq_id);
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql ="DELETE FROM gamefaq where faq_id ='"+convid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//retrieve function of FAQ inquiries
	public static boolean retrieveFaq() {
		
		boolean isSuccess = false;
		
		//int convid = Integer.parseInt(faq_id);
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql ="select * from gamefaq ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	} 
	
	//retrieving all the data tuples in the database 
	public static List<Faq> getAllFaqDetails(){
		
		// int convertedID = Integer.parseInt(Name);
		
		ArrayList<Faq> faq = new ArrayList<>();
		
		try {
			//creating connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "select * from gamefaq ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int faq_id = rs.getInt(1);
				String userType = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String question = rs.getString(6);
				
				Faq f = new Faq(faq_id,userType, name, email, phone, question );
				
				faq.add(f);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return faq;
	}
}
