

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class Admin_login
 */
public class Admin_login extends HttpServlet 
{
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		HttpSession session = req.getSession();
		Database db=new Database();
		String result=db.Connectdb();
		PrintWriter out=resp.getWriter();
		out.println(result);
	
		
		String username= req.getParameter("username");
		String password = req.getParameter("password");
		String event = req.getParameter("submit");
		
		
		if(event.equals("Login"))
		{	
			if(username.equals("") || password.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\"> alert('Something is empty'); location='Admin_login.jsp' </script>  ");
				
			}
			else
			{
				if(username.equals("Admin") && password.equals("Admin"))
				{
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Login Successfull'); location='Admin_home.jsp' </script>  ");
				}
				else
				{ 
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Invalid Login Credentials'); location='Admin_login.jsp' </script>  ");
				}
				
			}
			
		}
		
		
	}
}
