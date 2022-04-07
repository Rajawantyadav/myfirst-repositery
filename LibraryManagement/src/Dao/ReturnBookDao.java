package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReturnBookDao {
	
	public static boolean returnBook(String BookId,String BookName,String Studentid) throws ClassNotFoundException, SQLException{
		String bid = null,bname = null,sid = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement", "root", "");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from issuebook where book_id='" + BookId + "' and book_name='" + BookName + "'and student_id='"+Studentid+"'");
		while(rs.next()){
			bid=rs.getString(1);
			bname=rs.getString(2);
			sid=rs.getString(3);
		
		}
		if(bid.equals(BookId)&&bname.equals(BookName)&& sid.equals(Studentid)){
			String id = null,name = null,author = null,publisher = null;
			int quantity=0;
			ResultSet bs=st.executeQuery("select * from book where id='"+BookId+"'");
			while (bs.next()) {        				
				id=bs.getString(1);
				name=bs.getString(2);
				author=bs.getString(3);
			    publisher=bs.getString(4);
				quantity=Integer.parseInt(bs.getString(5))+1;
			}
			st.executeLargeUpdate("UPDATE book SET id='"+id+"',name='"+name+"',author='"+author+"',publisher='"+publisher+"',quantity='"+quantity+"' WHERE id='"+BookId+"'");
			st.executeLargeUpdate("delete from issuebook where book_id='" + BookId + "' and book_name='" + BookName + "'and student_id='"+Studentid+"'");
			return true;
		}else{
			return false;
		}
		
	}

}
