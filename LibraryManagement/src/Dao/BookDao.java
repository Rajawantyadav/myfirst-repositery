package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pojoClasses.Book;
import pojoClasses.librarianData;

public class BookDao {
	public static List<Book> Bookdetails() {
		String bookId, name, author, publisher, quantity;

		List<Book> values = new ArrayList<Book>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from book");
			while (rs.next()) {
				bookId = rs.getString(1);
				name = rs.getString(2);
				author = rs.getString(3);
				publisher = rs.getString(4);
				quantity = rs.getString(5);
				Book data = new Book(bookId, name, author, publisher, quantity);
				values.add(data);

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return values;

	}

}
