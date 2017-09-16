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
                      Payment COmpleted
                    </li>&nbsp;
                 
                </ul>
                <ul class="previous">
                	<li><a href="security.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
       <div class="col-md-5 benefits">
                                    <h4><font color="green">Thank You For purchasing our site..</font></h4>
                                    <p><font color="black">Your OrderId and Orderdetail Submitted to your Mail..</font></p>
                                    <p><font color="black">Keep visiting Us...</font></p>
                                    <p><font color="black">You will get your product withn one or two day...</font></p>
                                  
                                </div>
                                
                                			
		</div>
		</div>
		
		</section>
                <jsp:include page="contactsection.jsp"/>
                <jsp:include page="footer.jsp" />
            
</body>
</html>        
        
   