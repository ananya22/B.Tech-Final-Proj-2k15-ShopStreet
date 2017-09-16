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
      String tname="";
      int cid;
      int sid;
      String tid=request.getParameter("tid");
                session.setAttribute("tid", tid);
        String cat=(String)session.getAttribute("category");
       String sup=(String)session.getAttribute("sup");
                ResultSet rs=null;
                	String query="select* from producttype where typeId="+tid;
	PreparedStatement ps=connection.prepareStatement(query);
	int i=0;
	rs=ps.executeQuery();
        if(rs.next())
        {
            tname=rs.getString(2);
            cid=rs.getInt(3);
            sid=rs.getInt(4);
        }
ps.close();
           
                %>

  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="../../index2.html"><b>Admin</b>LTE</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Edit Category</p>
        <form action="../../EditProType" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Category" name="protype" value='<%=tname%>'>
        </div>
           <div class="form-group has-feedback">
     
        </div>
           <div class="form-group has-feedback">
     
        </div>
        
          <div class="row">
            <div class="col-xs-8">    
                          </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"> Update </button>
            </div><!-- /.col -->
          </div>
        </form>

        <!-- /.social-auth-links -->

        
        

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    
</body></html>