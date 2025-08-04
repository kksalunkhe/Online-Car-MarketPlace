

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
 * Servlet implementation class Show_Offers
 */
public class Show_Offers extends HttpServlet 
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
		
		String offer_id=req.getParameter("offer_id");
		String event=req.getParameter("submit");
		
		if(event.equals("Accept"))
		{
			
			String update=db.update("update make_offer set offer_status='Accepted' where offer_id='"+offer_id+"' ");
			out.println(update);
			resp.setContentType("text/html");
			out.println("<script type=\"text/javascript\"> alert('Accepted'); location='Show_Offers.jsp' </script>  ");
		}
		
		if(event.equals("Reject"))
		{
			String update=db.update("update make_offer set offer_status='Rejected' where offer_id='"+offer_id+"' ");
			out.println(update);
			resp.setContentType("text/html");
			out.println("<script type=\"text/javascript\"> alert('Rejected'); location='Show_Offers.jsp' </script>  ");
		}
	}
}
