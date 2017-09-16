<%-- 
    Document   : addtocart
    Created on : 26 Mar, 2015, 1:30:42 PM
    Author     : ANANYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<%
Cookie cookie = null;
	  Cookie[] cookies = null;
          String crt="";
  cookies = request.getCookies();
  int flag=0;
  int flag1=0;
        if( cookies != null ){
         out.println("<h2> Cookies Name and Value</h2>");
         for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            if((cookie.getName( )).compareTo("cart") == 0 ){
                              crt=cookie.getValue();
                                cookie.setMaxAge(365*60*60*24); 
                              out.print(" ur valueName : " + cookie.getName( ) + ",  ");
            out.print("ur value Value: " + cookie.getMaxAge()+" <br/>");
            out.print("ur value Value: " + cookie.getValue()+" <br/>");
            flag=1;

            }
            
            //out.print("Name : " + cookie.getName( ) + ",  ");
            //out.print("Value: " + cookie.getValue( )+" <br/>");
         }
         flag1=1;
      }
        else{
            
          //out.println("<h2>No cookies founds</h2>");
      }
      
 if(flag==0 || flag1==0)
 {
      crt=session.getId();
      crt=crt.substring(1,18);
             cookie = new Cookie("cart",crt);
             cookie.setMaxAge(365*60*60*24); 
             response.addCookie(cookie);
             out.println(
            "<h2>Session created :-> " + crt +"</h2>");
 }
 

  
    String product=request.getParameter("pid");
    
    int quantity=1;
    ResultSet rs=null;
    ResultSet rs1=null;
    Statement s=null;
    int price=0;
    session.setAttribute("scart", crt);
        try
        {
            s=connection.createStatement();
            rs1=s.executeQuery("select * from shoppingcart where productId = '"+product+"' AND sid='"+crt+"'");
            if(rs1.next())
            {
                quantity=rs1.getInt("quantity");
                quantity++;
                PreparedStatement ps = connection.prepareStatement(
      "UPDATE shoppingcart SET quantity = ? WHERE ProductId = ? ");
 
    // set the preparedstatement parameters
                ps.setInt(1,quantity);
                ps.setString(2,product);
      // call executeUpdate to execute our sql update statement
                ps.executeUpdate();
                ps.close();
                s.close();
                }
                else
                  {          
              int id=0;
               PreparedStatement ps1=connection.prepareStatement("insert into shoppingcart values(?,?,?,?,?)");
               Statement st=connection.createStatement();
                ResultSet r=st.executeQuery("select max(cartid) from shoppingcart");
                Statement s1=connection.createStatement();
                ResultSet r1=s1.executeQuery("select COSTPERUNIT from product where productid = '"+product+"'");
                if(r1.next())
                    price=r1.getInt(1);
                if(r.next())
                {
                    id=r.getInt(1);
                    st.close();
                    id++;
                    ps1.setInt(1, id);                    
                    ps1.setInt(2,quantity);
                    ps1.setInt(3,price);
                    ps1.setString(4,product);
                    ps1.setString(5,crt );
                    ps1.executeUpdate();
                    ps1.close();
                    
             }
                
        }
            connection.close();
        }
    catch(Exception e)
        {
                out.print(""+e.getMessage());
        }
        
        int c=(Integer)session.getAttribute("category");
      response.sendRedirect("GridImage.jsp?pid="+c);
    %>

