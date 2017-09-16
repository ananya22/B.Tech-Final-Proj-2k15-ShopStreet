package Registeruser;



import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class SetUserInfo extends HttpServlet{

 
    @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		UserInfo user = new UserInfo();
                String uid=request.getParameter("userId");
                String fname=request.getParameter("firstName");
                String lname=request.getParameter("lastName");
                String adrs=request.getParameter("userAddress");
              String adrs1=request.getParameter("userCity");
               int city=Integer.parseInt(request.getParameter("userCity"));
                String pin=request.getParameter("postCode");
                String email=request.getParameter("userEmail");
                String phon=request.getParameter("userPhone");
//                System.out.println(city);
        
          user.setFirstName(fname);
                user.setLastName(lname);
                    user.setUserId(uid);
                    user.setUserAddress(adrs);
                user.setUserCity(city);
                    user.setPostCode(pin);
                    user.setUserEmail(email);
                user.setUserPhone(phon);
                  
        try {
            String msg=user.setUser();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
                HttpSession session=request.getSession();  
            session.setAttribute("uid",user.getUserId());  
               System.out.println("Given data of beans");
                System.out.println(user.getFirstName() +" "+ user.getLastName() + " " +user.getUserId());
                System.out.println(user.getPostCode()+" "+ user.getUserAddress()+ " " +user.getUserPhone());
                System.out.println(user.getUserCity() + " "+ " " +user.getUserEmail());
        
                if(user!=null){
			request.setAttribute("User",user);
		}else{
			out.println("user does not exist!");
		}
	RequestDispatcher rd = request.getRequestDispatcher("/ecommerce/newjsp.jsp");
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
    @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
		doGet(request,response);
	}
}