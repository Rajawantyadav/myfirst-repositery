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

import Dao.AddLibrarianDao;
import Dao.LibrarianDao;

/**
 * Servlet implementation class addLibrarian
 */
@WebServlet("/addLibrarian")
public class addLibrarian extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addLibrarian() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String eamil = request.getParameter("email");
		String password = request.getParameter("password");
		String city = request.getParameter("city");
		String contact = request.getParameter("contact");

		List<String> LibrarianDetails = new ArrayList<String>();
		LibrarianDetails.add(0, name);
		LibrarianDetails.add(1, eamil);
		LibrarianDetails.add(2, password);
		LibrarianDetails.add(3, city);
		LibrarianDetails.add(4, contact);
		AddLibrarianDao.addLibrarianValaue(LibrarianDetails);

		response.sendRedirect("addLibrarianMessage.jsp");

	}

}
