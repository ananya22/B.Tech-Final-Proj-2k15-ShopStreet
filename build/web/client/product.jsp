<%@page import="java.sql.*"%> 
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


<!-- main content -->
<div class="box1">
<%
ResultSet rs=null;
try
{
 rs=st.executeQuery("select ProductId,image,productname,costperunit from product");
 
//rs=st.executeQuery("select imgname,itemname from item");
 
while(rs.next())
{
    
String nam=rs.getString("productname");
String costperunit=rs.getString("costperunit");
String pid=rs.getString("productid");
    %>
     <div class="col_1_of_single1 span_1_of_single1">
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1">Rs.<%    String iname2=rs.getString("costperunit"); %><%=iname2%></h3>
					  	<p class="m_2"></p>
                                                <a href="single.jsp"></a>
				         <div class="grid_img">
						   <div class="css3"><img src="${pageContext.request.contextPath}/img/<%=rs.getString("image") %>" alt=""  width="150" height="300"/></div>
					          <div class="mask1">
	                       		<div class="info">Quick View</div>
			                  </div>
	                    </div>
                                                   <div class="price"><% String iname=rs.getString("productname"); %>
                                                       
                                                       <a href="DisplayImage.jsp?xyz=<%=iname%>"><%=iname%></a></div>
					   </div>
					    </div>
					   <div class="rtng">
					    <form action="" class="sky-form">
						     <fieldset>					
							   <section>
							     <div class="rating">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="icon-star"></i></label><span class="rtng">(5)<span>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    </fieldset>
						  </form>
						  </div>
						 <ul class="list2">
                                                     <li><form>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li>
                                                            <a class="active-icon c1" href='addtocart.jsp?pid=<%=pid%>'>Add To Bag </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
                                                              <div>
                <span class="error" style="display:none"> Please Enter Valid Data</span><span  class="success" style="display:none"> Registration Successfully.......... Click To 
                </div>
							  </li>
							 </ul>
                                                         </form>			   </li>
					     </ul>
			    	  
			    	</div>

<%
}
}
catch(Exception e)
{
out.print(""+e.getMessage());
}
%>
<div class="clearfix"></div>
			  </div>
 

</body>
</html>

      
	<jsp:include page="footer.jsp" />
</body>
</html>