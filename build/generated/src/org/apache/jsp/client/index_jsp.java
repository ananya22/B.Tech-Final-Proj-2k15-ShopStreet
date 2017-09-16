package org.apache.jsp.client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/client/dbconnect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\r');
      out.write('\n');

	String driverName="oracle.jdbc.OracleDriver";
	String hostName="localhost";
	String port="1521";
	String dbName="xe";
	String dbUserName="Shop";
	String dbUserPass="shop";
	String str="";
	String conn_Url="jdbc:oracle:thin:@"+hostName+":"+port+":"+dbName;
	
	Connection connection=null;

	try
	{
		Class.forName(driverName);
		connection = DriverManager.getConnection(conn_Url,dbUserName,dbUserPass);
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}

      out.write('\r');
      out.write('\n');
      out.print(str);
      out.write("\n");
      out.write("<!--\n");
      out.write("Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html><head>\n");
      out.write("<title>ShopStreet</title>\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
      out.write("<meta name=\"keywords\" content=\"Pakhi Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\">\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!--webfont-->\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- dropdown -->\n");
      out.write("<script src=\"js/jquery.easydropdown.js\"></script>\n");
      out.write("<link href=\"css/nav.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("\t\t <script src=\"js/scripts.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("    \n");
      out.write("    \n");
      out.write("     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "script.jsp", out, false);
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/hover_pack.js\"></script>\n");
      out.write("\t\t  <script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function($) {\n");
      out.write("\t\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/\n");
      out.write("libs/jquery/1.3.0/jquery.min.js\">\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\" >\n");
      out.write("$(function() {\n");
      out.write("$(\"#btn\").click(function() {\n");
      out.write("var name = $(\"#userName\").val();\n");
      out.write("var mail = $(\"#userEmail\").val();\n");
      out.write("var phon = $(\"#userPhone\").val();\n");
      out.write("var msj = $(\"#userMsg\").val();\n");
      out.write("var dataString = 'name='+ name + '&usermail=' + mail + '&userphon=' + phon + '&msj=' + msj;\n");
      out.write("\n");
      out.write("if(name=='' || mail=='' || phon=='' || msj=='')\n");
      out.write("{\n");
      out.write("$('.success').fadeOut(200).hide();\n");
      out.write("$('.error').fadeOut(200).show();\n");
      out.write("}\n");
      out.write("else\n");
      out.write("{\n");
      out.write("$.ajax({\n");
      out.write("type: \"POST\",\n");
      out.write("url: \"contact-post.jsp\",\n");
      out.write("data: dataString,\n");
      out.write("success: function(){\n");
      out.write("$('.success').fadeIn(200).show();\n");
      out.write("$('.error').fadeOut(200).hide();\n");
      out.write("}\n");
      out.write("});\n");
      out.write("}\n");
      out.write("return false;\n");
      out.write("});\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("\t    <div class=\"c-header\" id=\"home\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("</div>\n");
      out.write("\t<!-- header-section-starts -->\n");
      out.write("\t<div class=\"header\" id=\"home\">\n");
      out.write("\t\t<div class=\"top-header\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("        \t<div class=\"banner\">\n");
      out.write("\t\t<div class=\"signing text-right\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"sign-in\">\n");
      out.write("\t\t\t\t\t<a href=\"signin.jsp\">Sign In</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"sign-up1\">\n");
      out.write("\t\t\t\t\t<a href=\"signin.jsp\">Sign Up</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"banner-info text-center\">\n");
      out.write("\t\t\t\t<i class=\"shipping\"></i>\n");
      out.write("\t\t\t\t<h3>Shopping Place For All</h3>\n");
      out.write("\t\t\t\t<p> </p>\n");
      out.write("\t\t\t\t<a href=\"product.jsp\">All Products</a>\n");
      out.write("                          \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"content\">\n");
      out.write("\t\t<div class=\"features-section\">\n");
      out.write("\t\t\t<div class=\"features-section-head text-center\">\n");
      out.write("\t\t\t\t<h3><span>F</span>eatured Items</h3>\n");
      out.write("\t\t\t\t<p>?this weeks featured products?</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"features-section-grids\">\n");
      out.write("\t\t\t\t<div class=\"features-section-grid\">\n");
      out.write("\t\t\t\t\t<img src=\"images/girl.png\" alt=\"\">\n");
      out.write("\t\t\t\t\t<div class=\"girl-info\">\n");
      out.write("\t\t\t\t\t\t<div class=\"lonovo\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"dress\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Best Products</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>Only For You</p>\n");
      out.write("                                                                <p>With Reasonable Prices</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"priceindollers\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"contact-section\">\n");
      out.write("\t\t\t\t\t<div class=\"contact-section-head text-center\">\n");
      out.write("\t\t\t\t\t\t<h3><span>C</span>contact Us</h3>\n");
      out.write("\t\t\t\t\t\t<p>?let us know your feedbacks and questions?</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"contact-form-main\">\n");
      out.write("\t\t\t\t\t\t<form method=\"post\" action=\"contact-post.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span1\"></label>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"text\" name=\"userName\" id=\"userName\" value=\"Name...\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Name...';}\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span2\"></label>\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span3\"></label>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"text\" name=\"userEmail\" id=\"userEmail\" value=\"Email...\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email...';}\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span4\"></label>\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span5\"></label>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"text\" name=\"userPhone\" id=\"userPhone\" value=\"Phone...\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Phone...';}\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span6\"></label>\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span7\"></label>\n");
      out.write("\t\t\t\t\t\t\t<textarea name=\"userMsg\" onfocus=\"if(this.value == 'Message...') this.value='';\" onblur=\"if(this.value == '') this.value='Your Message';\">Message...</textarea>\n");
      out.write("\t\t\t\t\t\t\t<label class=\"span8\"></label>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" id=\"btn\" value=\"Submit us\">\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\t\t\n");
      out.write("                \n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("</body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
