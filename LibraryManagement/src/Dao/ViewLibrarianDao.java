package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pojoClasses.librarianData;

public class ViewLibrarianDao {
	public static List<librarianData> librarianValues() {
		String name, email, password, city, contact;

		List<librarianData> values = new ArrayList<librarianData>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from li");
			while (rs.next()) {
				name = rs.getString(1);
				email = rs.getString(2);
				password = rs.getString(3);
				city = rs.getString(4);
				contact = rs.getString(5);
				librarianData data = new librarianData(name, email, password, city, contact);
				values.add(data);

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return values;

	}

}
