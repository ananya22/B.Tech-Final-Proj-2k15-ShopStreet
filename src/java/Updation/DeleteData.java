package Updation;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class DeleteData extends HttpServlet{

 Connection con=null;
    @Override
	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Dbclass db=new Dbclass();
                           out.println("<!DOCTYPE html>");
                           System.out.println("Hello");
            out.println("<html>");
            out.println("<head>");
            out.println("<title> EditCategory</title>");            
            out.println("</head>");
   out.println("<body>");
   
                 con=db.dbConnect();
                 ResultSet rs=null;
                String id=request.getParameter("id");
                Statement stmt1=null;
     try {
         stmt1 = con.createStatement();
          String sql="select * from shoppingcart where cartID= '"+id+"'";
                             rs=   stmt1.executeQuery(sql);
                             if(rs.next())
                             {
                                 stmt1.executeUpdate("delete  from shoppingcart where cartID = '"+id+"'");
                                  System.out.println("Record Deleted");
                             }
                             else
                             {
                                System.out.println("Record not found");  
                             }
         } catch (SQLException ex) {
                                System.out.println(ex);  
     
         
     }
     	
//response.sendRedirect("Admin/Pages/ProductUpdation.jsp");
     
         out.println("</body>");
            out.println("</html>");
                          
                   
     } 
               
                
        

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
		doGet(request,response);
	}
}