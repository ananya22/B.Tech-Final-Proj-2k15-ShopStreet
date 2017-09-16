
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
                      Security Check
                    </li>&nbsp;
                 
                </ul>
                <ul class="previous">
                	<li><a href="security.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
                
                    <form action="change.jsp" method="get">
			<div class="login-signup-form">
				<div class="col-md-5 login text-center">
					<h4>Change Password</h4>
					
                                                                                            <div class="cus_info_wrap">
						<label class="labelTop">
						 Password:
						<span class="require">*</span>
						</label>
						<input type="password"  name="pwd1" >
					</div>
                                          <div class="cus_info_wrap">
						<label class="labelTop">
						New Password:
						<span class="require">*</span>
						</label>
						<input type="password"  name="npwd" >
					</div>
					<div class="clearfix"></div>
					  <div class="cus_info_wrap">
						<label class="labelTop">
						Retype Password:
						<span class="require">*</span>
						</label>
						<input type="password"  name="pwd" >
					</div>
                                        
					<div class="clearfix"></div>
                                                                                            <div class="cus_info_wrap">
						<label class="labelTop">
						UserId :
						<span class="require">*</span>
						</label>
                                                                                                <input type="text"  name="uid" placeholder="Enter userid" >
					</div>
                                        
					<div class="clearfix"></div>

				<div class="botton1">
					<input type="submit" value="CHANGE" class="botton" id="btn1">
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
				
			
		</div>
		</div>
		
		</section>
                <jsp:include page="contactsection.jsp"/>
                <jsp:include page="footer.jsp" />

</body>
</html>        
        
   