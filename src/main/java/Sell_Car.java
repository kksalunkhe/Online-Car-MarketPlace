

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.awt.Event;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class Sell_Car
 */
public class Sell_Car extends HttpServlet 
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
			String photo1=req.getParameter("photo1");
			String photo2=req.getParameter("photo2");
			String photo3=req.getParameter("photo3");
			String photo4=req.getParameter("photo4");
			String photo5=req.getParameter("photo5");
			String photo6=req.getParameter("photo6");
			String rcbook=req.getParameter("rcbook");
			String event = req.getParameter("submit");
			
	
			
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String sell_date = formatter.format(date);

			if(event.equals("ADD"))
			{
				try
				{
					String sql="insert into sell_car (seller_id,seller_name,brand,car_name,reg_year,fuel,insurance,kilometer,transmission,location,owner,photo_1,photo_2,photo_3,photo_4,photo_5,photo_6,rcbook,description,price,sell_date,seller_email,seller_contact,seller_city,status ) values('"+session.getAttribute("user_id")+"','"+session.getAttribute("customer_name")+"','"+brand+"','"+car_name+"','"+reg_year+"','"+fuel+"','"+insurance+"','"+kilometer+"','"+transmission+"','"+location+"','"+owner+"','"+photo1+"','"+photo2+"','"+photo3+"','"+photo4+"','"+photo5+"','"+photo6+"','"+rcbook+"','"+description+"','"+price+"','"+sell_date+"','"+session.getAttribute("email")+"','"+session.getAttribute("contact")+"','"+session.getAttribute("city")+"','Available')";
					String insert = db.Insert(sql);
					out.println(insert);
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Car Added Succesfully'); location='Sell_Car.jsp' </script>  ");
				}
				catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
		}
}
