package com.forum;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class forumDBUtil {

	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Forum> validate( String forumName,String forumCatagory){
		
		
		ArrayList<Forum> forum= new ArrayList<Forum>();
		
		
		//Create DB connection
		
		
		String url ="jdbc:mysql://localhost:3306/onlinehelpdesk";
		
		String user ="root";
		
		String pass = "admin123";
		
	
		
		//Validate data
		try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
			
			
			
			Connection con =DriverManager.getConnection(url , user, pass);
			Statement stmt= con.createStatement();
			String sql = "select * from forum where forumName ='"+forumName+"'   and   forumCatagory ='"+forumCatagory+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next() ) {
				
				int id =rs.getInt(1);
				String name =rs.getString(2);
				String forumContent = rs.getString(3);
				String catagory = rs.getString(4);
				String createdBy =rs.getString(5);
				
				
				
				Forum  f= new Forum(id, name, forumContent, catagory, createdBy);
				
				forum.add(f);
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return forum;
		
		
	}	
	
	
	public static boolean insertForum(String name , String content , String catagory ,String createdby) {
		
		boolean isSuccess = false;
		
		
		
		
		//Create db connection
		String url ="jdbc:mysql://localhost:3306/onlinehelpdesk";		
		String user ="root";
		String pass = "admin123";
		
		try {
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			
			
			Connection con =DriverManager.getConnection(url , user, pass);
			Statement stmt= con.createStatement();
			
			String sql = "insert into forum values( 0, '"+name+"' , '"+content+"', '"+catagory+"' , '"+createdby+"') ";
			
			int rs =stmt.executeUpdate(sql);
			
			
			
			if(rs > 0) {
				
				isSuccess= true;
			}
			else {
				
				isSuccess = false;
			}
			
	
			}catch(Exception e) {
			e.printStackTrace();
		  
			}
		
	
		return isSuccess;
	}
	
	
public static boolean updateForum(String id, String name, String content ,String catagory, String createdby ) {
	
	
	try {
		con =DBConnect.getConnection();
		stmt =con.createStatement();
		
		String sql =  "update forum set forumName= '"+name+"' , forumContent ='"+content+"' , forumCatagory ='"+catagory+"' ,  createdBy ='"+createdby+"'"
			+ "where forumID = '"+id+"' ";
		
		
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs> 0) {
		
			isSuccess = true;
			
		}else {
			
			isSuccess = false;
		}
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	

	return isSuccess;
}	


public static List<Forum> getForumDetails(String id){
	
	
	
	
	
	int convertedID  =Integer.parseInt(id);
	
	ArrayList<Forum> forum = new ArrayList<>();
	
	
	try {
	
		con =DBConnect.getConnection();
		stmt= con.createStatement();
		
		String sql =" select * from forum where forumID = '"+convertedID+"'  ";
		
	
		
		
		
		while(rs.next()) {
			
		 	 int 	forumID = rs.getInt(1);
			String forumName = rs.getString(2);
			String forumContent =rs.getString(3);
			String forumCatagory =rs.getString(4);
			String createdby = rs.getString(5);
			
			
			Forum f =new Forum(forumID, forumName, forumContent, forumCatagory, createdby);
			
			forum.add(f);
			
			
			
		}
		
		
	} catch (Exception e) {
		
	e.printStackTrace();
	}
	
	return forum;
}
 








public static boolean deleteForum(String id) {


	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		
		
		String sql ="delete from forum  where forumID='"+id+"' ";
		
		int r = stmt.executeUpdate(sql);
	
		
		
		
		if(r> 0) {
			
			
			
			isSuccess= true;
			
			
			
	
		}
		else {
			
			isSuccess=false;
		}
		
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	return isSuccess;
}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
