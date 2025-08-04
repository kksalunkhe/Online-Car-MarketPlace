

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
 * Servlet implementation class User_Signup
 */
public class User_Signup extends HttpServlet
{
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
			HttpSession session = req.getSession();
			Database db=new Database();
			String result=db.Connectdb();
			PrintWriter out=resp.getWriter();
			out.println(result);
			
			String username= req.getParameter("username");
			String email=req.getParameter("email");
			String contact=req.getParameter("contact");
			String dob=req.getParameter("dob");
			String city=req.getParameter("city");
			String gender=req.getParameter("gender");
			String password=req.getParameter("password");
			String cpassword=req.getParameter("cpassword");
			String event = req.getParameter("submit");
			
			if(event.equals("Register"))
			{
				if (username.equals("") || email.equals("") || contact.equals("") || dob.equals("") || city.equals("") || gender.equals("") || password.equals("") || cpassword.equals("") ) 
				{
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Something is Empty..!!'); location='User_Signup.jsp'; </script>");
				}
				else
				{
					if(password.equals(cpassword))
					{
						String sql = "insert into user_signup (customer_name,email,contact,dob,city,gender,password,cpassword) values ('"+username+"','"+email+"','"+contact+"','"+dob+"', '"+city+"','"+gender+"','"+password+"','"+cpassword+"')"; 
						String insert = db.Insert(sql);
						out.println(insert);
						resp.setContentType("text/html");
			        	out.println("<script type=\"text/javascript\"> alert('Register Successfull'); location='User_Login.jsp';  </script> ");
					}
					else
					{
						resp.setContentType("text/html");
						out.println("<script type=\"text/javascript\"> alert('Password and Confirm Password are not matched..!!'); location='User_Signup.jsp'; </script>");
					}
				}
				
			}
			
			
	}
 
}
