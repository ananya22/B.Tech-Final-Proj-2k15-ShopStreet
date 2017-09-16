<%@ include file="dbconnect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String crt=""; %>
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
<div class="container">
		<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.html" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       Sales
                    </li>&nbsp;
                       <span>&gt;</span>
					<li>Cart Item</li>
                </ul>
              
                <div class="clearfix"></div>
			   </div>
			   </div>
		<!-- start Dresses-page -->
	<!-- content-section-starts -->
<div class="women_main">
<div class="container">

			<div class="row single">
				<div class="col-md-9 span-single">
				  <div class="single_left">
					<div class="single-bottom2">
<h6>Cart Item      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Product Description  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        price    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           Total</h6>
                                        
                                        <%  int crttotal=0;
   int price,quantity;
   String ProductId,pname,pdesc,img;
   ResultSet rs=null;
            ResultSet rc=null;
     PreparedStatement pc=null;
        
   Cookie cookie = null;
	  Cookie[] cookies = null;
          
  cookies = request.getCookies();
        if( cookies != null ){
         //out.println("<h2> Cookies Name and Value</h2>");
         for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            if((cookie.getName( )).compareTo("cart") == 0 ){
                              crt=cookie.getValue();
       
                              session.setAttribute("scart", crt);
            }
         }
        }
       try
        {
          
 Statement st=connection.createStatement();
 rs=st.executeQuery("select p.costperunit,p.productname,p.description,p.image,s.quantity,s.productid from shoppingcart s,product p where p.ProductId=s.ProductId AND s.sId='"+crt+"'");
 
            while(rs.next())
            {
                String id=rs.getString(1);                 
         String cat="select* from product where productID = '" + id +"'";
                   
                    pc=connection.prepareStatement(cat);
        
                 price=rs.getInt(1);
                 pname=rs.getString(2);
                 pdesc=rs.getString(3);
                 img=rs.getString(4);
                 quantity=rs.getInt(5);
                 ProductId=rs.getString(6);
                crttotal +=price*quantity;
              //String costperunit=rs.getString("costperunit");
           rc=pc.executeQuery();
        
       %>
  
                                        
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="${pageContext.request.contextPath}/img/<%=img %>" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#"><%=pname%></a></h5>
		                           <p class="product_descr"><%=pdesc%>  </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
                                                      <span class="price-access"><%=price%></span>
                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                             
                                                                                                                              
                                                                 <font color="red"><span class="price-access"><%=quantity*price%></span></font>
                                                                                            <button class="fa fa-trash-o" onclick="window.location.href='../../DeleteData?id=<%=id%> '" type="submit"/>

		              </div>
						 <div class="clearfix"></div>
                                                                        
									
				     </div>
				    
				
	<%
}
            st.close();
            connection.close();
        }
    catch(Exception e)
        {
                out.print(""+e);
        }

 
%>   
			      <div align="center">
	   	   <h6><font color="Red">Cart Total   &nbsp;&nbsp;&nbsp;&nbsp;<%=crttotal%><font>
                                                                 </div>
                                                           	
                                                            <div align="right" >
                                                                    				
							<button class="button1" onclick="window.location.href='Shipping.jsp'" ><span>Place Order</span></button>
		                  </div>
						 <div class="clearfix"></div>
          	   </div>
          						
	  </div>
	 
	  
		 </div></div></div>
                               
	<jsp:include page="footer.jsp" />

</div>

</body>
</html>