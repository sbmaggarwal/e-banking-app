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

@WebServlet("/Login1")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    //result set to store the username
	ResultSet rs;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get username and password from request object
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		
		//make the connection
		Beans.connect();
		
		//construct query for retrieving username only
		String query = "SELECT * FROM `userinfo` WHERE userName = '"+ userName +"' ";
			try {
				//actually getting data
				rs = Beans.dataRetrieve(query);
				
				if(rs.next())
				{
					//matching user password
					if(passWord.equals(rs.getString(4))) {
						//request a getSession
						HttpSession session = request.getSession();
						session.setAttribute("userName", userName);

						//if admin is logging in
						if(userName.equals("admin")){
							//page - under construction
							response.sendRedirect("Admin.jsp");
						} else {
							//normal user
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
