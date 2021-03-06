package sourceCode;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout1")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//destroy session
		HttpSession session = request.getSession(false);
		session.removeAttribute("userName");
		//don't forget to invalidate
		session.invalidate();
		response.sendRedirect("index.jsp");
		}

}
