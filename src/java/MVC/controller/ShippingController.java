/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MVC.controller;


import Registeruser.SetUserInfo;
import Registeruser.UserInfo;
import java.io.*;

import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import MVC.Model.Bean.shippingBean;

import java.sql.*;
import java.util.logging.*;
/**
 *
 * @author Deepika
 */
public class ShippingController extends HttpServlet {
 @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
                    
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		shippingBean user = new shippingBean();
                out.println("<Html><head><title>OrderDetail</title></head><body>");
                String uid=request.getParameter("userid");
                String fname=request.getParameter("firstName");
                String lname=request.getParameter("lastName");
                String adrs=request.getParameter("userAddress");
              String adrs1=request.getParameter("userCity");
               int city=Integer.parseInt(request.getParameter("userCity"));
                String pin=request.getParameter("postCode");
                String email=request.getParameter("userEmail");
                String phon=request.getParameter("userPhone");
//                System.out.println(city);
        
                    HttpSession session=request.getSession();  
                
//                    Dbclass db=new  Dbclass();
            String crt=(String)session.getAttribute("scart");
            
          user.setFirstName(fname);
                user.setLastName(lname);
                    user.setUserId(uid);
                    user.setUserAddress(adrs);
                user.setUserCity(city);
                    user.setPostCode(pin);
                    user.setUserEmail(email);
                user.setUserPhone(phon);
                user.setCrt(crt);
                int id ;
        try {
            
            String msg=user.shippingdetail();
            id=user.getId();
         Cookie cookie = null;
	  Cookie[] cookies = null;
         // String crt="";
  cookies = request.getCookies();
        if( cookies != null ){
         //out.println("<h2> Cookies Name and Value</h2>");
         for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            if((cookie.getName( )).compareTo(crt) == 0 ){
                              cookie.setMaxAge(-1);
           //                   session.setAttribute("scart", crt);
            }
         }
        }
          //session.setAttribute("shipid", id);
            out.println("<alert>" +msg+"</alert>");
        } catch (SQLException ex) {
            Logger.getLogger(SetUserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            /*session.setAttribute("uid",user.getUserId());  
               try
               {
                    crt="";
            
                 
            
                   OrderBean order=new OrderBean();
                                      order.setOrderDate(order.todayDate());
                                      order.setCrt(crt);
                                     order.setUserId(user.getUserId());
                                     order.setShippingId(user.getId());
                                     order.setOrder();
               }catch(Exception e)
               {
                   out.println("Exception "+ e);
               }*/
              //  RequestDispatcher rd = request.getRequestDispatcher("/OrderDetail");
	//	rd.forward(request,response);
            //    response.sendRedirect("/ecommerce/newjsp.jsp");
               out.println("</body></html>");
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
