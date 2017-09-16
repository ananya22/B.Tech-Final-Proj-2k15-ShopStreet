package MVC.Model.dao;
 
import MVC.Model.Bean.LoginBean;
import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 public class LoginDao {
 public String authenticateUser(LoginBean loginBean)
 {
 
String userName = loginBean.getUserName(); //Keeping user entered values in temporary variables.
 String password = loginBean.getPassword();
 
Connection con = null;
 Statement statement = null;
 ResultSet resultSet = null;
 
String userNameDB = "";
 String passwordDB = "";
 String emailDb="";
 Dbclass db=new Dbclass();
try
 {
                        con = db.dbConnect(); //establishing connection
                        statement = con.createStatement(); //Statement is used to write queries. Read more about it.
                        resultSet = statement.executeQuery("select userId,password,emailid from userlogin"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
 
            while(resultSet.next()) // Until next row is present otherwise it return false
                {
                    userNameDB = resultSet.getString("userId"); //fetch the values present in database
                    passwordDB = resultSet.getString("password");
                    emailDb=resultSet.getString("emailid");
                        if(userName.equals(userNameDB) || userName.equals(emailDb))
                        {
                            if( password.equals(passwordDB))
                            {
                                loginBean.setUserName(userNameDB);
                                    return "SUCCESS"; 

                                    ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
                             }
                            else
                            {
                                    return "Password Wromg";
                            }
                        }
                        
                       
                                    
                        
                    }
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
  // Just returning appropriate message otherwise
return "emailId  Or USerId is not Correct";
 }
 }