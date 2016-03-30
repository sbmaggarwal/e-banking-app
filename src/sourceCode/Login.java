package sourceCode;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ResultSet rs;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		
		Beans.connect();
		
		String query = "SELECT * FROM `userinfo` WHERE userName = '"+ userName +"' ";
			try {
				rs = Beans.dataRetrieve(query);
				
				if(rs.next())
				{
					if(passWord.equals(rs.getString(4))) {
						HttpSession session = request.getSession();
						session.setAttribute("userName", userName);
						if(userName.equals("admin")){
							response.sendRedirect("Admin.jsp");
						} else {
							response.sendRedirect("index.jsp");
						}							
					}
					else {
					
					}	
				}
				else {
					System.out.println("Wrong username!");
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

}
}
