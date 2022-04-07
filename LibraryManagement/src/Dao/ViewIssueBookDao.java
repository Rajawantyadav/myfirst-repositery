package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pojoClasses.IssueBook;


public class ViewIssueBookDao {
	public static List<IssueBook> IssueBookdetails() {
		String bookId;
		String bookName;
	     String StudentId;
		 String StudentName;
		 String StudentContact;

		List<IssueBook> values = new ArrayList<IssueBook>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from issuebook");
			while (rs.next()) {
				bookId = rs.getString(1);
				bookName=rs.getString(2);
				StudentId = rs.getString(3);
				StudentName = rs.getString(4);
				StudentContact= rs.getString(5);
				IssueBook data =new IssueBook(bookId,bookName, StudentId, StudentName, StudentContact);
				values.add(data);

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return values;

	}

}
