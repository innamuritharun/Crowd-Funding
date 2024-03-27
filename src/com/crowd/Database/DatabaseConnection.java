package com.crowd.Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	public static Connection con;
	public static Connection createConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fairpayment","root","root");
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}

}
