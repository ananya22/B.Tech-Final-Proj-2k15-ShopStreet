package Registeruser;



import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class setfeed extends HttpServlet{

 
    @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		feed f = new feed();
                String name=request.getParameter("name");
                String email=request.getParameter("email");
                String phone=request.getParameter("phone");
                String msg=request.getParameter("msg");
              
          f.setName(name);
                f.setEmail(email);
                    f.setPhone(phone);
                    f.setMsg(msg);
                  
               System.out.println("Given data of beans");
                System.out.println(f.getName() + " " +f.getEmail()+ " " +f.getPhone()+ " " +f.getMsg());
                
                if(f!=null){
			request.setAttribute("Users",f);
		}else{
			out.println("user does not exist!");
		}
	//RequestDispatcher rd = request.getRequestDispatcher("/client/index.jsp");
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