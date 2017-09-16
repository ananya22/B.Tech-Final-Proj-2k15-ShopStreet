/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MVC.Model.Bean;

import Registeruser.Dbclass;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Deepika
 */
public class shippingBean {
    
	private String firstName;
        private String lastName;
	private String userAddress;
        private String userEmail;
        private String userPhone;
        private String userId;
          private int userCity;
           private String postCode;
           private  int Id;
           private String crt;
           public shippingBean()
           {
               
           }

    public String getCrt() {
        return crt;
    }

    public void setCrt(String crt) {
        this.crt = crt;
    }
           
    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
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
      java.sql.Date sqlDate = new java.sql.Date(javaTime);
      return(sqlDate.toString()) ;
    }
    
    Dbclass db=new Dbclass();
	Connection con;
	PreparedStatement stmt=null;
                    ResultSet rset=null;
                        
      public String shippingdetail() throws SQLException
	{
		
	String str="";		
                  try{
                          con = db.dbConnect();     
                      Statement st=null;
            ResultSet rs=null;
            int c=0;
            int total=0;
            int od=100;
            String o=getCrt();
                           o=o.substring(6, 11);
                           String ord="Ord"+o;
                          ord +=od;
                st=con.createStatement();
                rs=st.executeQuery("select * from shoppingcart where sid='"+getCrt()+"'");
                while(rs.next())
                {
                    c++;
                    int q=rs.getInt("QUANTITY");
                    int p=rs.getInt("PRICE");
                    total +=q * p;
                }    
                      int id=0;
                       
                           if(con!=null) {
                             stmt=con.prepareStatement("insert into shippingdetail values(?,?,?,?,?,?,?,?,?)");
                            Statement stmt1=con.createStatement();
                                rset=stmt1.executeQuery("select max(SHIPPNGID) from shippingdetail");
                   if(rset.next())
                    {
                            id=rset.getInt(1);
                             
                            stmt1.close();
                            id++;
                             //setId(Id);
                            
                            stmt.setInt(1,id);
                            stmt.setString(2, userId);
                            stmt.setString(3,userPhone);
                            stmt.setString(4,userAddress);
                            stmt.setFloat(5,userCity);
                            stmt.setString(6,postCode);
                            stmt.setString(7,lastName);
                            stmt.setString(8,firstName);
                            stmt.setString(9,userEmail);
                            stmt.executeUpdate();
                            stmt.close();
                      //      con.close();
                            PreparedStatement   stm=con.prepareStatement("insert into orderdetail values(?,?,?,?,?,?)");
                            //con.close();
                             stm.setString(1,ord);
                            stm.setString(2, getUserId());
                            stm.setString(3,todayDate());
                            stm.setInt(4,total);
                            stm.setInt(5,c);
                            stm.setInt(6,id);
                            stm.executeUpdate();
                            stm.close();
                            
                            PreparedStatement strn=con.prepareStatement("insert into Transactiondetail values(?,?,?,?)");
                            
                            strn.setInt(1,id);
                            strn.setString(2, getUserId());
                            strn.setInt(3,total);
                            strn.setString(4,todayDate());
                            strn.executeUpdate();
                            strn.close();
                            
                            ResultSet r=null;
                             ResultSet p=null;
                    Statement st1=null;
                    PreparedStatement stp=null;
                     Statement s=con.createStatement();
                                r=s.executeQuery("select * from shoppingcart where sId='"+getCrt()+"'");
                                
                                int tid=0;
                                while(r.next())
                                {
                                    st1=con.createStatement();
                                p=st1.executeQuery("select max(TransactionId) from Transaction");
                                if(p.next())
                                {   
                                    tid=p.getInt(1);
                                    //st1.close();
                                    tid++;
                                
                                    stp=con.prepareStatement("insert into Transaction values(?,?,?,?,?)");
                                    stp.setInt(1,tid);
                                    stp.setString(2,r.getString("ProductId"));
                                    stp.setInt(3,r.getInt("price"));
                                     stp.setInt(4,r.getInt("quantity"));
                                      stp.setString(5,ord);
                                       stp.executeUpdate();
                                      stp.close();
                                  //    con.close();
                                }
                                st1.close();
                                }
                                Statement sd=con.createStatement();
                                sd.executeUpdate("delete from shoppingcart where sId='"+getCrt()+"'");
                                sd.close();
                                s.close();
                            
                            con.close();
                            
         str="Record Inserted Successfully";
                        
           }
            }
        }
         catch(Exception e)
          {
                str +=e;
            }
            return str;
        }

           
    
}
