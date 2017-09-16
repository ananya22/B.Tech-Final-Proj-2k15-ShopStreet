<%@ include file="dbconnect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 ResultSet rs=null;
PreparedStatement ps=null;
//$CategoryID = ($_REQUEST["CategoryID"] <> "") ? trim( addslashes($_REQUEST["CategoryID"])) : "";
int CategoryID =(Integer.parseInt(request.getParameter("CategoryID")));
if(CategoryID  > 0)
{
       int cid=0;
       String t="";
       try{
	String  query="select * from  producttype where categoryId = "+ CategoryID+" ORDER BY TYPENAME ";
	 ps=connection.prepareStatement(query);
	
	rs=ps.executeQuery();


    
    %>
    <select name="type" class="form-control"  onchange="TypeID(this);">
	<option value="">Select Product Type</option>
	<% while(rs.next())
	{
            t=rs.getString(2);
             cid=Integer.parseInt(rs.getString("TypeID"));
             session.setAttribute("t", t);
            %>    
            <option value="<%=cid%>"><%=t%></option>
        <%
        } %>
</select>
<%
       
        ps.close();
       }catch(Exception e)
       {
           e.printStackTrace();
       }
   }
%>