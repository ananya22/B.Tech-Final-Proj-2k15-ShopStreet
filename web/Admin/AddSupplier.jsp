<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
   <jsp:include page="bootstrap.jsp"/>
  </head>
  <body class="skin-blue">
    <div class="wrapper">
      
       <jsp:include page="header.jsp"/>      
       
     <jsp:include page="Sidebar.jsp"/>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        
        
        
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-6">
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Add Supplier</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="../Supplierdetail"  >
                  <div class="box-body">
                    <div class="form-group">
                      <label >Supplier Name</label>
                      <input type="text" class="form-control" name="sname" placeholder="Enter Supplier Name">
                    </div>
                     <div class="form-group">
                      <label >Supplier Email ID</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" name="eid"  placeholder="Enter Supplier Email ID">
                    </div>
                     <div class="form-group">
                      <label >Supplier Contact No</label>
                      <input type="text" class="form-control"  name="mbno" placeholder="Enter Supplier Contact No">
                    </div>
                    
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              </div><!-- /.box -->

              <!-- Form Element sizes -->
            <!-- right column -->
           <!--/.col (right) -->
            </div>
            </div>
          </div>   <!-- /.row -->
        </section><!--
                  </div><!-- /.content-wrapper -->
     <jsp:include page="footer.jsp"/>
    </div><!-- ./wrapper -->

    <jsp:include page="footerscript.jsp"/>
  </body>
</html>