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
            <div class="content">
		<div class="features-section">
			<div class="features-section-head text-center">
                            <h3><u><i><span>P</span>rivacy Policy</i></u></h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
				<p>The protection of your personal data is of utmost important. You have to add your details very carefully.So that we can help you with honesty and easily and also you will not be suffer from any problem.Shopstreet will process personal data in compliance with the  applicable laws.
</p>
      
                                    <h3><i><u><span> 1.)</span> Personal Data</u></i></h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>We will collect the following personal data from you: </p>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>- your name  </p>
                            <p>- mailing address, shipping address</p>
                            <p>- telephone number and fax number</p>
                            <p>- email address </p>
                              <p>- user name </p>  <p> - credit card data or bank account data.</p>
                              
                              
                               <h3><i><u><span> 2.)</span> Use of personal data</u></i></h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>We may use your personal data for the following purposes:  
 </p>
                            <p>
for answering your questions,for the execution of your orders and sending the ordered products and/or providing the ordered services to you, for this purpose it may also be required to contact you personally by telephone or email with regard to your order,  
for enabling you to use our website and communicate on it, e.g. in blogs, with other persons or contact them, if you wish to do so, 
for sending you by email information about our offers, unless you object to such use. You may object to such use at any time. 
Furthermore we will use your data on an anonymous basis, i.e. without any reference to your name, for the following purposes: 
for our internal business purposes, e.g. data analyses, development of new products, improvement of our website and of our services, analysis of user trends and the efficiency of our promotion campaigns, 
if you have consented to receiving our newsletters, for sending you special promotion offers by email,
If you are a Stylist or a Hostess we will use your personal data for communication  with you about your activity and/or the earning possibilities offered by Juvalia, and for informing you by mail or email about our products, services, programs and offers you may be interested in. 
Shopstreet will use your data only for such period as they are required for the fulfillment of the above purposes, unless a longer retention period is provided for by law.
 
 </p>
                            
                     
          <h3><i><u><span> W</span>e currently offer our services in Bangalore,
Hyderabad , Mumbai, Pune, Chennai & Delhi city limits.
 </u></i></h3>
                        </div>
			<!--<div class="features-section-grids">
			-->	
			</div>
		</div>
					
				
		
	
             <ul class="list2">
                                                     		<li><h3>What is ShopStreet.com</h3><a href=""></a></li>
									<li><p>is India’s largest online food and grocery store. With over 10,000 products and over a 1000 brands in our catalogue you will find everything you are looking for. Right from fresh Fruits and Vegetables, Rice and Dals, Spices and Seasonings to Packaged products, Beverages, Personal care products, Meats – we have it all.
          </p></li>
								</ul>
          
          
          <jsp:include page="footer.jsp" />

    </body>
</html>
