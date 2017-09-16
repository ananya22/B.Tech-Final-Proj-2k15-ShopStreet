package Registeruser;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Producttype extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();

                Product pd = new Product();
                
                
                String type=request.getParameter("type");
                 int category=Integer.parseInt(request.getParameter("category"));
                 int brand=Integer.parseInt(request.getParameter("brand"));
                    pd.setType(type);
                    pd.setCid(category);
                    pd.setSid(brand);
                System.out.println(pd.getType()+" "+pd.getCid()+" "+pd.getSid());
        try {
            String msg=pd.addProducttype();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }        
          
                response.sendRedirect("Admin/Pages/AddProType.jsp");
               
	//RequestDispatcher rd = request.getRequestDispatcher("Admin/Pages/AddProType.jsp");
	//	rd.forward(request,response);
            //    response.sendRedirect("/ecommerce/newjsp.jsp");
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
 