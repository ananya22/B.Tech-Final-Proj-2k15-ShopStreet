package Registeruser;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Productadd extends HttpServlet{
     @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();

                Product addpro = new Product();
                
                String Pname=request.getParameter("Pname");                
                  int ptype=Integer.parseInt(request.getParameter("ptype"));
                  String cost=request.getParameter("cost");
                String vat=request.getParameter("vat");
                String available=request.getParameter("available");
                String image=request.getParameter("image");
              String description=request.getParameter("description");
              String charge=request.getParameter("charge");
                String mfg=request.getParameter("mfg");
                String exp=request.getParameter("exp");
                String valid=request.getParameter("valid");
               String flag=request.getParameter("flag");
             
                  
                  
                    addpro.setPname(Pname);
                    addpro.setPtype(ptype);
                    addpro.setCost(cost);
                    addpro.setVat(vat);
                    addpro.setAvailable(available);
                    addpro.setImage(image);
                    addpro.setDescription(description);
                    addpro.setCharge(charge);
                    addpro.setMfg(mfg);
                    addpro.setExp(exp);
                    addpro.setValid(valid);
                    addpro.setFlag(flag);
                    
                    try {
            String msg=addpro.addProduct();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }        
          
               
	RequestDispatcher rd = request.getRequestDispatcher("Admin/Pages/addproduct.jsp");
		rd.forward(request,response);
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
 