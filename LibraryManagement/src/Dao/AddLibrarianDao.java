package Dao;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class AddLibrarianDao {

	public static void addLibrarianValaue(List<String> value) {
		String name = value.get(0);
		String email = value.get(1);
		String password = value.get(2);
		String city = value.get(3);
		String contact = value.get(4);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");

			Statement st = con.createStatement();
			st.executeUpdate("insert into li values ('" + name + "','" + email + "','" + password + "','" + city + "','"
					+ contact + "')");
			// PreparedStatement ps=con.prepareStatement("insert into li
			// values('?','?','?','?','?')");
			// ps.setString(1, name);
			// ps.setString(2, email);
			// ps.setString(3, password);
			// ps.setString(4, city);
			// ps.setString(5, contact);
			// ps.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
