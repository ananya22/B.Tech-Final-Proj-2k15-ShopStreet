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
        <%
String userid="";
if(session.getAttribute("userName")==null){
        request.setAttribute("url", "Shipping.jsp");
        
            response.sendRedirect("signin.jsp");
}
else{
         userid=(String)session.getAttribute("userName");
}
%>

 <script type="text/javascript" src="js/moder1.js"></script>

        <style>
            #errorBox
            {
                color:red;
            }
          #errorBox1
            {
                color:red;
            }
            #errorBox2
            {
                color:red;
            }
            #errorBox3
            {
                color:red;
            }
            #errorBox4
            {
                color:red;
            }
            #errorBox5
            {
                color:red;
            }
            #errorBox6
            {
                color:red;
            }
            
        </style> 
    

   


</head>

<body>
	    <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
            <section id="main">
		<div class="login-content">
		<div class="container">
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
					<li>products</a></li>
                </ul>
                <ul class="previous">
                	<li><a href="index.html">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
<div class="login-signup-form">
				<div class="col-md-5 login text-center">
					<h4>Shipping Detail</h4>
					<form name="form"  method="post" action="../Ship">			
			
                                                                                        <div class="cus_info_wrap">
						<label class="labelTop">
						First Name:
					
						</label>
						<input type="text" name="firstName" id="uid"><div id="errorBox"></div>
                                                 
					</div>
					<div class="cus_info_wrap">
						<label class="labelTop">
						Last Name:
						
						</label>
						<input type="text" name="lastName" id="eid"><div id="errorBox1"></div>
					</div>
                                            
					<div class="clearfix"></div>
				    <div class="cus_info_wrap">
						<label class="labelTop">
						Address:
						</label>
						<input type="text" name="userAddress" id="pwd"><div id="errorBox2"></div>
					</div>
                                        
					<div class="clearfix"></div>
                                        <div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						State:
						</label>
						<select name="state"  >
                 <option value="0" selected>--------- SELECT STATE --------</option>
                <%
                ResultSet rs=null;
                
                try
    {
	
	String query="select * from state ORDER BY statename";
	PreparedStatement ps=connection.prepareStatement(query);
	
	rs=ps.executeQuery();
        while(rs.next())
	{
            int  sid=Integer.parseInt(rs.getString("StateId"));
            %>    
            <option value="<%rs.getString("StateId");%>"><%=rs.getString(2)%></option>
        <%
        }
    
%>                                                                   
            </select>
                                        </div>
                                        <div class="clearfix"></div>
                                                                  
                                                                                           <div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						City:
						</label>
						<select  name="userCity" >
                 <option value="0" selected>--------- SELECT City --------</option>
                <%
                 ResultSet rs1=null;
    
	
	String  query1="select * from city  ORDER BY city ";
	 PreparedStatement ps1=connection.prepareStatement(query1);
	
	rs1=ps1.executeQuery();
        while(rs1.next())
	{
                    int id=Integer.parseInt(rs1.getString("cityId")); 
            %>    
            <option value="<%= id %>"><%=rs1.getString(2)%></option>
        <%
        }
    
%>                                                                   
            </select>

					</div>
      <div class="clearfix"></div>
      
      <div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						PostCode:
						</label>
						<input type="text" name="postCode" id="ans"><div id="errorBox3"></div>
					</div>
      <div class="clearfix"></div>
      <div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Email:
						</label>
						<input type="text" name="userEmail" id="ans"><div id="errorBox4"></div>
					</div>
      <div class="clearfix"></div>
      <div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Phone:
						</label>
						<input type="text" name="userPhone" id="ans"><div id="errorBox5"></div>
					</div>
      <div class="clearfix"></div>
      <input id="billZip" name="userid" type="hidden" value="<%=userid%>" />
					<div class="botton1">
                                            
                                             <p id="sign_user" onClick="Submit()">Sign Up </p>
					<input type="submit" value="SIGNIN" class="botton" id="btn">
				</div>
   <div>
       <font color="red"><span class="error" style="display:none"> Please Enter Valid Data</span></font>
       <font color="green">     <span  class="success" style="display:none"> Registration Successfully.......... Click To </span>
       </font>     </div>	

                    </form>
                            				</div>

				
			</div>
		</div>
	
		</section>
                <jsp:include page="contactsection.jsp"/>
                <jsp:include page="footer.jsp" />
            
</body>
</html>
<%
	ps.close();
        ps1.close();
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>