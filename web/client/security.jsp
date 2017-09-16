<%@page import="java.sql.*"%> 
<%@ include file="dbconnect.jsp"%>
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
            <section id="main">
		<div class="login-content">
		<div class="container">
                    <%
                            String id=request.getParameter("id");
                            String query="select * from userlogin where userid='"+id+"' OR emailid='"+id+"'";
                            Statement s=connection.createStatement();
                            ResultSet rs=s.executeQuery(query);
                            if(rs.next())
                            {
                    %>
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
                	<li><a href="index.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
                    <form action="changepwd.jsp" method="post">
			<div class="login-signup-form">
				<div class="col-md-5 login text-center">
					<h4>Security Detail</h4>
										<div class="cus_info_wrap">
						<label class="labelTop">
						Security Question:
						<span class="require">*</span>
						</label>
                                                                                    <input type="text"  name="secque"  value="<%=rs.getString("secque")%>" disabled>
					</div>
					<div class="clearfix"></div>
					<div class="cus_info_wrap">
						<label class="labelTop">
						Security Answer:
						<span class="require">*</span>
						</label>
						<input type="text"  name="uans" >
                                                <input type="hidden"  name="sans"  value="<%=rs.getString("seqans")%>" >
                                                <input type="hidden"  name="uid"  value="<%=rs.getString("userid")%>" id="sans" >
					</div>
                                        
					<div class="clearfix"></div>
					
				<div class="botton1">
					<input type="submit" value="CONTINUE" class="botton" id="btn1">
				</div>
                                        </div>
	
					</div>
                    </form>
<div>
       <font color="red"><span class="error" style="display:none"> Please enter Data</span>
       <span class="e" style="display:none"> Not Match the Detail</span>
       </font>
       <font color="green"><span class="s" style="display:none"> Match the Detail..</span>
            </div>	
				
				                    <%
                            s.close();}
                            else
                            {
                                %>
                                <div class="col-md-5 benefits">
                                    <h4><font color="red">NOT FOUND ID</font></h4>
					<p>Sorry Make Sure that a id u enter is right</p>
					<p>Please Checkout Your id..</p>
					
				</div>
				<div class="clearfix"></div>
                                <%
                            }
                                %>
		</div>
		</div>
		
		</section>
                <jsp:include page="contactsection.jsp"/>
                <jsp:include page="footer.jsp" />
            
</body>
</html>