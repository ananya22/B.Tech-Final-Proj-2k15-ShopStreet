<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Admin | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    
<jsp:include page="bootstrap.jsp"/>
    
  </head>
  <body class="skin-blue">
    <div class="wrapper">
      
          <jsp:include page="Index/header.jsp"/>
      <!-- Left side column. contains the logo and sidebar -->
      <jsp:include page="Index/Sidebar.jsp"/>
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
                  <h3 class="box-title">ADD CATEGORY</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="../Categorydetail">
                  <div class="box-body">
                    <div class="form-group">
                      <label>Add Category</label>
                      <input type="text" class="form-control" name="category" placeholder="Enter category"/>
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              </div><!-- /.box -->

              <!-- Form Element sizes -->
             
              </div><!-- /.box -->
            </div><!--/.col (right) -->
   <!-- /.row -->
        </section>
              </div>  
<!--
                  </div><!-- /.content-wrapper -->
     <jsp:include page="footer.jsp"/>
    </div><!-- ./wrapper -->
 <jsp:include page="footerscript.jsp"/>
 </body>
</html>