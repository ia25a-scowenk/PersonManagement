
package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class PersonConnector {
	private static Connection con = null;
	private final String connectString = "jdbc:mysql://localhost:3306/persondb?user=root&password=hallo123";

 
	private Connection openConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(connectString);
			con.setAutoCommit(false);
			return con;
		} catch (Exception e) {
			System.out.println("No connection to " + connectString);
			e.printStackTrace();
		}
		return null;
	}
 
	public static Connection getNewCon() {
		return new PersonConnector().openConnection();
	}
 
	public static Connection getConnection() {
		try {
			if (con == null || con.isClosed()) {
				return new PersonConnector().openConnection();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public static void closeResources(PreparedStatement preparedStatement, ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


 
 
