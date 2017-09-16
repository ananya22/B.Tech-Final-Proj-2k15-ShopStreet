    <!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page language="java" %> 
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
function newDoc(p11) {
    
    var falg=confirm("Are you sure");
	if(falg){
	
    window.location.href = "../../DeleteSupplier?id="+p11;
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
          <!-- Small boxes (Stat box) -->
          <div class="row">
 <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Table With Full Features</h3>
                </div><!-- /.box-header -->
               
                <div class="box-body">
                  
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr align="center">
                          <th align="center">productID</th>
                           <th align="center">ProductName</th>
                        <th align="center">TypeId</th>
                           <th align="center">Cost</th>
                     <th align="center">Wat</th>
                     <th align="center">Available</th>
                     <th align="center">image</th>
                     <th align="center">Description</th>
                     <th align="center">Cargo</th>
                     <th align="center">Mfg</th>
                     <th align="center">Efg</th>
                     <th align="center">require</th>
                  
                           <th>Delete</th>
                         <th>Edit</th>
                      </tr>
                    </thead>
                    <tbody>
     <%
                    ResultSet rs=null;
	 try
	{
	
	String query="select* from product ";
	PreparedStatement ps=connection.prepareStatement(query);
	int i=0;
	rs=ps.executeQuery();
   
           


	while(rs.next())
	{
	int id=Integer.parseInt(rs.getString(1));	
            %><tr >
    	<td align="center">  <%=rs.getString(1)%>  </td>
        <td align="center">  <%=rs.getString(2)%>  </td>
        <td align="center">  <%=rs.getString(3)%>  </td>
        <td align="center">  <%=rs.getString(4)%>  </td>
         <td align="center">  <%=rs.getString(5)%>  </td>
         <td align="center">  <%=rs.getString(6)%>  </td>
         <td align="center">  <%=rs.getString(7)%>  </td>
          <td align="center">  <%=rs.getString(8)%>  </td> 
          <td align="center">  <%=rs.getString(9)%>  </td>
           <td align="center">  <%=rs.getString(10)%>  </td> 
           <td align="center">  <%=rs.getString(11)%>  </td>
            <td align="center">  <%=rs.getString(12)%>  </td>
      <td align="center">
            
                                   <button class="fa fa-trash-o" onclick="newDoc(<%=id%>)" type="submit"/>

     </td>
  
     <td align="center"> 
 <button class="fa fa-edit" onclick="window.location.href='../update/EditSupplier.jsp?sid=<%=id%> '" type="submit"/>
     </td>
                       
 </tr>
        <%    
        }
	
	ps.close();
        
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>   

                        
                      
                    </tbody>
                    <tfoot>
                      <tr>
                        <th align="center">CategoryId</th>
                        <th align="center">CategoryName</th>
                        <!--<th>edit</th>
                        <th>Delete</th>-->
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->           
                      </div><!-- /.row (main row) -->

        </section>
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
