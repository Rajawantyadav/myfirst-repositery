package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class AddBookDao {

	public static void addbookValaue(List<String> value) {
		String id = value.get(0);
		String name = value.get(1);
		String author = value.get(2);
		String publisher = value.get(3);
		String quantity = value.get(4);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");

			Statement st = con.createStatement();
			st.executeUpdate("insert into book values ('" + id + "','" + name + "','" + author + "','" + publisher
					+ "','" + quantity + "')");
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
