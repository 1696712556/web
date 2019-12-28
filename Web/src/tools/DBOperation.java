package tools;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBOperation {
	private String driverName = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost/test";
	private String user = "root";
	private String password="123456";
	private Connection con = null;
	private Statement stmt = null;
	
	public DBOperation(){
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int insertSql(String sql){
		int i=-1;
		try {
			stmt = con.createStatement();
			System.out.println(sql);
			i = stmt.executeUpdate(sql);
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public int querySqlLength(String sql){
		ResultSet rs=null;
		int length = 0;
		try {
			stmt = con.createStatement();
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				length++;
			}
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return length;
	}

}
