package org.apache.jsp.Admin.Pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class addproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>\n");
      out.write("    <!-- Bootstrap 3.3.2 -->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "style.jsp", out, false);
      out.write("\n");
      out.write("  <link href=\"../bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <!-- DATA TABLES -->\n");
      out.write("    <link href=\"../plugins/datatables/dataTables.bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <!-- Theme style -->\n");
      out.write("    <link href=\"../dist/css/AdminLTE.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function newDoc(p1) {\n");
      out.write("    \n");
      out.write("    var falg=confirm(\"Are you sure\");\n");
      out.write("\tif(falg){\n");
      out.write("\t\n");
      out.write("    window.location.href = \"../../DeleteUser?id=\"+p1;\n");
      out.write("        }\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>   \n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function showType(sel) {\n");
      out.write("\tvar CategoryID = sel.options[sel.selectedIndex].value;  \n");
      out.write("\t$(\"#output1\").html( \"\" );\n");
      out.write("\t\n");
      out.write("\tif (CategoryID.length > 0 ) { \n");
      out.write("\t\t\n");
      out.write("\t $.ajax({\n");
      out.write("\t\t\ttype: \"POST\",\n");
      out.write("\t\t\turl: \"fetch_type.jsp\",\n");
      out.write("\t\t\tdata: \"CategoryID=\"+CategoryID,\n");
      out.write("\t\t\tcache: false,\n");
      out.write("\t\t\tbeforeSend: function () { \n");
      out.write("\t\t\t\t$('#output1').html('<img src=\"loader.gif\" alt=\"\" width=\"24\" height=\"24\">');\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tsuccess: function(html) {    \n");
      out.write("\t\t\t\t$(\"#output1\").html( html );\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t} \n");
      out.write("\t\n");
      out.write("}\n");
      out.write("function TypeID(sel)\n");
      out.write("{\n");
      out.write("\tvar TypeID = sel.options[sel.selectedIndex].value;  \n");
      out.write("\t\n");
      out.write("\n");
      out.write("document.getElementById('type').value= TypeID;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("  <body class=\"skin-blue\">\n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("      \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("      \n");
      out.write("       \n");
      out.write("     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Sidebar.jsp", out, false);
      out.write("\n");
      out.write("      <!-- Content Wrapper. Contains page content -->\n");
      out.write("      <div class=\"content-wrapper\">\n");
      out.write("        <!-- Content Header (Page header) -->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Main content -->\n");
      out.write("        <section class=\"content\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <!-- left column -->\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("              <!-- general form elements -->\n");
      out.write("              <div class=\"box box-primary\">\n");
      out.write("                <div class=\"box-header\">\n");
      out.write("                  <h3 class=\"box-title\">ADD PRODUCT</h3>\n");
      out.write("                </div><!-- /.box-header -->\n");
      out.write("                <!-- form start -->\n");
      out.write("                <form role=\"form\" name=\"form1\" method=\"post\" action=\"Insertimage.jsp\" enctype=\"multipart/form-data\">\n");
      out.write("                  <div class=\"box-body\">\n");
      out.write("                    \n");
      out.write("                   <div class=\"form-group\">\n");
      out.write("                  <label>Select</label>\n");
      out.write("                  <select class=\"form-control\"  name=\"cat\" onChange=\"showType(this);\">\n");
      out.write("                      <option> Select Category </option>");

            ResultSet rs=null;
                
                try
    {
	int cid=0;
            String c="";
	String  query="select * from  category  ORDER BY CATEGORYNAME ";
	PreparedStatement ps=connection.prepareStatement(query);
	
	rs=ps.executeQuery();
        while(rs.next())
	{
                c=rs.getString("CategoryName");
                session.setAttribute("c", c);
                cid=Integer.parseInt(rs.getString("CATEGORYID"));
            
      out.write("    \n");
      out.write("            <option value=\"");
      out.print(cid);
      out.write('"');
      out.write('>');
      out.print(c);
      out.write("</option>\n");
      out.write("        ");

        }
    

      out.write("                      \n");
      out.write("                      </select>\n");
      out.write("                    </div>\n");
      out.write("                      <div id=\"output1\" class=\"form-group\"></div>\n");
      out.write("\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                      <label >Product Name</label>\n");
      out.write("                      <input type=\"text\" name=\"Pname\" class=\"form-control\"  placeholder=\"Enter Name\">\n");
      out.write("                    </div>\n");
      out.write("                                         <div class=\"form-group\">\n");
      out.write("                      <label >Cost Per Unit</label>\n");
      out.write("                      <input type=\"text\" name=\"cost\" class=\"form-control\"  placeholder=\"Enter Cost Per Unit\">\n");
      out.write("                    </div>\n");
      out.write("                   <div class=\"form-group\">\n");
      out.write("                      <label >VAT</label>\n");
      out.write("                      <input  type=\"text\" name=\"vat\" class=\"form-control\"  placeholder=\"Enter VAT\">\n");
      out.write("                    </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                      <label >Available Unit</label>\n");
      out.write("                      <input type=\"text\" name=\"available\" class=\"form-control\"  placeholder=\"Enter Available Unit\">\n");
      out.write("                    </div>\n");
      out.write("                  \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label >Upload Image</label>\n");
      out.write("                      <input type=\"file\" name=\"ImageFile\" id=\"ImageFile\">\n");
      out.write("                      \n");
      out.write("                    </div>\n");
      out.write("                       <div class=\"form-group\">\n");
      out.write("                      <label>Description</label>\n");
      out.write("                      <input type=\"text\" class=\"form-control\"  name=\"description\" value=\"\" placeholder=\"Description\">\n");
      out.write("                     \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                      <label >Cargo Charges</label>\n");
      out.write("                      <input type=\"text\" name=\"charge\" class=\"form-control\"  placeholder=\"Enter Cargo Charges\">\n");
      out.write("                    </div>\n");
      out.write("                       <div class=\"box-body\">\n");
      out.write("                       <div class=\"form-group\">\n");
      out.write("                    <label>MFG Date </label>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                      <div class=\"input-group-addon\">\n");
      out.write("                        <i class=\"fa fa-calendar\"></i>\n");
      out.write("                      </div>\n");
      out.write("                      <input type=\"text\" name=\"mfg\" class=\"form-control\" data-inputmask=\"'alias': 'dd/mm/yyyy'\" data-mask/>\n");
      out.write("                    </div><!-- /.input group -->\n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                    <label>EXP Date</label>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                      <div class=\"input-group-addon\">\n");
      out.write("                        <i class=\"fa fa-calendar\"></i>\n");
      out.write("                      </div>\n");
      out.write("                      <input type=\"text\" name=\"exp\" class=\"form-control\" data-inputmask=\"'alias': 'dd/mm/yyyy'\" data-mask/>\n");
      out.write("                    </div><!-- /.input group -->\n");
      out.write("                     </div>\n");
      out.write("                    \n");
      out.write("                  </div><!-- /.form group -->\n");
      out.write("                  </div><!-- /.form group -->\n");
      out.write("                   \n");
      out.write("                  </div><!-- /.box-body -->\n");
      out.write("\n");
      out.write("                  <div class=\"box-footer\">\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("                  </div>\n");
      out.write("                </form>\n");
      out.write("              </div><!-- /.box -->\n");
      out.write("\n");
      out.write("              <!-- Form Element sizes -->\n");
      out.write("             \n");
      out.write("              </div><!-- /.box -->\n");
      out.write("            </div><!--/.col (right) -->\n");
      out.write("             <!-- /.row -->\n");
      out.write("        </section><!--\n");
      out.write("      ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </div><!-- ./wrapper -->\n");
      out.write("\n");
      out.write("    <!-- jQuery 2.1.3 -->\n");
      out.write("    <script src=\"../plugins/jQuery/jQuery-2.1.3.min.js\"></script>\n");
      out.write("    <!-- Bootstrap 3.3.2 JS -->\n");
      out.write("    <script src=\"../bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- DATA TABES SCRIPT -->\n");
      out.write("    <script src=\"../plugins/datatables/jquery.dataTables.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../plugins/datatables/dataTables.bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- SlimScroll -->\n");
      out.write("    <script src=\"../plugins/slimScroll/jquery.slimscroll.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- FastClick -->\n");
      out.write("    <script src='../plugins/fastclick/fastclick.min.js'></script>\n");
      out.write("    <!-- AdminLTE App -->\n");
      out.write("    <script src=\"../dist/js/app.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- AdminLTE for demo purposes -->\n");
      out.write("    <script src=\"../dist/js/demo.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- page script -->\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("       $(function () {\n");
      out.write("        $(\"#example1\").dataTable(\n");
      out.write("                {\n");
      out.write("                    serverSide: true,\n");
      out.write("    ajax: '/data-source'\n");
      out.write("                }\n");
      out.write("                );\n");
      out.write("        \n");
      out.write("      });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("   \n");
      out.write("  </body>\n");
      out.write("</html>>\n");

	ps.close();
      
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      
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
