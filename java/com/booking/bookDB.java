package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class bookDB {

	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<booking> getbookings(int cusId)
	{
		ArrayList<booking> book = new ArrayList<>();
		//db connection
	
		
		
		//validate
		
		try {
			
			
		
		con=DBconnect.getConnection();
		stmt=con.createStatement();
			
		
			//date retrieval part
		String sql="SELECT * FROM booking WHERE cusId='"+cusId+"'";
		rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				 int id=rs.getInt(1);
				 String pl=rs.getString(2);
				 String dl=rs.getString(3);
				 String num=rs.getString(4);
				 String date=rs.getString(5);
				 String time=rs.getString(6);
				 String vehicle=rs.getString(7);
				 String cusID=rs.getString(8);
				 String driverId=rs.getString(9);
				 String cost=rs.getString(10);
				 String type=rs.getString(11);
			
				
				if("cargo".equals(type))
				{
					 bookInt b = new cargo(id,pl,dl,num,date,time,vehicle,cusID,driverId,cost);
				
					 b.calcCost();
					 book.add((booking) b);
				
				}
				else
				{
					 bookInt b = new passenger(id,pl,dl,num,date,time,vehicle,cusID,driverId,cost);
						
					 b.calcCost();
					 book.add((booking) b);
				}
				 
				 
				 
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return book;
		
		
		
		
		
	}
	
	
	//data insertion part
	public static boolean book(String pl,String dl,String num,String date,String time,String vehicle,int cusId,String driverId,String cost,String type)
	
		{
		
			boolean isSuccess=false;
		//db connection
//			
//			String url= "jdbc:mysql://localhost:3306/transport_system";
//			String user="root";
//			String password="200821";
			
			try {
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection con=DriverManager.getConnection(url, user, password);
//				Statement stmt =con.createStatement();
				
				con=DBconnect.getConnection();
				stmt=con.createStatement();
					
//				
				String sql2="INSERT INTO booking VALUES(0,'"+pl+"','"+dl+"','"+num+"','"+date+"','"+time+"','"+vehicle+"','"+cusId+"','"+driverId+"','"+cost+"','"+type+"' )";
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
	
	
	//data update part
	public static boolean updatebook(String id,String pl,String dl,String num,String date,String time,String vehicle,String cost,String type)
	
		{
		
			boolean isSuccess=false;
		//db connection
			
//			String url= "jdbc:mysql://localhost:3306/transport_system";
//			String user="root";
//			String password="200821";
//			
			try {
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection con=DriverManager.getConnection(url, user, password);
//				Statement stmt =con.createStatement();
				
				
				con=DBconnect.getConnection();
				stmt=con.createStatement();
					
				
				String sql2="UPDATE booking set pl='"+pl+"',dl='"+dl+"',pnum='"+num+"',date='"+date+"',btime='"+time+"',vehicle='"+vehicle+"',cost='"+cost+"',type='"+type+"' WHERE bookId='"+id+"'";
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

	
		//deletion part
	public static boolean delete(String id)
	
		{
		
			boolean isSuccess=false;
		//db connection
//			
//			String url= "jdbc:mysql://localhost:3306/transport_system";
//			String user="root";
//			String password="200821";
//			
			try {
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection con=DriverManager.getConnection(url, user, password);
//				Statement stmt =con.createStatement();
				
				
				
				con=DBconnect.getConnection();
				stmt=con.createStatement();
					
				String sql2="DELETE  FROM booking WHERE bookId='"+id+"'";
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
