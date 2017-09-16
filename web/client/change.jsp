<%@ include file="dbconnect.jsp"%>
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
                      Security Check
                    </li>&nbsp;
                 
                </ul>
                <ul class="previous">
                	<li><a href="security.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
<%
    String pwd=request.getParameter("pwd");
    String npwd=request.getParameter("npwd");
  
    String uid=request.getParameter("uid");
    String pwd1=request.getParameter("pwd1");
    
       
    String username=(String)session.getAttribute("userName");
 
    if(uid.equals(username) && npwd.equals(pwd))
    {
 
    try
  {
    
    // create our java preparedstatement using a sql update query
    PreparedStatement ps = connection.prepareStatement(
      "UPDATE userlogin SET password = ? WHERE userId = ? AND password = ? ");
 
    // set the preparedstatement parameters
    ps.setString(1,npwd);
    ps.setString(2,uid);
     ps.setString(3,pwd1);
      // call executeUpdate to execute our sql update statement
    ps.executeUpdate();
    ps.close();
    %>
       <div class="col-md-5 benefits">
                                    <h4><font color="green">Your Password change Successfully</font></h4>
                                    <p><font color="black">Please , Login to your account with current password</font></p>
                                    
                                </div>
						
				                    <%
                            }
                                                    
                            catch(Exception e)
                            {out.println("exception :->"+e);
                                %>
                                
                                <div class="col-md-5 benefits">
                                    <h4><font color="red">Sorry!!! We are heartly regreat of this..</font></h4>
                                    <p><font color="red">We will solve it shortly</font></p>
                                    <p><font color="red">Thank you for yur pations..</font></p>
                                </div>
			
                                <%
                            }
    }else{
                                %>
                                <div class="col-md-5 benefits">
                                    <h4><font color="red">Check the detail u provided</font></h4>
                                    <p><font color="red">Sorry Make Sure that a id u enter is right</font></p>
                                     <p><font color="red">Sorry Make Sure that u type a coorrect password</font></p>
                                    <p><font color="red">Please Checkout Your id..</font></p>
                                </div>

                                <%}%>
		</div>
		</div>
		
		</section>
                <jsp:include page="contactsection.jsp"/>
                <jsp:include page="footer.jsp" />
            
</body>
</html>        
        
   