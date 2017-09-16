/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registeruser;

/**
 *
 * @author Deepika
 * 
 */
import java.sql.*;
import java.io.*;

public class feed{
	private String name;
	private String email;
        private String phone;
	private String msg;
           public feed()
           {
               
           }

    public feed(String name, String email, String phone, String msg) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.msg = msg;
        System.err.println(name);
    }
           
           
	Dbclass db=new Dbclass();
	Connection con;
	PreparedStatement stmt=null;
                    ResultSet rset=null;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

	public String setUser() throws SQLException
	{
		
	String str="";		
                  try{
                           con = db.dbConnect();
                           if(con!=null) {
                             stmt=con.prepareStatement("insert into feed values(?,?,?,?)");
                            Statement stmt1=con.createStatement();
                               if(rset.next())
                    {
                            
                            stmt.setString(1,name);
                            stmt.setString(2,email);
                            stmt.setString(3,phone);
                            stmt.setString(4,msg);
                            
                        stmt.executeUpdate();
                        stmt.close();
         str="Record Inserted Successfully";
                        
           }
            }
        }
         catch(Exception e)
{
str +=e;
}
		 finally {
                                                       if (con != null)
                                                       {
				con.close();
                                                        }

		}
		
	
	               return str;
        }


        }