<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="dbconnect.jsp" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <jsp:include page="style.jsp"/>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="../plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    
    
<script type="text/javascript">
function newDoc(p1) {
    
    var falg=confirm("Are you sure");
	if(falg){
	
    window.location.href = "../../DeleteUser?id="+p1;
        }
}

</script>    
    
  </head>
  <body class="skin-blue">
    <div class="wrapper">
      
     <jsp:include page="header.jsp"/>
      <!-- Left side column. contains the logo and sidebar -->
      <jsp:include page="Sidebar.jsp"/>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        
         <section class="content-header">
         
        </section>
        
        
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-6">
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">ADD PRODUCT TYPE</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="../../Producttype">
                  <div class="box-body">
                    <div class="form-group">
                      <label >Product Type Name</label>
                      <input type="text" class="form-control" name="type" placeholder="Enter Product Name">
                    </div>
                     <div class="form-group">
                      <label>Select Category Name</label>
                      <select class="form-control" name="category">
                        <option>  <%
                ResultSet rs=null;
                
                try
    {
	int cid=0;
	String query="select * from category ORDER BY categoryname";
	PreparedStatement ps=connection.prepareStatement(query);
	
	rs=ps.executeQuery();
        while(rs.next())
	{
             cid=Integer.parseInt(rs.getString("categoryid"));
            %>    
            <option value="<%=cid%>"><%=rs.getString(2)%></option>
        <%
        }
    
%>                     
                   
                       
                      </select>
                    </div>
                     <div class="form-group">
                      <label>Select</label>
                      <select class="form-control" name="brand">
                        <option><%
                 ResultSet rs1=null;
    
	
	String  query1="select * from supplier  ORDER BY suppliername ";
	 PreparedStatement ps1=connection.prepareStatement(query1);
	
	rs1=ps1.executeQuery();
        while(rs1.next())
	{
                    int id=Integer.parseInt(rs1.getString("supplierId")); 
            %>    
            <option value="<%= id %>"><%=rs1.getString(2)%></option>
        <%
        }
    
%>                
                        
                      </select>
                    </div>
                   
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              </div><!-- /.box -->

              <!-- Form Element sizes -->
             <!-- /.box-body -->
              </div><!-- /.box -->
            </div><!--/.col (right) -->
          </div>   <!-- /.row -->
        </section><!--
      </div><!-- /.content-wrapper -->
     <jsp:include page="footer.jsp"/>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="../plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js" type="text/javascript"></script>
    <!-- page script -->
    <script type="text/javascript">
       $(function () {
        $("#example1").dataTable(
                {
                    serverSide: true,
    ajax: '/data-source'
                }
                );
        
      });

    </script>
   
  </body>
</html>
 <%
	ps.close();
        ps1.close();
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>