<%@page import="java.sql.*"%> 
<%@ include file="dbconnect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uid=request.getParameter("uid");
    String pwd=request.getParameter("pwd");

%>
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
            <section id="main">
		<div class="login-content">
		<div class="container">

                <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                      Welcome,<%=uid%>
                    </li>&nbsp;
                 
                </ul>
                       <div class="clearfix"></div>
			   </div>
                	
                                <div class="col-md-5 benefits">

<%
        try
  {
    // create our java preparedstatement using a sql update query
    PreparedStatement ps = connection.prepareStatement(
      "UPDATE userlogin SET password = ? WHERE userId = ? ");
 
    // set the preparedstatement parameters
    ps.setString(1,pwd);
    ps.setString(2,uid);
      // call executeUpdate to execute our sql update statement
    ps.executeUpdate();
    ps.close();
    %>
               <h4><font color="green">Updated Your Password</font></h4>
                                    <p><font color="green">your Password Updated Successfully</font></p>
                                    <p><font color="green">Please keep change your password after a month..</font></p>


<%
                                            }
                                            catch (SQLException se)
  {
    // log the exception
    %>
       <h4><font color="green">Sorry,Your Password Not Updated</font></h4>
                                    <p><font color="green">Something Went Wrong!!!</font></p>
                                    <p><font color="green">Please keep change your password after a month..</font></p>

    
    <%
  }
    %>
                                </div>
			
                          </div>
		</div>
		
		</section>
     
                <jsp:include page="footer.jsp" />
            
</body>
</html>