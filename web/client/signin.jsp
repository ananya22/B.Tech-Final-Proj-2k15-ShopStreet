<%@page import="java.sql.*"%> 
<%@ include file="dbconnect.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
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
        <script type="text/javascript">  
function matchpass(){  
var firstpassword=document.f1.pwd.value;  
var secondpassword=document.f1.pwd1.value;  
  
if(firstpassword==secondpassword){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  

}  
</script>
<script type="text/javascript" >
$(function() {
$("#btn").click(function() {
var emailid = $("#eid").val();
var uid = $("#uid").val();
var pwd = $("#pwd").val();
var pwd1 = $("#pwd1").val();
var secque = $("#secque").val();
var secans = $("#ans").val();
var dataString = 'emailid='+ emailid + '&uid=' + uid + '&pwd=' + pwd + '&pwd1=' + pwd1+ '&secque=' + secque + '&secans=' + secans;

if(emailid=='' || uid=='' || pwd=='' || pwd1=='' || secque=='' || secans=='')
{
$('.success').fadeOut(200).hide();
$('.error').fadeOut(200).show();
}
else
{
$.ajax({
type: "POST",
url: "../userinformation",
data: dataString,
success: function(){
$('.success').fadeIn(200).show();
$('.error').fadeOut(200).hide();
}
});
}
return false;
});
});
</script>

 <script type="text/javascript" src="js/moder.js"></script>

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
<%
StringBuffer url=request.getRequestURL();
//if(url==null)
  //  url="index.jsp";
 

%>
<body>
	    <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
            <section id="main">
		<div class="login-content">
		<div class="container"><div class="container">
		<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       Sales
                    </li>&nbsp;
                       <span>&gt;</span>
					<li>products</a></li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>
    
			<div class="login-signup-form">
				<div class="col-md-5 login text-center">
					<h4>login</h4>
			
                                        <form action="./validate.jsp" method="post">
					<div class="cus_info_wrap">
						<label class="labelTop">
						Email:
						
						</label>
						<input type="text"  name="username" >
					</div>
					<div class="clearfix"></div>
					<div class="cus_info_wrap">
						<label class="labelTop">
						Password:
						
						</label>
						<input type="password"  name="password">
					</div>
					<div class="clearfix"></div>
<input type="hidden" name="url" value="<%=url%>"/>                                        
					<div class="sky-form span_99">
					<label class="checkbox"><input type="checkbox" name="checkbox" >Remember me on this computer </label>
				</div>
				<div class="botton1">
                                         <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdlHOsSAAAAAM8ypy8W2KXvgMtY2dFsiQT3HVq-", "6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
                                    
                                    
					<input type="submit" value="SIGNIN" class="botton">
				</div>
                                        <div>
                                            <font color="red">
            <%if (session.getAttribute("errMessage") != null)
            {%>
                <%=session.getAttribute("errMessage") %>
             <%}%>
                </font>
                                        </div>
                                        </form>
                            <form method="get" action="security.jsp" name="f1">
				<div class="forgetit">
					forgot your password?
					<input type="text" name="id" value="Enter email  or userid to reset it" >
					<input type="submit" value="SUBMIT" class="botton">
				</div>
                                        </form>
				</div>
            <form name="form"  method="post" action="../userinformation">
       
<div class="col-md-5 sign-up text-center">
    					<h4>signup</h4>
                                                                                        <div class="cus_info_wrap">
						
                                                                                            
                                                                                            <label class="labelTop">
						User Id:
						
						</label>
						<input type="text" name="uid" id="uid"/><div id="errorBox"></div>
					</div>
					<div class="cus_info_wrap">
						<label class="labelTop">
						Email Id:
						
						</label>
						<input type="text" name="emailid" id="eid"/><div id="errorBox1"></div>
					</div>
                                        <div class="clearfix"></div>
				    <div class="cus_info_wrap">
						<label class="labelTop">
						Password:
						
						</label>
						<input type="password" name="pwd" id="pwd"/><div id="errorBox2"></div>
					</div>
					<div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Conform Password:
						
						</label>
						<input type="password" name="pwd1" id="pwd1"/><div id="errorBox3"></div>
                                                               <div>
       <font color="red"><span class="serr" style="display:none"> Password not match</span></font>
            </div>	
</div>

					
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Security Question:
						
						</label>
						<select id="secque" name="secque" ><div id="errorBox7"></div>
                                                                       <option value="0" selected>SELECT  SECURITY QUESTION</option>
                                                                            <option  >What is your favorite food???</option>
                                                                            <option >What is your favorite Pet???</option>
                                                                            <option >Who is your favorite teacher???</option>
                                                                            <option  >What is your first Mobile No???</option>
                                                                            <option  >Who is your Best Friend???</option>
                                                                        </select>
					</div>
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Security Answer:
						
						</label>
						<input type="text" name="secans" id="ans"/><div id="errorBox4"></div>
					</div>
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						First Name:
						
						</label>
						<input type="text" name="fname" id="ans"/><div id="errorBox5"></div>
					</div>
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
					Last Name:
				
						</label>
						<input type="text" name="lname" id="ans"/><div id="errorBox6"></div>
					</div>
    
            <p id="sign_user" onClick="Submit()">Sign Up </p>
		<input type="submit" id="sign_user" onclick="Submit()" value="SIGNIN" >
				
                                        
	<div>
    <!--   <font color="red"><span class="error" style="display:none"> Please Enter Valid Data</span></font>
       <font color="green">     <span  class="success" style="display:none"> Registration Successfully.......... Click To </span>
       </font>    --> </div>	
</div>
</form>

				<div class="col-md-2 benefits">
					<h4>Benefits of signup</h4>
					<p>Manage your purchases anytime: Track your order status and print your vouchers</p>
					<p>Quick shopping: no need to fill in your contact and shipping details while buying</p>
					<p>Easy access to member only benefits</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		</section>
               
                <jsp:include page="footer.jsp" />
            
</body>
</html>