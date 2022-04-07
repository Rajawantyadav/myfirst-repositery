package raaj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.deleteLibrarianDao;

/**
 * Servlet implementation class deleteLibrarian
 */
@WebServlet("/deleteLibrarian")
public class deleteLibrarian extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public deleteLibrarian() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");

		deleteLibrarianDao.deleteLibrarian(name);
		response.sendRedirect("deleteLibrarianMessage.jsp");

	}

}
