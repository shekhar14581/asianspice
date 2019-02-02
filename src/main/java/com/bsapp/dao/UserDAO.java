/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import com.bsapp.model.User;
import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author bemerson
 */
public class UserDAO {

    
             int userid=1;
    public User getUserByEmail(String email) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 1;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        User tempUser = new User();

        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempUser.setEmail(email);
        tempUser.setId(userId);
        tempUser.setFirstName(fName);
        tempUser.setLastName(lName);
        tempUser.setPassword(password);
        tempUser.setUserType(userType);
        return tempUser;

    }

    public Vector<User> getAllUsers() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String email = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Vector<User> userData = new Vector();

        String query = "SELECT * FROM USERDATA";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                email = (rs.getString(2));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
                User tempUser = new User();
                tempUser.setEmail(email);
                tempUser.setId(userId);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                userData.add(tempUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return userData;

    }
    
    static Connection  connection;
     static PreparedStatement ps;
          public int registerUser(User ucd) {
      int status=0;
 try {
     
     
     DBManager db=new DBManager();
	 
	 connection=db.getConnection();
         System.out.println("connection------------"+connection);
	 System.out.println(ucd.getEmail());
       
        
         
	 ps = connection.prepareStatement("insert into USERDATA values(?,?,?,?,?,?)");
	 System.out.println("----new---"+ps);

         ps.setInt(1, userid);
	 ps.setString(2,ucd.getEmail());
	  ps.setString(3,ucd.getPassword());
           ps.setString(4,ucd.getFirstName());
              ps.setString(5,ucd.getLastName());
                 ps.setString(6,ucd.getUserType());
	 status=ps.executeUpdate();
         userid++;
	 connection.close();
 }
 catch(Exception e) {
	 e.printStackTrace();
 }
		return status;
	}

}
