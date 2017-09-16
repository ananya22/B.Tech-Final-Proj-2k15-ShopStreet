package Registeruser;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Userlogin extends HttpServlet{
    private String urid;

 
    @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
                UserInfo user = new UserInfo();
                String urid=request.getParameter("uid");
                String emailid=request.getParameter("emailid");
                String que=request.getParameter("secque");
                String ans=request.getParameter("secans");
                String paswd=request.getParameter("pwd");
                String fn=request.getParameter("fname");
String ln=request.getParameter("lname");
                //String urid=request.getParameter("uid");
                System.out.println("before set :->" + urid +" "+ emailid+" "+ que+" "+ ans+" "+ paswd);
                    user.setQue(que);
                    user.setAns(ans);
                user.setPassword(paswd);
                user.setUid(urid);
                user.setEmail(emailid);
           user.setFn(fn);
           user.setLn(ln);
                System.out.println(user.getPassword()+" "+ user.getQue()+ " " +user.getAns()+" "+user.getUid()+" "+user.getEmail());
        try {
            String msg=user.setUserLogin();
            System.out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
System.out.println(ex);
        }
              
                
                System.out.println(user.getPassword()+" "+ user.getQue()+ " " +user.getAns()+" "+user.getUid());
              
        
                if(user!=null){
			request.setAttribute("User",user);
		}else{
			out.println("user does not exist!");
		}
	//RequestDispatcher rd = request.getRequestDispatcher("/ecommerce/address.jsp");
	///	rd.forward(request,response);
               response.sendRedirect("client/signin.jsp");
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
 