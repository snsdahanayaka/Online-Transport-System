package com.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ownerDBUT {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<owner> validate(String username,String password)
	{
		ArrayList<owner> cus = new ArrayList<>();
		//db connection
	
		
		
		//validate
		
		try {
			
			
		
		con=DBconnect.getConnection();
		stmt=con.createStatement();
			
			
			
		String sql="SELECT * FROM owner WHERE uname='"+username+"' AND psw='"+password+"'";
		rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id=rs.getInt(1);
				String oname=rs.getString(2);
				String email =rs.getString(3);
				String pnum=rs.getString(4);
				String u_name=rs.getString(5);
				String passw=rs.getString(6);
				String type=rs.getString(7);
				
				owner o = new owner(id,oname,email,pnum,u_name,passw,type);
				cus.add(o);
			}
			
			
			else
			{
				
				
				
			}	
			
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
		
		
		
		
		
	}
	
	public static boolean signup(String oname,String email,String pnum,String uname,String psw,String type)
	
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
				
				String sql2="INSERT INTO owner VALUES(0,'"+oname+"','"+email+"','"+pnum+"','"+uname+"','"+psw+"','"+type+"' )";
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
	
	

	public static boolean update(String id,String oname,String email,String pnum,String uname,String psw)
	
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
				
				String sql2="UPDATE owner set oname='"+oname+"',email='"+email+"',pnum='"+pnum+"',uname='"+uname+"',psw='"+psw+"' WHERE id='"+id+"'";
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

	public static boolean delete(String id)
	
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
				
				String sql2="DELETE  FROM owner WHERE id='"+id+"'";
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
