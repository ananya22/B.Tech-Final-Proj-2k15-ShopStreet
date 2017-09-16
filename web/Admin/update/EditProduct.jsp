
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page language="java" %> 
<%@ include file="dbconnect.jsp" %>

<html><head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Log in</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.2 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
    <!-- iCheck -->
    <link href="../plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    </head>
   
  <%
     
      String pname="";
      
      int cpu=0;
       int wat=0;
      int aunit=0;
      String image="";
       String desp="";
      int charge=0;
      String mfg="";
       String exp="";
      String valid="";
      String require="";
      String pid=request.getParameter("sid");
                session.setAttribute("product", pid);
                ResultSet rs=null;
                  //String cat=(String)session.getAttribute("product");
      try{
                	String query="select costperunit from product where productId= '"+pid+"'";
                        Statement ps=connection.createStatement();
                        rs=ps.executeQuery(query);
	
        if(rs.next())
        {
            cpu=rs.getInt(1);
            session.setAttribute("cpu", cpu);
         /*wat=rs.getInt(4);
             aunit=rs.getInt(5);
            image=rs.getString(6);
            desp=rs.getString(7);
             charge=rs.getInt(8);
            mfg=rs.getString(9);
            exp=rs.getString(10);
             valid=rs.getString(12);
            require=rs.getString(13);
           */ 
        }
ps.close();
connection.close();
      }catch(Exception e) 
      {
          out.println(e);
      }
                %>

  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="../../index2.html"><b>Admin</b>LTE</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Edit Category</p>
        <form action="../../EditProduct" method="Post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="<%=cpu%>" name="cpu" >
        </div>
        
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"> Update </button>
            </div><!-- /.col -->
            </form>
          </div>
        

        <!-- /.social-auth-links -->

        
        

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    
</body></html>