package raaj;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ReturnBookDao;

@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReturnBook() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String BookId = null, BookName = null, StudentId = null;
		BookId = request.getParameter("id");
		BookName = request.getParameter("bname");
		StudentId = request.getParameter("sid");
		try {
			if (ReturnBookDao.returnBook(BookId, BookName, StudentId)) {
				response.sendRedirect("BookReturnMessage.jsp");
			} else {
				response.sendRedirect("BookReturnErrorMess.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

	}

}
