

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
 * Servlet implementation class Show_My_Cars
 */
public class Show_My_Cars extends HttpServlet 
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
		
		
		if(event.equals(""))
		{
			out.println("<script type=\"text/javascript\"> alert('"+session.getAttribute("admin_msg")+"'); location='Show_My_Cars.jsp' </script>  ");
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
				
		
		
     

		
		



		
		if (event.equals("Update")) 
		{
			resp.sendRedirect("Update_Car.jsp");
			
		}
		
		if(event.equals("View Details"))
		{
			resp.sendRedirect("View_Own_Specific_Car_Details.jsp");
		}
		
		
		if(event.equals(""))
		{
			resp.setContentType("text/html");
        	//out.println("<script type=\"text/javascript\"> alert('<%=session.getAttribute("admin_msg")%>'); location='Home_Page.jsp';  </script> ");
		}
		
		
	}
}
