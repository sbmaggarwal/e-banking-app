package sourceCode;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class Beans {

	static java.sql.Connection con;
	static Statement smt;
	static ResultSet rs;
	static PreparedStatement psmt;
	public static void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IBMProject","root","sbm20");	        
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static void add(String query) throws SQLException {
		try {
				connect();
				psmt = (PreparedStatement) con.prepareStatement(query);
				psmt.executeUpdate();
		}
		finally {
			disconnect();
		}
	}

	public static ResultSet dataRetrieve(String query) throws SQLException {
		try {
			connect();
			smt = (Statement) con.createStatement();
			rs = smt.executeQuery(query);
			return rs;
			}
		finally {
			disconnect();
		}
	}
	
	public static void sendMail() throws SQLException {
		try {
			connect();
			String query = "Select * from subscribermail";
			rs = dataRetrieve(query);
			while(rs.next()) {
			
			}
	}
		finally {
			disconnect();
		}
	}
	public static void disconnect() {
		try {
            if (rs != null) {
                rs.close();
            }
            if (smt != null) {
                smt.close();
            }
            if (con != null) {
                con.close();
            }

        } catch (SQLException ex) {
        	ex.printStackTrace();
        }
	}
	} 
