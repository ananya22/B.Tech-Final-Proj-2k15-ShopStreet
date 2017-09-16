<%@page import="java.sql.*"%> 
<%@ include file="dbconnect.jsp"%>
                                      <%
ResultSet rs=null;
String pid=request.getParameter("pid"); 
String name=request.getParameter("name"); 
String Reviews=request.getParameter("Reviews"); 
String email=request.getParameter("email"); 
String xyz=request.getParameter("p"); 
try
{

 PreparedStatement ps=connection.prepareStatement("insert into review values(?,?,?,?,?)");
                            Statement st=connection.createStatement();
                                 rs=st.executeQuery("select max(reviewid) from review");
                   if(rs.next())
                    {
                            int id=rs.getInt(1);
                             
                            st.close();
                            id++;
                          
                            ps.setInt(1,id);
                            ps.setString(2,pid);
                            ps.setString(3,Reviews);
                            ps.setString(4,email);
                            ps.setString(5,name);
                            
                            ps.executeUpdate();
                            ps.close();
                     //       con.close();
                            str="Review Adeed Successfully";
                        session.setAttribute("rev", str);
                   } 

response.sendRedirect("DisplayImage.jsp?xyz="+xyz);

}
catch(Exception e)
{
    System.out.println(e);
}
    %>
