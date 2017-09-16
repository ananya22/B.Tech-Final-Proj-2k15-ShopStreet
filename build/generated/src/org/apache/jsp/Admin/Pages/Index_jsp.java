package org.apache.jsp.Admin.Pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/Pages/dbconnect.jsp");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write('\r');
      out.write('\n');

	String driverName="oracle.jdbc.OracleDriver";
	String hostName="localhost";
	String port="1521";
	String dbName="xe";
	String dbUserName="shop";
	String dbUserPass="shop";
	String str="";
	String conn_Url="jdbc:oracle:thin:@"+hostName+":"+port+":"+dbName;
	
	Connection connection=null;

	try
	{
		Class.forName(driverName);
		connection = DriverManager.getConnection(conn_Url,dbUserName,dbUserPass);
                                str="Connection successful";
        }
	
	catch(Exception e)
	{
		str+=e;
	}

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Admin | Dashboard</title>\r\n");
      out.write("    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>\r\n");
      out.write("    <!-- Bootstrap 3.3.2 -->\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "style.jsp", out, false);
      out.write("\r\n");
      out.write("  <link href=\"../bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <!-- DATA TABLES -->\r\n");
      out.write("    <link href=\"../plugins/datatables/dataTables.bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <!-- Theme style -->\r\n");
      out.write("    <link href=\"../dist/css/AdminLTE.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function newDoc(p1) {\r\n");
      out.write("    \r\n");
      out.write("    var falg=confirm(\"Are you sure\");\r\n");
      out.write("\tif(falg){\r\n");
      out.write("\t\r\n");
      out.write("    window.location.href = \"../../DeleteUser?id=\"+p1;\r\n");
      out.write("        }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>    \r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"skin-blue\">\r\n");
      out.write("    <div class=\"wrapper\">\r\n");
      out.write("      \r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../Index/header.jsp", out, false);
      out.write("\r\n");
      out.write("      <!-- Left side column. contains the logo and sidebar -->\r\n");
      out.write("      ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../Pages/Sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("      <!-- Content Wrapper. Contains page content -->\r\n");
      out.write("      <div class=\"content-wrapper\">\r\n");
      out.write("          \r\n");
      out.write("        <!-- Content Header (Page header) -->\r\n");
      out.write("        <section class=\"content-header\">\r\n");
      out.write("             <section class=\"content\">\r\n");
      out.write("          <!-- Small boxes (Stat box) -->\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-3 col-xs-6\">\r\n");
      out.write("              <!-- small box -->\r\n");
      out.write("              <div class=\"small-box bg-aqua\">\r\n");
      out.write("                <div class=\"inner\">\r\n");
      out.write("                  <h3>150</h3>\r\n");
      out.write("                  <p>Shipping Details</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"icon\">\r\n");
      out.write("                  <i class=\"ion ion-bag\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"shippingdetails.jsp\" class=\"small-box-footer\">More info <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div><!-- ./col -->\r\n");
      out.write("            <div class=\"col-lg-3 col-xs-6\">\r\n");
      out.write("              <!-- small box -->\r\n");
      out.write("              <div class=\"small-box bg-green\">\r\n");
      out.write("                <div class=\"inner\">\r\n");
      out.write("                  <h3>53<sup style=\"font-size: 20px\"></sup></h3>\r\n");
      out.write("                  <p>Customer Sales</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"icon\">\r\n");
      out.write("                  <i class=\"ion ion-stats-bars\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"shippingcart.jsp\" class=\"small-box-footer\">More info <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div><!-- ./col -->\r\n");
      out.write("            <div class=\"col-lg-3 col-xs-6\">\r\n");
      out.write("              <!-- small box -->\r\n");
      out.write("              <div class=\"small-box bg-yellow\">\r\n");
      out.write("                <div class=\"inner\">\r\n");
      out.write("                  <h3>44</h3>\r\n");
      out.write("                  <p>User Registrations</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"icon\">\r\n");
      out.write("                  <i class=\"ion ion-person-add\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"register.jsp\" class=\"small-box-footer\">More info <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div><!-- ./col -->\r\n");
      out.write("            <div class=\"col-lg-3 col-xs-6\">\r\n");
      out.write("              <!-- small box -->\r\n");
      out.write("              <div class=\"small-box bg-red\">\r\n");
      out.write("                <div class=\"inner\">\r\n");
      out.write("                  <h3>65</h3>\r\n");
      out.write("                  <p>FeedBack</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"icon\">\r\n");
      out.write("                  <i class=\"ion ion-pie-graph\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"feedback.jsp\" class=\"small-box-footer\">More info <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div><!-- ./col -->\r\n");
      out.write("          </div><!-- /.row -->\r\n");
      out.write("          <!-- Main row -->\r\n");
      out.write("          \r\n");
      out.write("              <!-- quick email widget -->\r\n");
      out.write("              <div class=\"box box-info\">\r\n");
      out.write("                <div class=\"box-header\">\r\n");
      out.write("                  <i class=\"fa fa-envelope\"></i>\r\n");
      out.write("                  <h3 class=\"box-title\">Quick Email</h3>\r\n");
      out.write("                  <!-- tools box -->\r\n");
      out.write("                  <div class=\"pull-right box-tools\">\r\n");
      out.write("                    <button class=\"btn btn-info btn-sm\" data-widget=\"remove\" data-toggle=\"tooltip\" title=\"Remove\"><i class=\"fa fa-times\"></i></button>\r\n");
      out.write("                  </div><!-- /. tools -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"box-body\">\r\n");
      out.write("                  <form action=\"../../mailsend\" method=\"post\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <input type=\"email\" class=\"form-control\" name=\"to\" placeholder=\"Email to:\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <input type=\"text\" class=\"form-control\" name=\"subject\" placeholder=\"Subject\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                      <textarea class=\"textarea\" name=\"body\" placeholder=\"Message\" style=\"width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;\"></textarea>\r\n");
      out.write("                    </div>\r\n");
      out.write("                      <div class=\"box-footer clearfix\">\r\n");
      out.write("                          <button type=\"submit\" class=\"pull-right btn btn-default\" id=\"sendEmail\">Send <i class=\"fa fa-arrow-circle-right\"></i></button>\r\n");
      out.write("                </div>\r\n");
      out.write("                  </form>\r\n");
      out.write("                  ");
               
                  if(session.getAttribute("sent")!=null)
                  {
                  
      out.write("\r\n");
      out.write("                  <div>\r\n");
      out.write("                      ");
      out.print(session.getAttribute("sent") );
      out.write("\r\n");
      out.write("                  </div>\r\n");
      out.write("                  ");
}
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </section><!-- /.Left col -->\r\n");
      out.write("            <!-- right col (We are only adding the ID to make the widgets sortable)-->\r\n");
      out.write("            <section class=\"col-lg-5 connectedSortable\">\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("            </section><!-- right col -->\r\n");
      out.write("          </div><!-- /.row (main row) -->\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Main content -->\r\n");
      out.write("         <!-- /.content -->\r\n");
      out.write("      </div><!-- /.content-wrapper -->\r\n");
      out.write("      ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../Index/footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </div><!-- ./wrapper -->\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery 2.1.3 -->\r\n");
      out.write("    <script src=\"../plugins/jQuery/jQuery-2.1.3.min.js\"></script>\r\n");
      out.write("    <!-- Bootstrap 3.3.2 JS -->\r\n");
      out.write("    <script src=\"../bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- DATA TABES SCRIPT -->\r\n");
      out.write("    <script src=\"../plugins/datatables/jquery.dataTables.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"../plugins/datatables/dataTables.bootstrap.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- SlimScroll -->\r\n");
      out.write("    <script src=\"../plugins/slimScroll/jquery.slimscroll.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- FastClick -->\r\n");
      out.write("    <script src='../plugins/fastclick/fastclick.min.js'></script>\r\n");
      out.write("    <!-- AdminLTE App -->\r\n");
      out.write("    <script src=\"../dist/js/app.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- AdminLTE for demo purposes -->\r\n");
      out.write("    <script src=\"../dist/js/demo.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- page script -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("       $(function () {\r\n");
      out.write("        $(\"#example1\").dataTable(\r\n");
      out.write("                {\r\n");
      out.write("                    serverSide: true,\r\n");
      out.write("    ajax: '/data-source'\r\n");
      out.write("                }\r\n");
      out.write("                );\r\n");
      out.write("        \r\n");
      out.write("      });\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write(" </body>\r\n");
      out.write("  \r\n");
      out.write("</html>\r\n");
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
