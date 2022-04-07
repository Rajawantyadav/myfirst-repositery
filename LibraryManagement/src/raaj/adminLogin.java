package raaj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.adminDao;

public class adminLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");
		if (adminDao.check(email, password)) {

			resp.sendRedirect("AdminSection.jsp");
		} else {
			req.getRequestDispatcher("AdminLogin.jsp").include(req, resp);

		}
	}

}
