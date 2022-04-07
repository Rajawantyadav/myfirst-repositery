package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//issue one book and insert one record into issueBook table
public class IssueBookDao {

	public static void issueBook(String bookId, String BookName, String StudentId, String StudentName,
			String StudentContact) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
			Statement st = con.createStatement();
			st.executeUpdate("INSERT INTO issuebook VALUES ('" + bookId + "','" + BookName + "','" + StudentId + "','"
					+ StudentName + "','" + StudentContact + "')");
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	// Ckecking book quantity
	public static boolean issueCheck(String bookId, String BookName) throws ClassNotFoundException, SQLException {
		String bookid = null,bookName = null,bookauthor = null,bookPublisher = null;
		int BookQuantity = 0;
		boolean notEmpty = false;

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from book where id='" + bookId + "' and name='" + BookName + "'");
		while (rs.next()) {
			bookid=rs.getString(1);
			bookName=rs.getString(2);
			bookauthor=rs.getString(3);
			bookPublisher=rs.getString(4);
	
			BookQuantity = Integer.parseInt(rs.getString(5));
		}
		int quantity = BookQuantity;
		BookQuantity=BookQuantity-1;
		for (int i = 0; i < quantity; i++) {
			if (BookQuantity>=0 ) {
				st.executeUpdate("UPDATE book SET id='"+bookid+"',name='"+bookName+"',author='"+bookauthor+"',publisher='"+bookPublisher+"',quantity='"+BookQuantity+"' WHERE id='"+bookId+"'");
				notEmpty = true;
			} else {
				notEmpty = false;

			}
		}

		return notEmpty;

	}

}
