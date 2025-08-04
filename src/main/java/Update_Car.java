

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
 * Servlet implementation class Update_Car
 */
public class Update_Car extends HttpServlet 
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
		
		String sell_id=req.getParameter("sell_id");
		String brand= req.getParameter("brand");
		String transmission=req.getParameter("transmission");
		String location=req.getParameter("location");
		String fuel= req.getParameter("fuel");
		String price=req.getParameter("price");
		String car_name=req.getParameter("car_name");
		String insurance=req.getParameter("insurance");
		String reg_year=req.getParameter("reg_year");
		String kilometer=req.getParameter("kilometer");
		String description=req.getParameter("description");
		String owner=req.getParameter("owner");
		String photo_1=req.getParameter("photo_1");
		String photo_2=req.getParameter("photo_2");
		String photo_3=req.getParameter("photo_3");
		String photo_4=req.getParameter("photo_4");
		String photo_5=req.getParameter("photo_5");
		String photo_6=req.getParameter("photo_6");
		String rcbook=req.getParameter("rcbook");
		String event = req.getParameter("submit");
		
		
	
	
		
		
		if(event.equals("UPDATE"))
		{
			try
			{
				String update=db.update("update sell_car set brand='"+brand+"',car_name='"+car_name+"',reg_year='"+reg_year+"',fuel='"+fuel+"',insurance='"+insurance+"',kilometer='"+kilometer+"',transmission='"+transmission+"',location='"+location+"',owner='"+owner+"',photo_1='"+photo_1+"', photo_2='"+photo_2+"' , photo_3='"+photo_3+"',photo_4='"+photo_4+"',photo_5='"+photo_5+"',photo_6='"+photo_6+"',rcbook='"+rcbook+"',description='"+description+"', price='"+price+"' where sell_id='"+session.getAttribute("sell_id")+"' ");
				out.println(update);
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\"> alert('Update Succesfull'); location='Show_My_Cars.jsp' </script> ");
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
        
				
	}
}
