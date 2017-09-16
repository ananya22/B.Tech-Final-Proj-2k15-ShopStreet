<%-- 
    Document   : addtocart
    Created on : 26 Mar, 2015, 1:30:42 PM
    Author     : ANANYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<%/*
Cookie cookie = null;
	  Cookie[] cookies = null;
          String crt="49BFFEED04E006162";

             cookie = new Cookie("cart",crt);
             cookie.setMaxAge(365*60*60*24); 
             response.addCookie(cookie);
             out.println(
            "<h2>Session created :-> " + crt +"</h2>");

 

  
    session.setAttribute("scart", crt);
       */

StringBuffer url=request.getRequestURL();
//if(url==null)
  //  url=StringBuffer("index.jsp");
             out.println(
            "<h2>URl :-> " + url +"</h2>");


%>

    %>
      

