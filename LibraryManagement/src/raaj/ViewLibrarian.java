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

import Dao.ViewLibrarianDao;
import pojoClasses.librarianData;

@WebServlet("/ViewLibrarian")
public class ViewLibrarian extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewLibrarian() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		List<librarianData> librarianDetails = new ArrayList<librarianData>();
		librarianDetails = ViewLibrarianDao.librarianValues();
		request.setAttribute("values", librarianDetails);
		request.getRequestDispatcher("viewLibrarian2.jsp").forward(request, response);

	}

}
