/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author BEmerson
 */
public class DBManager {

    Logger logger = Logger.getLogger(DBManager.class.getName());

    void loadJDBCDriver() {

        try {
            System.out.println("inside load jdbc driver");
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            // Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
    }

    void checkConnection() throws ClassNotFoundException   {

       // loadJDBCDriver();

        Connection dbConnection = null;
  
        try {
            

String connUrl="jdbc:derby://localhost:1527/myDb";

//	 String uname="root";
//	 String password="root";
        // Class.forName("org.apache.derby.jdbc.ClientDriver");
		 Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		
		//dbConnection = DriverManager.getConnection(connUrl, uname, password);
		
        System.out.println(dbConnection+"databse connected successfully");
            
          dbConnection = DriverManager.getConnection(connUrl);

        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }

    }

    public Connection getConnection() {

        Connection dbConnection = null;
         String connUrl="jdbc:derby://localhost:1527/myDb";
  
//	 String uname="root";
//	 String password="root";
  
	try {
              Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
               // Class.forName("org.apache.derby.jdbc.ClientDriver");
		 dbConnection = DriverManager.getConnection(connUrl);
		
		//dbcon = DriverManager.getConnection(connUrl, uname, password);
		
        System.out.println(dbConnection+"databse connected successfully");
		

	} catch (Exception e) {
		System.out.println(e);
	}
        return dbConnection;

    }

}
