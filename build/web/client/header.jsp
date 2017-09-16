<%@ include file="dbconnect.jsp" %>
		<div class="top-header">
			<div class="container">
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt="" /></a>
			</div>
				<div class="header-top-right">
				<!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form action="search2.jsp" method="post">
                                                            					<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="shstr" id="search">S
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
           
     
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->

					<a href="viewcart.jsp"><i class="cart"></i></a>
				</div>
			<div class="navigation">	
			<div>
              <label class="mobile_menu" for="mobile_menu">
              <span>Menu</span>
              </label>
              <input id="mobile_menu" type="checkbox">
              <ul class="nav">
              <li class="active"><a href="index.jsp">Home</a></li>                       
              <li class="dropdown1"><a href="#">Products</a>
                <%
                    ResultSet rs=null;
	try
	{
	String query="select* from category ";
	PreparedStatement ps=connection.prepareStatement(query);
	rs=ps.executeQuery();
%>
                  <ul class="dropdown2">
                  <%
	while(rs.next())
	{
                    String pid=rs.getString(1);
                    out.println("<li><a href='GridImage.jsp?pid="+pid+"'>"+rs.getString(2)+"</a></li> ");
	}
	%>
               </ul>
              </li>
              <li><a href="privacy.jsp">Privacy Policy</a></li>
              <li><a href="AboutUs.jsp">About US</a></li>
        <!--      <li class="dropdown1"><a href="#">Welcome Deepika</a>
           	<ul class="dropdown2">
                  <li><a href="viewcart.jsp">viewcart</a></li>
                  <li><a href="Changepswd.jsp">Change Password</a></li>
                      <li><a href="Logout.jsp">Logout</a></li>
                </ul>
           </li>
   -->              <li><a href="contact.jsp">Contact US</a></li>
              
                      
              
            <div class="clearfix"></div>
              </ul>
		</div>			
	 </div>
			</div>
		</div>
		
	
        <%
	ps.close();
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>