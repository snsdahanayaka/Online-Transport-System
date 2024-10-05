package com.Inquiry;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class inquiryDB {
	private static ResultSet rs; 
	private static boolean isSuccess = false;
	
	
	
	public static boolean insertinquiry(String subject, String message,int userId) {
		
		
		
		

		
		try{
			
			String sql = "insert into inquiry (inquiryId,subject,message,userId) values (0,'" +subject+"','" +message+"','"+userId+"') ";
			int rs = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	
		
		return isSuccess;
		
	}

	

		
	
public static List<inquiry> getinquiry(int userId){
	
		
		ArrayList<inquiry> inq = new ArrayList<>();
		
		try {
		
			String sql = "select * from inquiry where userId='"+userId+"'";
		    rs = DBConnect.getDBConnection().executeQuery(sql);
			
			while(rs.next()) {
				int inqID = rs.getInt(1);
				String subject = rs.getString(2);
				String message = rs.getString(3);
				
				
				inquiry inquiry1 = new inquiry(inqID,subject,message);
				
				inq.add(inquiry1);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return inq;
		
	}

	public static boolean updateinquiry(String id, String subject, String message ) {
		
		
		
		try {
			
			String sql = "update inquiry set subject='"+subject+"', message='"+message+"'  where inquiryId ='"+id+"' ";
		    int rs = DBConnect.getDBConnection().executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess = true;
		    }
		    
		    else {
		    	isSuccess = false;
		    }
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return isSuccess; 
		
	}
	
	public static List<inquiry> getInquiryDetails(String userID){
		int convertedID = Integer.parseInt(userID);//in order to convert the string to int
		
		ArrayList<inquiry> inq = new ArrayList<>();
		
		try {
			
			String sql = "select * from inquiry where userId='"+convertedID+"' ";
		     rs = DBConnect.getDBConnection().executeQuery(sql);
		    
		    while(rs.next()) {
		    	
		    	int id = rs.getInt(1);
		    	String subject = rs.getString(2);
		    	String message = rs.getString(3);
		    	
		    	inquiry i = new inquiry(id,subject,message);
		    	inq.add(i);
		    	
		    	
		    }
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		
		
		return inq;
	}
	
	public static boolean deleteInquiry(String id) {
		int convId=Integer.parseInt(id);
		
		try {
			String sql = "delete from inquiry where inquiryId='"+convId+"' ";
		    int rs = DBConnect.getDBConnection().executeUpdate(sql);
		    
		    if(rs>0) {
		    	
		    	isSuccess=true;
		    	
		    	
		    }else {
		    	
		    	isSuccess=false;
		    }
			
			
		}
		catch (Exception e){
			e.printStackTrace();
			
			
		}
		
		return isSuccess;
	}
		
	


}


