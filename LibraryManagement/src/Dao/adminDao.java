package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class adminDao {
	public static boolean check(String email, String pass) {

		List<String> Email = new ArrayList<String>();
		List<String> Password = new ArrayList<String>();
		boolean match = false;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from admin");
			while (rs.next()) {
				Email.add(rs.getString(1));
				Password.add(rs.getString(2));
			}

		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}

		for (int i = 0; i < Email.size(); i++) {
			if (Email.contains(email) && Password.contains(pass)) {
				match = true;
			} else {
				match = false;
			}

		}

		return match;

	}

}
