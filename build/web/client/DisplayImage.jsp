<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.*"%> 
<%@ include file="getcon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Pakhi an E-Commerce online Shopping Category Flat Bootstarp responsive Website Template| Single :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pakhi Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>
<link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/hover_pack.js"></script>
<link rel="stylesheet" href="css/etalage.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 800,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
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
	<!-- header-section-starts -->
         
            <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
		<!-- start-single-page -->
	<!-- content -->
	<div class="container">
		<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.html" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       Product
                    </li> 
                       					<li>Description</li>
                </ul>
                <ul class="previous">
                	<li><a href="index.html">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
	<!-- start content -->
<div class="women_main">
<div class="container">

			<div class="row single">
				<div class="col-md-9 span-single">
				  <div class="single_left">

                                      <%
String proid="";
                                      ResultSet rs=null;
try
{
String nam=request.getParameter("xyz"); 
rs=st.executeQuery("select * from product where productname='"+nam+"'");
 
if(rs.next())
{
String details=rs.getString("mfgdate");
proid=rs.getString("ProductId");
String price=rs.getString("expdate");
String costperunit=rs.getString("costperunit");
String description=rs.getString("description");
String pid=rs.getString("productid");

    %>
					<div class="grid images_3_of_2">
						<ul id="etalage">
                                                    
							<li>
                                                            <a href="optionallink.html">
	<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/img/<%=rs.getString("image") %>"  class ="img-responsive" />
	<img class="etalage_source_image" src="${pageContext.request.contextPath}/img/<%=rs.getString("image") %>"  class ="img-responsive" title="" />
								</a>
		
							</li>
							
						</ul>
						 <div class="clearfix"></div>		
				  </div>
				  <div class="desc1 span_3_of_2">
					<h3><%
    String iname=rs.getString("productname");
     
    %> <%=iname%></h3>
   
					<p><%
    String iname1=rs.getString("costperunit");
     
    %>Cost :-  Rs. <%=iname1%> <a href="#"></a></p>
					<div class="det_nav">
						<h4><%
   
     String iname2=rs.getString("description");
     
    %>
    <%=iname2%></h4>
						
					</div>
					
					<div class="btn_form">
						<a href='addtocart.jsp?pid=<%=pid%>'>buy now</a>
					</div>
					<a href="#"><span>login to save in wishlist </span></a>
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
          <div class="single-bottom1">
                        
                        
                        
                        
                        
                        
                        
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
						<!--		<li><a href="#details" data-toggle="tab">Reviews</a></li>
						-->		<li class="active"><a href="#reviews" data-toggle="tab">Review</a></li>
							</ul>
		
                                                </div>
						
							
							<div class="tab-pane fade active in" id="reviews" >
							<div class="tab-pane fade active in" id="details" >
							
                                                	<!--		<ul>
										<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
									</ul>
							-->		<p><b>Write Your Review</b></p>
									
                                                        <form action="addreview.jsp" method="post">
										<span>
											<input type="text" name="name" placeholder="Your Name"/>
                                                                                        <input type="hidden" name="pid" value="<%=proid %>" />
                                                                                        <input type="hidden" name="p" value="<%=nam %>" />
											<input type="email" name="email" placeholder="Email Address"/>
                                                                                     										
										</span>
										<textarea name="Reviews" ></textarea>
										
                                                                                <button type="submit" class="btn btn-default pull-right" >
											Submit
										</button>
 <%
 if(session.getAttribute("rev") !=null)
 {
 %>
 <span>  <font color="green"> <%= session.getAttribute("rev") %></font></span>
                                                                                <%}%>
									</form>
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
                                </div>
	 
	
		 </div></div></div>
	<!-- end content -->
	<!-- content-section-ends -->
	<jsp:include page="footer.jsp" />
</body>
</html>
<%
}
}
catch(Exception e)
{
out.print(""+e.getMessage());
}
%>