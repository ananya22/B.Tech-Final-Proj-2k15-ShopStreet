package org.apache.jsp.client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class viewcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write('\n');
      out.write('\n');
 String crt=""; 
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
      out.write("    \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t    <div class=\"c-header\" id=\"home\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("</div>\n");
      out.write("<div class=\"container\">\n");
      out.write("\t\t<div class=\"dreamcrub\">\n");
      out.write("\t\t\t   \t <ul class=\"breadcrumbs\">\n");
      out.write("\t\t\t\t \n");
      out.write("                    <li class=\"home\">\n");
      out.write("                       <a href=\"index.html\" title=\"Go to Home Page\"><img src=\"images/home.png\" alt=\"\"/></a>&nbsp;\n");
      out.write("                       <span>&gt;</span>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                       Sales\n");
      out.write("                    </li>&nbsp;\n");
      out.write("                       <span>&gt;</span>\n");
      out.write("\t\t\t\t\t<li>Cart Item</li>\n");
      out.write("                </ul>\n");
      out.write("              \n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t<!-- start Dresses-page -->\n");
      out.write("\t<!-- content-section-starts -->\n");
      out.write("<div class=\"women_main\">\n");
      out.write("<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"row single\">\n");
      out.write("\t\t\t\t<div class=\"col-md-9 span-single\">\n");
      out.write("\t\t\t\t  <div class=\"single_left\">\n");
      out.write("\t\t\t\t\t<div class=\"single-bottom2\">\n");
      out.write("<h6>Cart Item      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    Product Description  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        price    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           Total</h6>\n");
      out.write("                                        \n");
      out.write("                                        ");
  int crttotal=0;
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
        
       
      out.write("\n");
      out.write("  \n");
      out.write("                                        \n");
      out.write("\t\t\t\t\t\t<div class=\"product\">\n");
      out.write("\t\t\t\t\t\t   <div class=\"product-desc\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"product-img\">\n");
      out.write("\t\t                           <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/img/");
      out.print(img );
      out.write("\" class=\"img-responsive \" alt=\"\"/>\n");
      out.write("\t\t                       </div>\n");
      out.write("\t\t                       <div class=\"prod1-desc\">\n");
      out.write("\t\t                           <h5><a class=\"product_link\" href=\"#\">");
      out.print(pname);
      out.write("</a></h5>\n");
      out.write("\t\t                           <p class=\"product_descr\">");
      out.print(pdesc);
      out.write("  </p>\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t   </div>\n");
      out.write("\t\t\t\t\t\t\t  <div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t      </div>\n");
      out.write("\t\t\t\t\t\t  <div class=\"product_price\">\n");
      out.write("                                                      <span class=\"price-access\">");
      out.print(price);
      out.write("</span>\n");
      out.write("                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                             \n");
      out.write("                                                                                                                              \n");
      out.write("                                                                 <font color=\"red\"><span class=\"price-access\">");
      out.print(quantity*price);
      out.write("</span></font>\n");
      out.write("                                                                                            <button class=\"fa fa-trash-o\" onclick=\"window.location.href='../../DeleteData?id=");
      out.print(id);
      out.write(" '\" type=\"submit\"/>\n");
      out.write("\n");
      out.write("\t\t              </div>\n");
      out.write("\t\t\t\t\t\t <div class=\"clearfix\"></div>\n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t     </div>\n");
      out.write("\t\t\t\t    \n");
      out.write("\t\t\t\t\n");
      out.write("\t");

}
            st.close();
            connection.close();
        }
    catch(Exception e)
        {
                out.print(""+e);
        }

 

      out.write("   \n");
      out.write("\t\t\t      <div align=\"center\">\n");
      out.write("\t   \t   <h6><font color=\"Red\">Cart Total   &nbsp;&nbsp;&nbsp;&nbsp;");
      out.print(crttotal);
      out.write("<font>\n");
      out.write("                                                                 </div>\n");
      out.write("                                                           \t\n");
      out.write("                                                            <div align=\"right\" >\n");
      out.write("                                                                    \t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<button class=\"button1\" onclick=\"window.location.href='Shipping.jsp'\" ><span>Place Order</span></button>\n");
      out.write("\t\t                  </div>\n");
      out.write("\t\t\t\t\t\t <div class=\"clearfix\"></div>\n");
      out.write("          \t   </div>\n");
      out.write("          \t\t\t\t\t\t\n");
      out.write("\t  </div>\n");
      out.write("\t \n");
      out.write("\t  \n");
      out.write("\t\t </div></div></div>\n");
      out.write("                               \n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
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
