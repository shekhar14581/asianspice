/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPackage;

/**
 *
 * @author garyb
 */

import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Crud implements CrudInterface {
	
	static String message ="";
	
	public String save(ProductAdmin uObject) {
		int flag =0;
		try {
                         
        Connection con = null;

      
	 String uname="gary";
	 String password="gary";
//	String url="jdbc:derby://localhost:1527/MyData";
         	//String url="jdbc:derby://localhost:1527/AcmeSpices";
                    
                    

                    
//			Class.forName("com.mysql.jdbc.Driver");
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        		//con = DriverManager.getConnection(url, uname, password);
             DBManager d=new DBManager();
                                        con=d.getConnection();
		                         System.out.println(con+" connection in prod admin");
			//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root","new_password");	
			PreparedStatement ps = con.prepareStatement("INSERT INTO PRODUCTDETAIL VALUES(?,?,?,?,?,?,?,?)");
			ps.setString(1, uObject.getProductid());
		        ps.setString(2, uObject.getProductname());
                        ps.setString(3, uObject.getHealth());
		        ps.setString(4, uObject.getSpicetype());
                        ps.setString(5, uObject.getQuantity());
		        ps.setString(6, uObject.getPrice());
                        ps.setString(7, uObject.getFamily());
		        ps.setString(8, uObject.getImage());
//			ps.setInt(4, uObject.getPhone());
		   
			flag =	ps.executeUpdate();
			if(flag!=0){
                            System.out.println(" messsage");
				message ="Saved SuccessFully";
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return message;
	}

	
	public List<ProductAdmin> getListUsers() {
		System.out.println("inside getlist");
		List <ProductAdmin> list = new ArrayList<ProductAdmin>();
		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root","new_password");	
            Connection con = null;

      
	 String uname="gary";
	 String password="gary";
//	String url="jdbc:derby://localhost:1527/MyData";
//         	String url="jdbc:derby://localhost:1527/AcmeSpices"; 
//                    
////			Class.forName("com.mysql.jdbc.Driver");
//                        Class.forName("org.apache.derby.jdbc.ClientDriver");
//                        		con = DriverManager.getConnection(url, uname, password);
                                        
                                        DBManager d=new DBManager();
                                        con=d.getConnection();
                PreparedStatement ps = con.prepareStatement("SELECT * FROM PRODUCTDETAIL");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductAdmin uObject = new ProductAdmin();
				uObject.setProductid(rs.getString(1));
				uObject.setProductname(rs.getString(2));
				uObject.setHealth(rs.getString(3));
				uObject.setSpicetype(rs.getString(4));
				uObject.setQuantity(rs.getString(5));
				uObject.setPrice(rs.getString(6));
				uObject.setFamily(rs.getString(7));
				uObject.setImage(rs.getString(8));			
				list.add(uObject);				
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;		
	}
	
	public  String Update(ProductAdmin uObject){
		 int status=0;
		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root","new_password");	
              Connection con = null;

      
	 String uname="gary";
	 String password="gary";
//	String url="jdbc:derby://localhost:1527/MyData";
         	//String url="jdbc:derby://localhost:1527/AcmeSpices";
                    
//			Class.forName("com.mysql.jdbc.Driver");
//                        Class.forName("org.apache.derby.jdbc.ClientDriver");
//                        		con = DriverManager.getConnection(url, uname, password);
                                         DBManager d=new DBManager();
                                        con=d.getConnection();
//PreparedStatement ps = con.prepareStatement("UPDATE PRODUCTDETAIL SET PRODUCTDESCRIPTION=?,PRODUCTTYPE=? WHERE PRODUCTID=?");
			PreparedStatement ps = con.prepareStatement("UPDATE PRODUCTDETAIL SET PRODUCTNAME=?,HEALTHBENEFITS=?,PRODUCTTYPE=?,QUANTITY=?,PRICE=?,FAMILY=?,IMAGEURL=? WHERE PRODUCTID=?");
			
                       // ps.setString(1, uObject.getProductid());
		        ps.setString(1, uObject.getProductname());
                        ps.setString(2, uObject.getHealth());
		        ps.setString(3, uObject.getSpicetype());
                        ps.setString(4, uObject.getQuantity());
		        ps.setString(5, uObject.getPrice());
                        ps.setString(6, uObject.getFamily());
		        ps.setString(7, uObject.getImage());
                         ps.setString(8, uObject.getProductid());
			status =ps.executeUpdate();
			if(status!=0){
				message ="Updated SuccessFully";
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return message;
	}
	
	public  String deleteUser(String userid){
		int status=0;
		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root","new_password");	
        Connection con = null;

      
	 String uname="gary";
	 String password="gary";
//	String url="jdbc:derby://localhost:1527/MyData";
         	//String url="jdbc:derby://localhost:1527/AcmeSpices";
                    
//			Class.forName("com.mysql.jdbc.Driver");
                       // Class.forName("org.apache.derby.jdbc.ClientDriver");
                         DBManager d=new DBManager();
                                        con=d.getConnection();
                        		//con = DriverManager.getConnection(url, uname, password);			
PreparedStatement ps = con.prepareStatement("DELETE FROM PRODUCTDETAIL WHERE PRODUCTID=?");
			
			
			ps.setString(1, userid);

			status =ps.executeUpdate();
			if(status!=0){
				message ="Record Deleted SuccessFully";
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return message;
	}
}

