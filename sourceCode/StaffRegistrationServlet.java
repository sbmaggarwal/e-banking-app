package sourceCode;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StaffRegistrationServlet1")
public class StaffRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ResultSet rs;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name = request.getParameter("name");
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String branchCode = request.getParameter("branchcode");
		String branchPassword = request.getParameter("branchpassword");
		String age = request.getParameter("age");
		
		// Check if some field is blank
		if(Name == null || userName == null || passWord == null ||
				branchCode == null || branchPassword == null
				|| age == null){
			response.sendRedirect("StaffRegister.jsp");		
		}
		//if no field is blank, then following happens
		else {
			Beans.connect(); // Connecting to DB
			String query = "SELECT * FROM `ibmproject`.`branchinfo` WHERE branchCode = '"+
			branchCode +"' ";
			try {
				rs = Beans.dataRetrieve(query);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			// bPassword should contain the respective branch password
			String bPassword;
			try {
				bPassword = rs.getString(2);
				if(branchPassword.equals(bPassword)){
					// Do when Password is correct
					String jquery = "INSERT INTO `IBMProject`.`staffinfo` "
							+ "(`Name`, `Username`, `Password`, `Branch Code`,`Age`)"
							+ " VALUES ('"+ Name +"', '" + userName + "', '"+ passWord
							+"', ' "+ branchCode +"', '"+ age +"')";
					try {
						Beans.add(jquery);
						response.sendRedirect("LoginStaff.jsp");
					} catch (SQLException e) {
						e.printStackTrace();
						response.sendRedirect("StaffRegister.jsp");
					}
				}
				else {
					// Do when password is incorrect
					
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			// Check if password is correct
			
		}
		
	}}
