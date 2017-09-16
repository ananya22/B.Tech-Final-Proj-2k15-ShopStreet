<%-- 
    Document   : index
    Created on : 6-Apr-2015, 6:42:54 PM
    Author     : Deepika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="script.jsp" />
        <script type="text/javascript" src="js/hover_pack.js"></script>
		  <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
        
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/
libs/jquery/1.3.0/jquery.min.js">
</script>
<script type="text/javascript" >
$(function() {
$("#btn").click(function() {
var name = $("#userName").val();
var mail = $("#userEmail").val();
var phon = $("#userPhone").val();
var msj = $("#userMessage").val();
var dataString = 'name='+ name + '&usermail=' + mail + '&userphon=' + phon + '&msj=' + msj;

if(name=='' || mail=='' || phon=='' || msj=='')
{
$('.success').fadeOut(200).hide();
$('.error').fadeOut(200).show();
}
else
{
$.ajax({
type: "POST",
url: "contact-post.jsp",
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

    </head>
    <body>
        <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
       	<!-- start Contact-page -->
	<!-- content-section-starts -->
	<div class="container">
<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
				 
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page"><img src="images/home.png" alt=""/></a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li>
                       Contact
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   </div>

<div class="container">
<div class="contact">				
					<div class="contact_info">
						<h2>get in touch</h2>
			    	 		<div class="contact-map">
					   			<iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#777777;text-align:left;font-size:13px;">View Larger Map</a></small>
					   		</div>
      				</div>
				  <div class="contact-form">
			 	  	 	<h2>Contact Us</h2>
            <form method="post" action="contact-post.jsp">
 	<div>
    	<span><label>Name</label></span>
    	<span><input name="userName" id="userName" type="text" class="textbox"></span>
                </div>
                <div>
                <span><label>E-mail</label></span>
                <span><input name="userEmail" id="userEmail" type="email" class="textbox"></span>
                </div>
                <div>
                <span><label>Mobile</label></span>
                <span><input name="userPhone" id="userPhone" type="text" class="textbox"></span>
                </div>
                <div>
               <span><label>Subject</label></span>
               <span><textarea name="userMsg" id="userMsg" type="text" > </textarea></span>
                </div>
               <div>
                <span><input type="submit" id="btn" value="Submit us"></span>
              </div>
                <div>
                <span class="error" style="display:none"> Please Enter Valid Data</span><span  class="success" style="display:none"> Registration Successfully.......... Click To 
                </div>
                    </form>
            </div>
            <div class="clearfix"></div>		
            </div>
</div>

        <jsp:include page="footer.jsp" />
        
    </body>
</html>
