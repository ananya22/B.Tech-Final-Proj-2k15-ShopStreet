package Updation;

import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class EditProduct extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
                Dbclass db=new Dbclass();
              int costperunit=0;
             String id1="";
              HttpSession session=request.getSession(false);  
            int id=0;
                
              id1 =(String)session.getAttribute("product");
               costperunit=Integer.parseInt(request.getParameter("cpu"));
             //id=Integer.parseInt(id1);
            
                Connection  con = db.dbConnect();
   try
  {
    // create our java preparedstatement using a sql update query
    PreparedStatement ps = con.prepareStatement(
      "UPDATE product SET costperunit = ? WHERE ProductId = ? ");
 
    // set the preparedstatement parameters
 
    ps.setInt(1,costperunit);
    ps.setString(2,id1);
 
    // call executeUpdate to execute our sql update statement
    ps.executeUpdate();
    out.print("<html><body><alert>Record Updated Sucessfully</alert></body></html>");
    ps.close();
  }
  catch (SQLException se)
  {
    // log the exception
    out.println(se);
  }
   
               
        }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    
   
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
		doGet(request,response);
	}
}
 