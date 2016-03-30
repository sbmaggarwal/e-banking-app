package sourceCode;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sourceCode.Beans;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String contactNumber = request.getParameter("cnumber");
		String accountNumber = request.getParameter("anumber");
		String age = request.getParameter("age");
		String mailid = request.getParameter("mailid");
		String sex = request.getParameter("sex");
		String branch = request.getParameter("branch");
		
		Beans.connect();
		String query = "INSERT INTO `ibmproject`.`tempuserinfo` (`firstName`, `lastName`,"
				+ " `userName`, `passWord`, `contactNumber`, `accountNumber`,"
				+ " `age`, `mailid`, `sex`, `branch`) VALUES ('"+firstName+"',"
				+ " '"+lastName+"', '"+userName+"', '"+passWord+"',"
				+ " '"+contactNumber+"', '"+accountNumber+"',"
				+ " '"+age+"', '"+mailid+"', '"+sex+"',"
				+ " '"+branch+"')";
		
			try {
				Beans.add(query);
				response.sendRedirect("Login.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("comingsoon.html");
			}
		
		
	}

}
