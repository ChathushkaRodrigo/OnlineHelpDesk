package com.forum;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class lecturerDBUtil {

	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs= null;
	
	public static boolean validate(String userEmail, String password) {
		
		
		try {
		
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="select * from lecturer where lecturerEmail ='"+userEmail+"' and  password ='"+password+"'  "  ;
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess=true;
				
			}else {
				
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
		
		
		
		return isSuccess;
	}
	
	
}
