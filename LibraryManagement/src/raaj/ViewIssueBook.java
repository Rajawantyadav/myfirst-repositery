package raaj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.BookDao;
import Dao.ViewIssueBookDao;
import Dao.ViewLibrarianDao;
import pojoClasses.Book;
import pojoClasses.IssueBook;
import pojoClasses.librarianData;

@WebServlet("/ViewIssueBook")
public class ViewIssueBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewIssueBook() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<IssueBook> IssuebookDetails = new ArrayList<IssueBook>();
		IssuebookDetails = ViewIssueBookDao.IssueBookdetails();
		request.setAttribute("values", IssuebookDetails);
		request.getRequestDispatcher("ViewIssueBook.jsp").forward(request, response);
	}

}
