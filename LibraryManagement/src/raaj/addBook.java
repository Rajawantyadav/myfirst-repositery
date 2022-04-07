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

import Dao.AddBookDao;

/**
 * Servlet implementation class addBook
 */
@WebServlet("/addBook")
public class addBook extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String quantity = request.getParameter("quantity");

		List<String> bookDetails = new ArrayList<String>();
		bookDetails.add(0, id);
		bookDetails.add(1, name);
		bookDetails.add(2, author);
		bookDetails.add(3, publisher);
		bookDetails.add(4, quantity);

		AddBookDao.addbookValaue(bookDetails);

		response.sendRedirect("AddBookMessage.jsp");

	}
}
