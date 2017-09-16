<%@page import="java.sql.*"%> 
<%@ include file="dbconnect.jsp"%>
 
<%@ include file="getcon.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="script.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!-- dropdown -->
		  <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
    
</head>
<body>
	    <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
<article id="mainview">
   
    <table border="0" align="center" cellpadding="5" cellspacing="5">
<!-- main content -->
<%
ResultSet rs=null;
try
{
String nam=request.getParameter("xyz"); 
rs=st.executeQuery("select * from product where productname='"+nam+"'");
 
if(rs.next())
{
 String iname=rs.getString("productname");
     String iname1=rs.getString("mfgdate");
      String iname2=rs.getString("expdate");

    %>
<tr>
    <td><img onclick="zoom" src="/Web/<%=rs.getString("image") %>" 
         width="400" height="400" /></td>
    <td>          <h4>...........</h4>     </td>
<td>


<ul id="items">
        <li>
      
             <%
   iname=rs.getString("productname");
    %>
    <h1><a href=DisplayImage.jsp?xyz=<%=iname%>><%=iname%></a></h1>
           <%
  iname2=rs.getString("costperunit");
     
    %> <strong><a><%=iname2%></a></strong>
      </li>
        
    </ul>
</td>
</tr>
<%
}
}
catch(Exception e)
{
out.print(""+e.getMessage());
}
%>
</article>


    </table>
    
         <jsp:include page="footer.jsp"/>
    </body>
</html>



