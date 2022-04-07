package raaj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.IssueBookDao;

@WebServlet("/IsuueBook")
public class IsuueBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IsuueBook() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String BookId, BookName,StudentName, StudentId, StudentContact;
		BookId = request.getParameter("id");
		BookName = request.getParameter("bname");
		StudentId = request.getParameter("sid");
		StudentName = request.getParameter("name");
		StudentContact = request.getParameter("contact");
		
		try {
			if (IssueBookDao.issueCheck(BookId,BookName)) {
				IssueBookDao.issueBook(BookId, BookName,StudentId, StudentName, StudentContact);
				response.sendRedirect("issueBookMessage.jsp");

			} else {
				response.sendRedirect("noBookIssuedMess.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
