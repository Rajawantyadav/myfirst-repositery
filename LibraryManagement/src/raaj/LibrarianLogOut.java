package raaj;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LibrarianLogOut")
public class LibrarianLogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public LibrarianLogOut() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("LibrarianLogOut.jsp");
		
		
	}

}
