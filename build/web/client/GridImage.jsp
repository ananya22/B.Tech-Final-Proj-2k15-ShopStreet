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

		<!-- start Dresses-page -->
	<!-- content-section-starts -->
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       Products
				<!--	    <span>&gt;</span>
                   --> </li><li>
         <span class="red"></span>
     </li>
                </ul>
              
                <div class="clearfix"></div>
			   </div>
			   </div>
			   <div class="container">
	   <div class="ft-ball">
		<div class="cont span_2_of_3">
		  <div class="mens-toolbar">
              <div class="sort">
               	<div class="sort-by">
		            <a href=""><img src="images/arrow2.gif" alt="" class="v-middle"></a>
               </div>
    		</div>
	    <!--      <div class="pager">   
	           <div class="limiter visible-desktop">
	            <label>Show</label>
	            <select>
	                            <option value="" selected="selected">
	                    9                </option>
	                            <option value="">
	                    15                </option>
	                            <option value="">
	                    30                </option>
	                        </select> per page        
	             </div>
	       		<ul class="dc_pagination dc_paginationA dc_paginationA06">
				    <li><a href="#" class="previous">Pages</a></li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
			  	</ul>
		   		<div class="clearfix"></div>
	    	</div> -->
     	    <div class="clearfix"></div>
	       </div>
			    <div class="box1">
                                <%
        Statement st=null;
ResultSet rs=null;
int cid=0;
try
{
     cid=Integer.parseInt(request.getParameter("pid"));
    session.setAttribute("category", cid);
  st=connection.createStatement();
rs=st.executeQuery("select ProductId,image,productname,costperunit from product p,producttype pt,category c   where p.typeid=pt.typeid AND pt.categoryid=c.categoryid AND c.categoryid="+cid+" ORDER BY p.costperunit desc");
 
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
									<li><h3>Best Products</h3><a href=""></a></li>
									<li><p>Only For You With Reasonable Prices</p></li>
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
			  
			  </div>
     	    <div class="rsidebar span_1_of_left">
				   <section  class="sky-form">
				
                   	  <h4>Product Type</h4>
						<div class="row row1 scroll-pane">
					
                                                    <div class="col col-4">
			
                                                        <%
                    
                    ResultSet rc=null;
                    ResultSet rsup=null;
                    String cname="";
                    String sname="";
	 try
	{
	
	String query="select* from producttype where categoryID = " + cid; 
        PreparedStatement ps;
        	 ps=connection.prepareStatement(query);
	int i=0;
	rs=ps.executeQuery();
                while(rs.next())
	{
	int id=rs.getInt(1);
                   String name=rs.getString(2);
        %>
                                                        <label class="checkbox"><input type="checkbox" name="<%=id%>" ><i></i><%=name%></label>
<%}%>	
                                                    </div>
	<%    

	
	ps.close();
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>   
					 </div>
			
				</section>
		         <section  class="sky-form">
					<h4>Price</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Rs.50.00 and Under </label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs.100.00 and Under </label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs.200.00 and Under </label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs.300.00 and Under </label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs.400.00 and Under </label>
							</div>
						</div>
		       </section>
			</div>
			  <div class="clearfix"></div>
		   </div>
	</div>
	<!-- content-section-ends -->
 

	<jsp:include page="footer.jsp" />
</body>
</html>