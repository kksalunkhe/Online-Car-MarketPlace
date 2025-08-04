

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
 * Servlet implementation class Admin_View_Specific_Car
 */
public class Admin_View_Specific_Car extends HttpServlet
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
		String brand = req.getParameter("brand");
		String car_name = req.getParameter("car_name");
		String reg_year = req.getParameter("reg_year");
		String owner = req.getParameter("owner");
		String price = req.getParameter("price");
		String insurance=req.getParameter("insurance");
		String location=req.getParameter("location");
		String fuel=req.getParameter("fuel");
		String transmission=req.getParameter("transmission");
		String kilometer=req.getParameter("kilometer");
		String event=req.getParameter("submit");
		String admin_msg=req.getParameter("admin_msg");
		
		out.println(admin_msg);
		
		session.setAttribute("sell_id", sell_id);
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
		session.setAttribute("admin_msg", admin_msg);
		
		if(event.equals("Send"))
		{
			try
			{
				
				String update=db.update("update sell_car set admin_msg='"+admin_msg+"' where sell_id='"+sell_id+"'");
				out.println(update);
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\"> alert('Message send Succesfully'); location='Admin_View_Specific_Car.jsp' </script> ");
			
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
		
	}
	
}
