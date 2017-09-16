<%@ page import ="java.sql.*"%>
<%
	String driverName="oracle.jdbc.OracleDriver";
	String hostName="localhost";
	String port="1521";
	String dbName="xe";
	String dbUserName="Shop";
	String dbUserPass="shop";
	String str="";
	String conn_Url="jdbc:oracle:thin:@"+hostName+":"+port+":"+dbName;
	
	Connection connection=null;

	try
	{
		Class.forName(driverName);
		connection = DriverManager.getConnection(conn_Url,dbUserName,dbUserPass);
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<%=str%>