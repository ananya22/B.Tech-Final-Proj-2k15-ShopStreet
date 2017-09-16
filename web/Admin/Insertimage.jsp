<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="getcon.jsp"%> 
 
<%
try
{
    String ID="";
    String Productname="";
int Typeid = 0;
int cost=0;
int vat=0;
int available=0;

String ImageFile="";
String itemName = "";
String description = "";
int charge=0;
String mfg="";
String exp="";
String flag="";

String valid="";


boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("ImageFile"))
{
ImageFile=value;
}
if(name.equals("Pname")) 
{
    Productname=value;
}
if(name.equals("type")) 
{
    Typeid=Integer.parseInt(value);
}
if(name.equals("cost"))
       {
           cost=Integer.parseInt(value);
       }
if(name.equals("vat"))
       {
           vat=Integer.parseInt(value);
       }
if(name.equals("available")) 
{
    available=Integer.parseInt(value);
}
if(name.equals("charge"))
       {
           charge=Integer.parseInt(value);
       }
if(name.equals("description"))
       {
           description=value;
       }
if(name.equals("mfg"))
       {
           mfg=value;
       }
if(name.equals("exp")) 
{
    exp=value;
}

}
else
{
try
{
itemName = item.getName();
File savedFile = new File(config.getServletContext().
        getRealPath("/")+"/"+itemName);
item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
 
try
{
     
//st.executeUpdate("insert into product values"
  //      + " ('"+ID+"','"+Productname+"','"+Typeid+"', '"+cost+"','"+vat+"','"+available+"','"+itemName+"''"+description+"','"+charge+"','"+mfg+"','"+exp+"','"+valid+"','"+flag+"')");
if(available >0)
    flag="y";
else
    flag="n";
    
PreparedStatement ps=cn.prepareStatement("insert into  product values(?,?,?,?,?,?,?,?,?,?,?,?)");
                           // Statement st=cn.createStatement();
                             //   ResultSet rs=st.executeQuery("select max(productid) from product");
                                int i;
                         i=(int)(Math.random() * (1000 - 1) + 1);
                        i+=100;
                         ID +=Productname.substring(1, 5);
                        String c=((String)session.getAttribute("c")).substring(1, 5);
                        String t=((String)session.getAttribute("t")).substring(1, 5);
                         
                             ID +=c+t+i;
                          
                            ps.setString(1,ID);
                            ps.setString(2,Productname);
                            ps.setInt(3,Typeid);
                            ps.setInt(4,cost);
                            ps.setInt(5,vat);
                            ps.setInt(6,available);
                            ps.setString(7,itemName);
                            ps.setString(8,description);
                            ps.setInt(9,charge);
                            ps.setString(10,mfg);
                            ps.setString(11,exp);
                  
                           
                            ps.setString(12,flag);
                             ps.executeUpdate();
                            ps.close();


}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
%>