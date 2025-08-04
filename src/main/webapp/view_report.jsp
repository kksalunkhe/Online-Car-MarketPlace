
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
       String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("User List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("report\\user_list.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Sell Car List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("report\\sell_car.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Payment List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("report\\payment.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Make Offer"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("report\\make_offer.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Booking List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("report\\booking1.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       //id & date wise
       if(event.equals("Id wise User List"))
       {
    	   int id1= Integer.parseInt( request.getParameter("id"));
    	   
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("report\\id_wise_user_list.jasper"));//your report_name.jasper file
           Map parameters = new HashMap();
           parameters.put("id",id1);
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
       if(event.equals("Id wise Sell Car list"))
       {
    	   int id1= Integer.parseInt( request.getParameter("id"));
    	   
           Connection cn = null;
           try 
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

           } 
           catch (Exception ex) 
           {
               ex.printStackTrace();
           }

           File reportFile = new File(application.getRealPath("report\\id_wise_sell_car.jasper"));//your report_name.jasper file
           Map parameters = new HashMap();
           parameters.put("id",id1);
           byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

           response.setContentType("application/pdf"); 
           response.setContentLength(bytes.length);
           ServletOutputStream outStream = response.getOutputStream();
           outStream.write(bytes, 0, bytes.length);
           outStream.flush();
           outStream.close();
                  
      }
       
       
      
    	 
    	 
    	  
    	
    	  if(event.equals("Date wise Sell Car list"))
          {
    		  
        	  String date1 = request.getParameter("date1");
        	  String date2 = request.getParameter("date2");
       	   
              Connection cn = null;
              try 
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

              } 
              catch (Exception ex) 
              {
                  ex.printStackTrace();
              }

              File reportFile = new File(application.getRealPath("report\\date_between_report_sell_car.jasper"));//your report_name.jasper file
              Map parameters = new HashMap();
              
              parameters.put("date1",date1);
              parameters.put("date2",date2);
              
              byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

              response.setContentType("application/pdf"); 
              response.setContentLength(bytes.length);
              ServletOutputStream outStream = response.getOutputStream();
              outStream.write(bytes, 0, bytes.length);
              outStream.flush();
              outStream.close();
                     
         } 
    	  
    	  
    	  if(event.equals("Date wise Booking list"))
          {
    		  
        	  String date1 = request.getParameter("date1");
        	  String date2 = request.getParameter("date2");
       	   
              Connection cn = null;
              try 
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_marketplace","root","root");

              } 
              catch (Exception ex) 
              {
                  ex.printStackTrace();
              }

              File reportFile = new File(application.getRealPath("report\\date_between_report_booking_list.jasper"));//your report_name.jasper file
              Map parameters = new HashMap();
              
              parameters.put("date1",date1);
              parameters.put("date2",date2);
              
              byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

              response.setContentType("application/pdf"); 
              response.setContentLength(bytes.length);
              ServletOutputStream outStream = response.getOutputStream();
              outStream.write(bytes, 0, bytes.length);
              outStream.flush();
              outStream.close();
                     
         } 
    	  

            
        %>
    </body>
</html>
