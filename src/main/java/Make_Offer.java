

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
 * Servlet implementation class Make_Offer
 */
public class Make_Offer extends HttpServlet 
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
			
			String offer_price=req.getParameter("offer_price");
			String event=req.getParameter("submit");
			
			
			
			out.println(offer_price);
			
			if(event.equals("Send"))
			{
				if(offer_price.equals(""))
				{
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Something is Empty..!!'); location='Make_Offer.jsp'; </script>");
				}
				else
				{
					String sql="insert into make_offer(offer_price, user_id, sell_id, offer_status,seller_id,customer_name) values ('"+offer_price+"', '"+session.getAttribute("user_id")+"', '"+session.getAttribute("sell_id")+"', 'Not Checked','"+session.getAttribute("seller_id")+"','"+session.getAttribute("customer_name")+"' ) ";
					String insert = db.Insert(sql);
					out.println(insert);resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Offer price send successfully'); location='View_Specific_Car.jsp'; </script>");
				}
				
			}
	}

}
