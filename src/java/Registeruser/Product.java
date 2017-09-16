/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registeruser;

/**
 *
 * @author Deepika
 */
import java.io.*;
import java.sql.*;
public class Product {
    private String type;
private String category;
private String supplier;
private String eid;
private String mbno;
private String cost;
private String pname;
private String vat;
private String available;
private String image;
private String description;
private String charge;
private String mfg;
private String exp;
private String valid;
private String flag;
private int cid;
private int ptype;
private int sid;
    

    public Product() {
    }

    public Product(String supplier, String eid, String mbno) {
        this.supplier = supplier;
        this.eid = eid;
        this.mbno = mbno;
    }

    public Product(String type, int cid, int sid) {
        this.type = type;
        this.cid = cid;
        this.sid = sid;
    }
public Product(String pname,int ptype,String cost,String vat,String available,String image,String description,String charge,String mfg,String exp,String valid,String flag)
{
    this.pname=pname;
    this.ptype=ptype;
   this.cost=cost;
    this.vat=vat;
    this.available=available;
    this.image=image;
    this.description=description;
    this.charge=charge;
    this.mfg=mfg;
    this.exp=exp;
    this.valid=valid;
   this.flag=flag;
    
}

Dbclass db=new Dbclass();
	Connection con;
	PreparedStatement stmt=null;
                    ResultSet rset=null;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getVat() {
        return vat;
    }

    

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   

    public String getCharge() {
        return charge;
    }

    public void setCharge(String charge) {
        this.charge = charge;
    }
public String getMfg() {
        return mfg;
    }

    public void setMfg(String mfg) {
        this.mfg = mfg;
    }
    public String getExp() {
        return exp;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public String getValid() {
        return valid;
    }

    public void setValid(String valid) {
        this.valid = valid;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }
    public int getPtype() {
        return ptype;
    }

    public void setPtype(int Ptype) {
        this.ptype = Ptype;
    }

    

    public PreparedStatement getStmt() {
        return stmt;
    }

    public void setStmt(PreparedStatement stmt) {
        this.stmt = stmt;
    }
 
    public Product(String category) {
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public String getMbno() {
        return mbno;
    }

    public void setMbno(String mbno) {
        this.mbno = mbno;
    }
   
    
    public String addCategory() throws SQLException 
    {
        con = db.dbConnect();
   String str="";		
           try{
                           int id=0;
                           
                           if(con!=null) {
                             stmt=con.prepareStatement("insert into category values(?,?)");
                            Statement stmt1=con.createStatement();
                                rset=stmt1.executeQuery("select max(CATEGORYID) from category");
                   if(rset.next())
                    {
                            id=rset.getInt(1);
                             
                            stmt1.close();
                            id++;
                          
                            stmt.setInt(1,id);
                            stmt.setString(2,category);
                   
                            stmt.executeUpdate();
                            stmt.close();
                 //           con.close();
                            str="Category Inserted Successfully";
                        
                   }
                }
           }                 
                    catch(Exception e){
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
    public String addSupplier() throws SQLException 
    {
        con= db.dbConnect();
       
   String str="";		
           try{
                           int id=0;
                           
                           if(con!=null) {
                             PreparedStatement ps=con.prepareStatement("insert into supplier values(?,?,?,?)");
                            Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select max(supplierid) from supplier");
                   if(rs.next())
                    {
                            id=rs.getInt(1);
                             
                            st.close();
                            id++;
                          
                            ps.setInt(1,id);
                            ps.setString(2,supplier);
                            ps.setString(3,eid);
                            ps.setString(4,mbno);
                            
                            ps.executeUpdate();
                            ps.close();
                     //       con.close();
                            str="Supplier Inserted Successfully";
                        
                   }
                }
           }                 
                    catch(Exception e){
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

    public String addProducttype() throws SQLException 
    {
        con= db.dbConnect();
       
   String str="";		
           try{
                           int id=0;
                           
                           if(con!=null) {
                             PreparedStatement ps=con.prepareStatement("insert into  producttype values(?,?,?,?)");
                            Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select max(typeid) from producttype");
                   if(rs.next())
                    {
                            id=rs.getInt(1);
                             
                            st.close();
                            id++;
                          
                            ps.setInt(1,id);
                            ps.setString(2,type);
                            ps.setInt(3,cid);
                            ps.setInt(4,sid);
                            
                            ps.executeUpdate();
                            ps.close();
                     //       con.close();
                            str="Producttype Inserted Successfully";
                        
                   }
                }
           }                 
                    catch(Exception e){
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

   
    
 public String addProduct() throws SQLException 
    {
        con= db.dbConnect();
       
   String str="";		
           try{
                           int id=0;
                           
                           if(con!=null) {
                             PreparedStatement ps=con.prepareStatement("insert into  producte values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                            Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select max(productid) from product");
                   if(rs.next())
                    {
                            id=rs.getInt(1);
                             
                            st.close();
                            id++;
                          String x=Integer.toString(id);
                            ps.setString(1,x);
                            ps.setString(2,pname);
                            ps.setInt(3,ptype);
                            ps.setString(4,cost);
                            ps.setString(5,vat);
                            ps.setString(6,available);
                            ps.setString(7,image);
                            ps.setString(8,description);
                            ps.setString(9,charge);
                            ps.setString(10,mfg);
                            ps.setString(11,exp);
                            ps.setString(12,valid);
                            ps.setString(13,flag);
                            
                             ps.executeUpdate();
                            ps.close();
                     //       con.close();
                            str="Producttype Inserted Successfully";
                        
                   }
                }
           }                 
                    catch(Exception e){
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
   