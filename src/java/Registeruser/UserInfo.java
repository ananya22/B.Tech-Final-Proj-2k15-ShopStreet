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

public class UserInfo{
	private String userId;
	private String firstName;
        private String lastName;
	private String userAddress;
        private String userEmail;
        private String userPhone;
        
          private int userCity;
           private String postCode;
           private String password;
private String que;
private String ans;
    private String uid;
    private String email;
    private  String fn;
    private String ln;
    
           public UserInfo()
           {
               
           }

    public UserInfo(String userId, String firstName, String lastName, String userAddress, String userEmail, String userPhone, int userCity, String postCode) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userAddress = userAddress;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
       
        this.userCity = userCity;
        this.postCode = postCode;
        System.err.println(userId);
    }
           
           
	Dbclass db=new Dbclass();
	Connection con;
	PreparedStatement stmt=null;
                    ResultSet rset=null;
    public UserInfo(String password, String que, String ans,String uid,String eid) {
        this.password = password;
        this.que = que;
        this.ans = ans;
        this.uid=uid;
        this.email=eid;
    }

    public String getUid() {
        return uid;
    }

    public void setEmail(String email) {
        this.email = email;
       
    }
public String getEmail() {
        return email;
    }

    public void setUid(String uid) {
        this.uid = uid;
       
    }

    public String getPassword() {
        System.out.println("getmethoduserid :- > "+uid);
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQue() {
        return que;
    }

    public void setQue(String que) {
        this.que = que;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }
	
		
	
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getFn() {
        return fn;
    }

    public void setFn(String fn) {
        this.fn = fn;
    }

    public String getLn() {
        return ln;
    }

    public void setLn(String ln) {
        this.ln = ln;
    }

   

    public int getUserCity() {
        return userCity;
    }

    public void setUserCity(int userCity) {
        this.userCity = userCity;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
    public String todayDate()
    {
        java.util.Date javaDate = new java.util.Date();
      long javaTime = javaDate.getTime();
      

      //Get and display SQL DATE
      java.sql.Date sqlDate = new java.sql.Date(javaTime);
      
        return(sqlDate.toString()) ;
    }
	
	public String setUser() throws SQLException
	{
		
	String str="";		
                  try{
                           int id=0;
                           con = db.dbConnect();
                           if(con!=null) {
                             stmt=con.prepareStatement("insert into userInfo values(?,?,?,?,?,?,?,?,?,?)");
                            Statement stmt1=con.createStatement();
                                rset=stmt1.executeQuery("select max(REGID) from userinfo");
                   if(rset.next())
                    {
                            id=rset.getInt(1);
                             
                            stmt1.close();
                            id++;
                          
                            stmt.setInt(1,id);
                            stmt.setString(2,userId);
                            stmt.setString(3,firstName);
                            stmt.setString(4,lastName);
                            stmt.setString(5,userAddress);
                            stmt.setFloat(6,userCity);
                            stmt.setString(7,postCode);
                            stmt.setString(8,userPhone);
                            stmt.setString(9,userEmail);
                            stmt.setString(10,todayDate());

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


        public String setUserLogin() throws SQLException
	{
		
                String str="";		
                  try{
                           
                                                      con = db.dbConnect();
                           if(con!=null) {
                             PreparedStatement ps=con.prepareStatement("insert into userlogin values(?,?,?,?,?,?,?)");
                            
                  
                            ps.setString(1,uid);
                            ps.setString(2,password);
                            ps.setString(3,que);
                            ps.setString(4,ans);
                            ps.setString(5,email);
                            ps.setString(6,fn);
                            ps.setString(7,ln);
                            ps.executeUpdate();
                        ps.close();
         str="User Detail Successfully submited";
                        
           
            }
        }
         catch(Exception e)
                    {
                       System.out.println(e);
                    }
		 finally {
                                                      if (con != null) 
                                                            con.close();
                                                }
		
	
	               return str;
        }

        }