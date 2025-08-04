

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
 * Servlet implementation class Admin_Show_Cars
 */
public class Admin_Show_Cars extends HttpServlet
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
		
		String event=req.getParameter("submit");
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
		String photo_1=req.getParameter("photo_1");
		String photo_2=req.getParameter("photo_2");
		String photo_3=req.getParameter("photo_3");
		String photo_4=req.getParameter("photo_4");
		String photo_5=req.getParameter("photo_5");
		String photo_6=req.getParameter("photo_6");
		String rcbook=req.getParameter("rcbook");
		
		
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
		session.setAttribute("photo_1", photo_1);
		session.setAttribute("photo_2", photo_2);
		session.setAttribute("photo_3", photo_3);
		session.setAttribute("photo_4", photo_4);
		session.setAttribute("photo_5", photo_5);
		session.setAttribute("photo_6", photo_6);
		session.setAttribute("rcbook", rcbook);
		
			if(event.equals("View Details"))
			{
				resp.sendRedirect("Admin_View_Specific_Car.jsp");
			}
			
			if(event.equals("Delete")) 
			{
				

	            String sql = "delete from sell_car where sell_id ='"+sell_id+"' ";
	            String delete = db.delete(sql);
						
				resp.setContentType("text/html");
	            out.println("<script type=\"text/javascript\">");
	            out.println("alert('Product Deleted...');");
	            out.println("location='Show_My_Cars.jsp';");
	            out.println("</script>");
						  
						
			}
		
		}
	
}
