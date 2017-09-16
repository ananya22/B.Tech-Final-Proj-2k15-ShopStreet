<!DOCTYPE html>
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
                  <h3 class="box-title">ADD CATEGORY</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="../../Categorydetail">
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
          </div>   <!-- /.row -->
    </div>
      
    </section>
        <!--
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