package com.route;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static String url="jdbc:mysql://localhost:3306/transport_system";
	private static String name="root";
	private static String password="200821";
	private static Connection con;
	
	
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,name, password);
			
			
			
		}
		
		catch(Exception e){
			
			System.out.println("Connection un succesfull");
			
			
		}
		
		
		
		
		return con;
	}
}
