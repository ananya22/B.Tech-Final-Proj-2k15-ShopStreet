package Registeruser;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Supplierdetail extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();

                Product pd = new Product();
                String supplier=request.getParameter("sname");
                 String email=request.getParameter("eid");
                 String mblno=request.getParameter("mbno");
                    pd.setSupplier(supplier);
                    pd.setMbno(mblno);
                    pd.setEid(email);
                System.out.println(pd.getSupplier()+" "+pd.getEid()+" "+pd.getMbno());
        try {
            String msg=pd.addSupplier();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }        
            response.sendRedirect("Admin/Pages/AddSupplier.jsp");
               
	//RequestDispatcher rd = request.getRequestDispatcher("Admin/Pages/AddSupplier.jsp");
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
    
    
        
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
		doGet(request,response);
	}
}
 