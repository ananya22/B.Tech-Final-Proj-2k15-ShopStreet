<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="dbconnect.jsp" %>
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

    <script>
        function showType(sel) {
	var CategoryID = sel.options[sel.selectedIndex].value;  
	$("#output1").html( "" );
	
	if (CategoryID.length > 0 ) { 
		
	 $.ajax({
			type: "POST",
			url: "fetch_type.jsp",
			data: "CategoryID="+CategoryID,
			cache: false,
			beforeSend: function () { 
				$('#output1').html('<img src="loader.gif" alt="" width="24" height="24">');
			},
			success: function(html) {    
				$("#output1").html( html );
			}
		});
	} 
	
}
function TypeID(sel)
{
	var TypeID = sel.options[sel.selectedIndex].value;  
	

document.getElementById('type').value= TypeID;
}


    </script>
    
    
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
                  <h3 class="box-title">ADD PRODUCT</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" name="form1" method="post" action="Insertimage.jsp" enctype="multipart/form-data">
                  <div class="box-body">
                    
                   <div class="form-group">
                  <label>Select</label>
                  <select class="form-control"  name="cat" onChange="showType(this);">
                      <option> Select Category </option><%
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
            %>    
            <option value="<%=cid%>"><%=c%></option>
        <%
        }
    
%>                      
                      </select>
                    </div>
                      <div id="output1" class="form-group"></div>

                      <div class="form-group">
                      <label >Product Name</label>
                      <input type="text" name="Pname" class="form-control"  placeholder="Enter Name">
                    </div>
                                         <div class="form-group">
                      <label >Cost Per Unit</label>
                      <input type="text" name="cost" class="form-control"  placeholder="Enter Cost Per Unit">
                    </div>
                   <div class="form-group">
                      <label >VAT</label>
                      <input  type="text" name="vat" class="form-control"  placeholder="Enter VAT">
                    </div>
                      <div class="form-group">
                      <label >Available Unit</label>
                      <input type="text" name="available" class="form-control"  placeholder="Enter Available Unit">
                    </div>
                  
                    <div class="form-group">
                      <label >Upload Image</label>
                      <input type="file" name="ImageFile" id="ImageFile">
                      
                    </div>
                       <div class="form-group">
                      <label>Description</label>
                      <input type="text" class="form-control"  name="description" value="" placeholder="Description">
                     
                    </div>
                    <div class="form-group">
                      <label >Cargo Charges</label>
                      <input type="text" name="charge" class="form-control"  placeholder="Enter Cargo Charges">
                    </div>
                       <div class="box-body">
                       <div class="form-group">
                    <label>MFG Date </label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" name="mfg" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                    </div><!-- /.input group -->
                     <div class="form-group">
                    <label>EXP Date</label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" name="exp" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                    </div><!-- /.input group -->
                     </div>
                    
                  </div><!-- /.form group -->
                  </div><!-- /.form group -->
                   
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
        </section><!--
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
</html>>
<%
	ps.close();
      
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>