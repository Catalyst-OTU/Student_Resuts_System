package project;
import java.sql.*;
public class ConnectionProvider {

	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_results", "root", "catalyst1006");
			return conn;
			
		}
		catch(Exception e) {
			
			System.out.println(e.getMessage());
			return null;
		}
		
	}
}
