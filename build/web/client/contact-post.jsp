<%@ include file="dbconnect.jsp" %>
<%
    String name=request.getParameter("name");
    String usermail=request.getParameter("usermail");
    String userphon=request.getParameter("userphon");
    String msj=request.getParameter("msj");
    
   try{
                           int id=0;
                           
                           if(connection!=null) {
                             PreparedStatement ps=connection.prepareStatement("insert into contactdetail values(?,?,?,?,?)");
                            Statement st=connection.createStatement();
                                ResultSet rs=st.executeQuery("select max(contactid) from contactdetail");
                   if(rs.next())
                    {
                            id=rs.getInt(1);
                             
                            st.close();
                            id++;
                          
                            ps.setInt(1,id);
                            ps.setString(2,name);
                            ps.setString(3,usermail);
                            ps.setString(4,userphon);
                            ps.setString(5,msj);
                            ps.executeUpdate();
                            ps.close();
                        connection.close();
                            str="Supplier Inserted Successfully";
                        
                   }
                }
           }                   
                    catch(Exception e){
                str +=e;
         }
		 
	
    
    %>