package org.apache.jsp.client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import net.tanesha.recaptcha.ReCaptcha;
import net.tanesha.recaptcha.ReCaptchaFactory;

public final class signin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(' ');
      out.write('\n');
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "script.jsp", out, false);
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!--webfont-->\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- dropdown -->\n");
      out.write("\t\t  <script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function($) {\n");
      out.write("\t\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("        <script type=\"text/javascript\">  \n");
      out.write("function matchpass(){  \n");
      out.write("var firstpassword=document.f1.pwd.value;  \n");
      out.write("var secondpassword=document.f1.pwd1.value;  \n");
      out.write("  \n");
      out.write("if(firstpassword==secondpassword){  \n");
      out.write("return true;  \n");
      out.write("}  \n");
      out.write("else{  \n");
      out.write("alert(\"password must be same!\");  \n");
      out.write("return false;  \n");
      out.write("}  \n");
      out.write("\n");
      out.write("}  \n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\" >\n");
      out.write("$(function() {\n");
      out.write("$(\"#btn\").click(function() {\n");
      out.write("var emailid = $(\"#eid\").val();\n");
      out.write("var uid = $(\"#uid\").val();\n");
      out.write("var pwd = $(\"#pwd\").val();\n");
      out.write("var pwd1 = $(\"#pwd1\").val();\n");
      out.write("var secque = $(\"#secque\").val();\n");
      out.write("var secans = $(\"#ans\").val();\n");
      out.write("var dataString = 'emailid='+ emailid + '&uid=' + uid + '&pwd=' + pwd + '&pwd1=' + pwd1+ '&secque=' + secque + '&secans=' + secans;\n");
      out.write("\n");
      out.write("if(emailid=='' || uid=='' || pwd=='' || pwd1=='' || secque=='' || secans=='')\n");
      out.write("{\n");
      out.write("$('.success').fadeOut(200).hide();\n");
      out.write("$('.error').fadeOut(200).show();\n");
      out.write("}\n");
      out.write("else\n");
      out.write("{\n");
      out.write("$.ajax({\n");
      out.write("type: \"POST\",\n");
      out.write("url: \"../userinformation\",\n");
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
      out.write(" <script type=\"text/javascript\" src=\"js/moder.js\"></script>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #errorBox\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("          #errorBox1\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            #errorBox2\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            #errorBox3\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            #errorBox4\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            #errorBox5\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            #errorBox6\n");
      out.write("            {\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style> \n");
      out.write("    \n");
      out.write("\n");
      out.write("</head>\n");

StringBuffer url=request.getRequestURL();
//if(url==null)
  //  url="index.jsp";
 


      out.write("\n");
      out.write("<body>\n");
      out.write("\t    <div class=\"c-header\" id=\"home\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("</div>\n");
      out.write("            <section id=\"main\">\n");
      out.write("\t\t<div class=\"login-content\">\n");
      out.write("\t\t<div class=\"container\"><div class=\"container\">\n");
      out.write("\t\t<div class=\"dreamcrub\">\n");
      out.write("\t\t\t   \t <ul class=\"breadcrumbs\">\n");
      out.write("\t\t\t\t \n");
      out.write("                    <li class=\"home\">\n");
      out.write("                       <a href=\"index.jsp\" title=\"Go to Home Page\"><img src=\"images/home.png\" alt=\"\"/></a>&nbsp;\n");
      out.write("                       <span>&gt;</span>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                       Sales\n");
      out.write("                    </li>&nbsp;\n");
      out.write("                       <span>&gt;</span>\n");
      out.write("\t\t\t\t\t<li>products</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"previous\">\n");
      out.write("                \t<li><a href=\"index.jsp\">Back to Previous Page</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("    \n");
      out.write("\t\t\t<div class=\"login-signup-form\">\n");
      out.write("\t\t\t\t<div class=\"col-md-5 login text-center\">\n");
      out.write("\t\t\t\t\t<h4>login</h4>\n");
      out.write("\t\t\t\n");
      out.write("                                        <form action=\"./validate.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop\">\n");
      out.write("\t\t\t\t\t\tEmail:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\"  name=\"username\" >\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop\">\n");
      out.write("\t\t\t\t\t\tPassword:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"password\"  name=\"password\">\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("<input type=\"hidden\" name=\"url\" value=\"");
      out.print(url);
      out.write("\"/>                                        \n");
      out.write("\t\t\t\t\t<div class=\"sky-form span_99\">\n");
      out.write("\t\t\t\t\t<label class=\"checkbox\"><input type=\"checkbox\" name=\"checkbox\" >Remember me on this computer </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"botton1\">\n");
      out.write("                                         ");

          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdlHOsSAAAAAM8ypy8W2KXvgMtY2dFsiQT3HVq-", "6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY", false);
          out.print(c.createRecaptchaHtml(null, null));
        
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"SIGNIN\" class=\"botton\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                        <div>\n");
      out.write("                                            <font color=\"red\">\n");
      out.write("            ");
if (session.getAttribute("errMessage") != null)
            {
      out.write("\n");
      out.write("                ");
      out.print(session.getAttribute("errMessage") );
      out.write("\n");
      out.write("             ");
}
      out.write("\n");
      out.write("                </font>\n");
      out.write("                                        </div>\n");
      out.write("                                        </form>\n");
      out.write("                            <form method=\"get\" action=\"security.jsp\" name=\"f1\">\n");
      out.write("\t\t\t\t<div class=\"forgetit\">\n");
      out.write("\t\t\t\t\tforgot your password?\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"id\" value=\"Enter email  or userid to reset it\" >\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"SUBMIT\" class=\"botton\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                        </form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("            <form name=\"form\"  method=\"post\" action=\"../userinformation\">\n");
      out.write("       \n");
      out.write("<div class=\"col-md-5 sign-up text-center\">\n");
      out.write("    \t\t\t\t\t<h4>signup</h4>\n");
      out.write("                                                                                        <div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                                                            \n");
      out.write("                                                                                            <label class=\"labelTop\">\n");
      out.write("\t\t\t\t\t\tUser Id:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"uid\" id=\"uid\"/><div id=\"errorBox\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop\">\n");
      out.write("\t\t\t\t\t\tEmail Id:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"emailid\" id=\"eid\"/><div id=\"errorBox1\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                        <div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t    <div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop\">\n");
      out.write("\t\t\t\t\t\tPassword:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" name=\"pwd\" id=\"pwd\"/><div id=\"errorBox2\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div><div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop confirmpass\">\n");
      out.write("\t\t\t\t\t\tConform Password:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" name=\"pwd1\" id=\"pwd1\"/><div id=\"errorBox3\"></div>\n");
      out.write("                                                               <div>\n");
      out.write("       <font color=\"red\"><span class=\"serr\" style=\"display:none\"> Password not match</span></font>\n");
      out.write("            </div>\t\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                                                                           <div class=\"clearfix\"></div><div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop confirmpass\">\n");
      out.write("\t\t\t\t\t\tSecurity Question:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<select id=\"secque\" name=\"secque\" ><div id=\"errorBox7\"></div>\n");
      out.write("                                                                       <option value=\"0\" selected>SELECT  SECURITY QUESTION</option>\n");
      out.write("                                                                            <option  >What is your favorite food???</option>\n");
      out.write("                                                                            <option >What is your favorite Pet???</option>\n");
      out.write("                                                                            <option >Who is your favorite teacher???</option>\n");
      out.write("                                                                            <option  >What is your first Mobile No???</option>\n");
      out.write("                                                                            <option  >Who is your Best Friend???</option>\n");
      out.write("                                                                        </select>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                                                                           <div class=\"clearfix\"></div><div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop confirmpass\">\n");
      out.write("\t\t\t\t\t\tSecurity Answer:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"secans\" id=\"ans\"/><div id=\"errorBox4\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                                                                           <div class=\"clearfix\"></div><div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop confirmpass\">\n");
      out.write("\t\t\t\t\t\tFirst Name:\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"fname\" id=\"ans\"/><div id=\"errorBox5\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                                                                           <div class=\"clearfix\"></div><div class=\"cus_info_wrap\">\n");
      out.write("\t\t\t\t\t\t<label class=\"labelTop confirmpass\">\n");
      out.write("\t\t\t\t\tLast Name:\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"lname\" id=\"ans\"/><div id=\"errorBox6\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("    <p> \n");
      out.write("            <p id=\"sign_user\" onClick=\"Submit()\">Sign Up </p>\n");
      out.write("\t\t<input type=\"submit\" id=\"sign_user\" onclick=\"Submit()\" value=\"SIGNIN\" >\n");
      out.write("\t</p>\t\t\t\t\n");
      out.write("                                        \n");
      out.write("\t<div>\n");
      out.write("    <!--   <font color=\"red\"><span class=\"error\" style=\"display:none\"> Please Enter Valid Data</span></font>\n");
      out.write("       <font color=\"green\">     <span  class=\"success\" style=\"display:none\"> Registration Successfully.......... Click To </span>\n");
      out.write("       </font>    --> </div>\t\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"col-md-2 benefits\">\n");
      out.write("\t\t\t\t\t<h4>Benefits of signup</h4>\n");
      out.write("\t\t\t\t\t<p>Manage your purchases anytime: Track your order status and print your vouchers</p>\n");
      out.write("\t\t\t\t\t<p>Quick shopping: no need to fill in your contact and shipping details while buying</p>\n");
      out.write("\t\t\t\t\t<p>Easy access to member only benefits</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</section>\n");
      out.write("               \n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("</body>\n");
      out.write("</html>");
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
