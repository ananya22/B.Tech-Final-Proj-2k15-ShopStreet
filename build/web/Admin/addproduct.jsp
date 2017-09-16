<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="dbconnect.jsp" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <jsp:include page="bootstrap.jsp"/>
    <script src="jquery-1.9.0.min.js"></script>

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
                  </div><!-- /.content-wrapper -->
     <jsp:include page="footer.jsp"/>
    </div><!-- ./wrapper -->

    <jsp:include page="footerscript.jsp"/>
    </div>
  </body>
</html>
<%
	ps.close();
      
	connection.close();
	
	}
	
	catch(Exception e)
	{
		out.println("<br>"+e);
	}
      %>