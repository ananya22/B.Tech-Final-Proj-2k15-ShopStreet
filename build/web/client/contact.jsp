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
        
        <script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(28.583408,77.316321);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);

var infowindow = new google.maps.InfoWindow({
  content:"CMC, Noida"
  });

infowindow.open(map,marker);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<script type="text/javascript" >
$(function() {
$("#btn").click(function() {
var name = $("#userName").val();
var mail = $("#userEmail").val();
var phon = $("#userPhone").val();
var msj = $("#userMsg").val();
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

 <script type="text/javascript" src="js/moder2.js"></script>

        <style>
            #errorBox11
            {
                color:red;
            }
          #errorBox12
            {
                color:red;
            }
            #errorBox21
            {
                color:red;
            }
            #errorBox31
            {
                color:red;
            }
         </style> 
    





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
              
                <div class="clearfix"></div>
			   </div>
			   </div>

<div class="container">
<div class="contact">				
					<div class="contact_info">
						<h2>get in touch</h2>
			    	 		<div class="contact-map">
                                                    <div id="googleMap" style="width:100%; height:380px;">	
                                                </div>
      				</div>
				  <div class="contact-form">
			 	  	 	<h2>Contact Us</h2>
            <form name="form" method="post" action="contact-post.jsp">
 	<div>
    	<label>Name</label>
    	<p><input name="userName" id="userName" type="text" class="textbox"><div id="errorBox11"></div>
          </p>      </div>
                <div>
                <label>E-mail</label>
                <input name="userEmail" id="userEmail" type="email" class="textbox"><div id="errorBox12"></div>
                </div>
                <div>
                <label>Mobile</label>
                <input name="userPhone" id="userPhone" type="text" class="textbox"><div id="errorBox21"></div>
                </div>
                <div>
               <label>Subject</label>
               
               <textarea name="userMsg" id="userMsg" type="text" class="textbox" > </textarea><div id="errorBox31"></div>
                </div>
               <div>
                   <p id="sign_user" onClick="Submit()">Sign Up </p>
                <input type="submit" id="btn" value="Submit us">
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
