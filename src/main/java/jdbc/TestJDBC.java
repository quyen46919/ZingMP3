package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class TestJDBC {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String jdbcUrl = "jdbc:mysql://127.0.0.1:3307/zingmp3";
		String user="root";
		String pass="";
		
		try {
			System.out.println("Connecting to the database: "+ jdbcUrl);
			Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);
			System.out.println("Connection successful!");
		} catch (Exception exc) {
			System.out.println(exc);
		}
	}

}
