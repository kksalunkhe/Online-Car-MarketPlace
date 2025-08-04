

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class User_Login
 */
public class User_Login extends HttpServlet 
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
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		out.println(username);
		out.println(password);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Car_Marketplace","root","root");
	        st=cn.createStatement();
	        
	        String sql="select * from user_signup where customer_name='"+username+"' && password='"+password+"' ";
	        ResultSet rs=st.executeQuery(sql);
	        if(rs.next())
	        {
	        	session.setAttribute("user_id", rs.getString("customer_id"));
	        	session.setAttribute("customer_name", rs.getString("customer_name"));
	        	session.setAttribute("email", rs.getString("email"));
	        	session.setAttribute("contact", rs.getString("contact"));
	        	session.setAttribute("city", rs.getString("city"));
	        	
	        	resp.setContentType("text/html");
	        
	        	
	        	out.println("<script type=\"text/javascript\"> alert('Login Successfull'); location='Home_Page.jsp';  </script> ");
	        }
	        else 
	        {
	        	resp.setContentType("text/html");
	        	out.println("<script type=\"text/javascript\"> alert('Login Failed'); location='User_Login.jsp';  </script> ");
	        }
		 }
	     catch(Exception ex)
	     {
	    	 out.println(ex.toString());
	     }
	 
      
	}
	
}
