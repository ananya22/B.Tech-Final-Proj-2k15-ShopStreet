<%@ include file="dbconnect.jsp" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html><head>
<title>ShopStreet</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Pakhi Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" rel="stylesheet" type="text/css">
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>
<link href="css/nav.css" rel="stylesheet" type="text/css" media="all">
		 <script src="js/scripts.js" type="text/javascript"></script>

    
    
                 
                 
                 
                 
    
    
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

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </head>
<body>
    
	    <div class="c-header" id="home">
            <jsp:include page="header.jsp" /></div>
	<!-- header-section-starts -->
	<div class="header" id="home">
		<div class="top-header">
			<div class="container">
				
			</div>
		</div>
        	<div class="banner">
		<div class="signing text-right">
			<div class="container">
				<div class="sign-in">
					<a href="signin.jsp">Sign In</a>
				</div>
				<div class="sign-up1">
					<a href="signin.jsp">Sign Up</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="banner-info text-center">
				<i class="shipping"></i>
				<h3>Shopping Place For All</h3>
				<p> </p>
				<a href="product.jsp">All Products</a>
                          
                                
                                
		</div>
	</div>
	</div>
	<div class="content">
		<div class="features-section">
			<div class="features-section-head text-center">
				<h3><span>F</span>eatured Items</h3>
				<p>?this weeks featured products?</p>
			</div>
			<div class="features-section-grids">
				<div class="features-section-grid">
					<img src="images/girl.png" alt="">
					<div class="girl-info">
						<div class="lonovo">
							<div class="dress">
								<h4>Best Products</h4>
								<p>Only For You</p>
                                                                <p>With Reasonable Prices</p>
							</div>
							<div class="priceindollers">
								
							</div>
							<div class="clearfix"></div>
						</div>
					</div>	
				</div>
			</div>
		</div>
					
				
			</div>
			
				
			
			<div class="contact-section">
					<div class="contact-section-head text-center">
						<h3><span>C</span>contact Us</h3>
						<p>?let us know your feedbacks and questions?</p>
					</div>
					<div class="contact-form-main">
						<form method="post" action="contact-post.jsp">
							<label class="span1"></label>
							<input type="text" class="text" name="userName" id="userName" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
							<label class="span2"></label>
							<label class="span3"></label>
							<input type="text" class="text" name="userEmail" id="userEmail" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
							<label class="span4"></label>
							<label class="span5"></label>
							<input type="text" class="text" name="userPhone" id="userPhone" value="Phone..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone...';}">
							<label class="span6"></label>
							<label class="span7"></label>
							<textarea name="userMsg" onfocus="if(this.value == 'Message...') this.value='';" onblur="if(this.value == '') this.value='Your Message';">Message...</textarea>
							<label class="span8"></label>
							<input type="submit" id="btn" value="Submit us">
						</form>
					</div>

			</div>
        
        
        <jsp:include page="footer.jsp" />
		
                
		

</body></html>