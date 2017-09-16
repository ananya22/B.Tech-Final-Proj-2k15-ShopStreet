package Updation;

import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class EditCategory extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
                Dbclass db=new Dbclass();
                HttpSession session=request.getSession(false);  
            int id=0;
                if(session!=null){  
             String id1 =(String)session.getAttribute("id");
             id=Integer.parseInt(id1);
            }
                String category=request.getParameter("category");
                              
        
                Connection  con = db.dbConnect();
   try
  {
    // create our java preparedstatement using a sql update query
    PreparedStatement ps = con.prepareStatement(
      "UPDATE Category SET CategoryName = ? WHERE CategoryId = ? ");
 
    // set the preparedstatement parameters
    ps.setString(1,category);
    ps.setInt(2,id);
      // call executeUpdate to execute our sql update statement
    ps.executeUpdate();
    ps.close();
  }
  catch (SQLException se)
  {
    // log the exception
    out.println(se);
  }
   out.print("<html><body><alert>Record Updated Sucessfully</alert></body></html>");
               
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
 