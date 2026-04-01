package college;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class College {

	public static void main(String[] args) {
		
String url = "jdbc:sqlserver://localhost:1433;databaseName=College;";
String user = "mo";
String pass="12345";
 try{
	 java.sql.Connection con=DriverManager.getConnection(url , user , pass);
	 System.out.println("Connection True");
        }
		catch(SQLException e){
			System.out.println("Connection Error");
        }
		
	}
	
}