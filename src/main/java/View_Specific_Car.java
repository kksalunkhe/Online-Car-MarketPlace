

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
 * Servlet implementation class View_Specific_Car
 */
public class View_Specific_Car extends HttpServlet 
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
		
		String sell_id = req.getParameter("sell_id");
		String seller_id = req.getParameter("seller_id");
		String seller_name = req.getParameter("seller_name");
		String brand = req.getParameter("brand");
		String car_name = req.getParameter("car_name");
		String photo_1 = req.getParameter("photo_1");
		String reg_year = req.getParameter("reg_year");
		String owner = req.getParameter("owner");
		String price = req.getParameter("price");
		String insurance=req.getParameter("insurance");
		String location=req.getParameter("location");
		String fuel=req.getParameter("fuel");
		String transmission=req.getParameter("transmission");
		String kilometer=req.getParameter("kilometer");
		String seller_email=req.getParameter("seller_email");
		String seller_contact=req.getParameter("seller_contact");
		String seller_city=req.getParameter("seller_city");
		
		 
		
		String event=req.getParameter("submit");
		
		
		
		if(event.equals("Make Offer"))
		{
			resp.sendRedirect("Make_Offer.jsp");
		}
		
		if(event.equals("Pay for advance Booking"))
		{
			session.setAttribute("sell_id", sell_id);
			session.setAttribute("seller_id", seller_id);
			session.setAttribute("seller_name", seller_name);
			session.setAttribute("photo_1", photo_1);
			session.setAttribute("brand", brand);
			session.setAttribute("car_name", car_name);
			session.setAttribute("reg_year", reg_year);
			session.setAttribute("owner", owner);
			session.setAttribute("price", price);
			session.setAttribute("insurance", insurance);
			session.setAttribute("location", location);
			session.setAttribute("fuel", fuel);
			session.setAttribute("transmission", transmission);
			session.setAttribute("kilometer", kilometer);
			session.setAttribute("seller_email", seller_email);
			session.setAttribute("seller_contact", seller_contact);
			session.setAttribute("seller_city", seller_city);
			
			resp.sendRedirect("Payment.jsp");
		}
	}
}
