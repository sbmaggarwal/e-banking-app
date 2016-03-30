package sourceCode;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Subscriber.asp1")
public class Subscribe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("email");
		
		//connect to database
		Beans.connect();
		
		//save subscribed mail-id in a table in database
		String query = "INSERT INTO `IBMProject`.`subscriberMail` (`EmailId`) VALUES ('"+ mail +"')";
		try {
			Beans.add(query);
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("index.jsp");
		}
		//create mail program to send regular updates
	}

}
