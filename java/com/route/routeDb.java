package com.route;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class routeDb {

	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<routeInt> getRouteDetails(int driverId)
	{
		ArrayList<routeInt> route = new ArrayList<>();
		//db connection
	
		
		
		//validate
		
		try {
			
			
		
		con=DBconnect.getConnection();
		stmt=con.createStatement();
			
		
			
		String sql="SELECT * FROM route WHERE driverId='"+driverId+"'";
		rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				 int routeId=rs.getInt(1);
				 String driverID=rs.getString(2);
				 String province=rs.getString(3);
				 String district=rs.getString(4);
				 String city=rs.getString(5);
				 String timeFrame=rs.getString(6);
				 String vehicle=rs.getString(7);
				 String service=rs.getString(8);
				//data is taken from the database by column number and assigned to variables
			
				
				 routeInt b = new cargoRoute(routeId,driverID,province,district,city,timeFrame,vehicle,service);//creating a new object in entity class
				 b.service();
				 route.add(b);//adding the object b to the route List
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return route;//returns the List to the showRoute servlet
		
		
		
		
		
	}
	
	public static boolean insertRouteDetails(int driverID,String province,String district,String city,String timeFrame,String vehicle,String service)
		{
		
			boolean isSuccess=false;
		//db connection
			
			//data insert query
			String url= "jdbc:mysql://localhost:3306/transport_system";
			String user="root";
			String password="200821";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, password);
				Statement stmt =con.createStatement();
				
				String sql="INSERT INTO route VALUES(0,'"+driverID+"','"+province+"','"+district+"','"+city+"','"+timeFrame+"','"+vehicle+"','"+service+"' )";
				int rs=stmt.executeUpdate(sql);
				
				
				//checking whether insertion is successful or not
				if(rs>0)
				{
					isSuccess=true;//successful
				}
				else 
				{
					isSuccess=false;//unsuccessful
				}
				
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();//catching any exception which could occur
			}
			
			
			
			
			
			return isSuccess;//returns the value to routeServlet
		}
	
	

	public static boolean updateRoute(int routeId,String province,String district,String city,String timeFrame,String vehicle,String service)
	
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
				
				//table is updated and sql statement returns the value to the rs variable
				String sql2="UPDATE route set province='"+province+"',district='"+district+"',city='"+city+"',timeFrame='"+timeFrame+"',vehicle='"+vehicle+"',service='"+service+"'  WHERE routeId='"+routeId+"'";
				int rs=stmt.executeUpdate(sql2);
				
				
				//checking whether query is executed
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

	public static boolean deleteRoute(int routeId)
	
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
				
				String sql2="DELETE  FROM route WHERE routeId='"+routeId+"'";//delete the row where routeId is same as the passed one
				int rs=stmt.executeUpdate(sql2);
				
				
				//check the rs value to detect errors in sql query execution
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
