package raaj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import Dao.LibrarianDao;

public class librarianLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		if (LibrarianDao.check(email, password)) {

			resp.sendRedirect("LibrarianSection.jsp");
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("LibrarianLogin.jsp");

			rd.forward(req, resp);

		}
	}

}
