
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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class Payment
 */
public class Payment extends HttpServlet 
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
			
			String card_number=req.getParameter("card_number");
			String card_expiry=req.getParameter("card_expiry");
			String cvc=req.getParameter("cvc");
			String card_name=req.getParameter("card_name");
			String user_email=req.getParameter("user_email");
			String payment_amount="5000";  
			String event=req.getParameter("submit");
			
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String payment_date = formatter.format(date);
			
			
			if(event.equals("Pay Now"))
			{
				if (card_number.equals("") || card_expiry.equals("") || cvc.equals("") || card_name.equals("") || card_name.equals("") )
				{
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Something is Empty..!!'); location='Payment.jsp' </script>  ");
				}
				else
				{
					String sql="insert into payment(payment_amount,payment_date,card_number,card_expiry,cvc,card_name,user_email, user_id, sell_id) values('"+payment_amount+"','"+payment_date+"','"+card_number+"','"+card_expiry+"','"+cvc+"','"+card_name+"','"+user_email+"', '"+session.getAttribute("user_id")+"', '"+session.getAttribute("sell_id")+"')";
					String insert = db.Insert(sql);
					
					String insert1= db.Insert("insert into car_booking (user_id, photo_1, brand, car_name, price, reg_year, fuel, location, klm, sell_id, seller_id, seller_name, payment_date, payment_amount,contact,email,city,customer_name, customer_contact, customer_email)values('"+session.getAttribute("user_id")+"','"+session.getAttribute("photo_1")+"','"+session.getAttribute("brand")+"','"+session.getAttribute("car_name")+"','"+session.getAttribute("price")+"','"+session.getAttribute("reg_year")+"','"+session.getAttribute("fuel")+"','"+session.getAttribute("location")+"','"+session.getAttribute("kilometer")+"','"+session.getAttribute("sell_id")+"','"+session.getAttribute("seller_id")+"','"+session.getAttribute("seller_name")+"','"+payment_date+"','"+payment_amount+"','"+session.getAttribute("seller_contact")+"','"+session.getAttribute("seller_email")+"','"+session.getAttribute("seller_city")+"','"+session.getAttribute("customer_name")+"', '"+session.getAttribute("contact")+"', '"+session.getAttribute("email")+"')");
					
					out.println(insert1);
					
					
					String update =db.update("update sell_car set status='Not Available' where sell_id='"+session.getAttribute("sell_id")+"'");
					out.println(update);
					
					resp.setContentType("text/html");
					out.println("<script type=\"text/javascript\"> alert('Payment Successfull...Car Booked'); location='Show_My_Booking_Details.jsp' </script>  ");
				}
				
			}
	}
}