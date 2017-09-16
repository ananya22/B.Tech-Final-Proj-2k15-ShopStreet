package Registeruser;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Categorydetail extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();

                Product pd = new Product();
                String category=request.getParameter("category");
                              
                    pd.setCategory(category);
                
                System.out.println(pd.getCategory());
        try {
            String msg=pd.addCategory();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }        
          
               
	//RequestDispatcher rd = request.getRequestDispatcher("Admin/Pages/AddCategory.jsp");
	//	rd.forward(request,response);
            //    response.sendRedirect("/ecommerce/newjsp.jsp");
         response.sendRedirect("Admin/Pages/AddCategory.jsp");
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
 