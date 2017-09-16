/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registeruser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Deepika
 */
public class Dbclass {
    public Connection dbConnect(){
		Connection con = null;
		String str = null;
		String query = "";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "shop", "shop");
			str = "success";
		}catch(ClassNotFoundException e){
			str += e;
		}catch(SQLException e){
			str += e;
		}	
		return con;
	}
    
}
