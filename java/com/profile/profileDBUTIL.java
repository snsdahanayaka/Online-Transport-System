package com.profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class profileDBUTIL {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<profile> showProfile(int user_ID)
	{
		ArrayList<profile> pro = new ArrayList<>();
		//db connection
	
		
		
		//validate
		
		try {
			
			
		
		con=DBconnect.getConnection();
		stmt=con.createStatement();
			
			
			
		String sql="SELECT * FROM profile WHERE id='"+user_ID+"'";
		rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id=rs.getInt(1);
				String oname=rs.getString(2);
				String email =rs.getString(3);
				String pnum=rs.getString(4);
				String addr=rs.getString(5);
				
				
				profile o = new profile(id,oname,email,pnum,addr);//adding the object o to the route List
				pro.add(o);
			}
			
			
			else
			{
				
				
				
			}	
			
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pro;
		
		
		
		
		
	}
	
	public static boolean createProfile(int user_ID,String oname,String email,String pnum,String addr)
	
		{
		
			boolean isSuccess=false;
		//db connection
			
			String url= "jdbc:mysql://localhost:3306/transport_system";
			String user="root";
			String password="200821";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, password);
				Statement stmt =con.createStatement();
				
				String sql2="INSERT INTO profile VALUES('"+user_ID+"','"+oname+"','"+email+"','"+pnum+"','"+addr+"')";
				int rs=stmt.executeUpdate(sql2);
				
				if(rs>0)
				{
					isSuccess=true;
				}
				else 
				{
					isSuccess=false;
				}
				
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			return isSuccess;
		}
	
	

	public static boolean updateprofile(int user_ID,String oname,String email,String pnum,String addr)
	
		{
		
			boolean isSuccess=false;
		//db connection
			
			String url= "jdbc:mysql://localhost:3306/transport_system";
			String user="root";
			String password="200821";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, password);
				Statement stmt =con.createStatement();
				
				String sql2="UPDATE profile set oname='"+oname+"',email='"+email+"',pnum='"+pnum+"',addr='"+addr+"'  WHERE id='"+user_ID+"'";
				int rs=stmt.executeUpdate(sql2);
				
				if(rs>0)
				{
					isSuccess=true;
				}
				else 
				{
					isSuccess=false;
				}
				
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			return isSuccess;
		}

	public static boolean deleteProfile(int user_ID)
	
		{
		
			boolean isSuccess=false;
		//db connection
			
			String url= "jdbc:mysql://localhost:3306/transport_system";
			String user="root";
			String password="200821";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, password);
				Statement stmt =con.createStatement();
				
				String sql2="DELETE  FROM profile WHERE id='"+user_ID+"'";
				int rs=stmt.executeUpdate(sql2);
				
				if(rs>0)
				{
					isSuccess=true;
				}
				else 
				{
					isSuccess=false;
				}
				
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			return isSuccess;
		}
	
}
