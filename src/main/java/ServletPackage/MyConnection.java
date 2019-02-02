package ServletPackage;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author garyb
 */
public class MyConnection {
  
//    	 Connection con = null;
//
//         String msAccDB = "G:/Access/BisProject.accdb";
//         String connUrl="jdbc:ucanaccess://" + msAccDB; 
//	 String uname="root";
//	 String password="root";
//	
//	public  Connection getConnection() {
//	try {
//		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
//		
//		
//		con = DriverManager.getConnection(connUrl, uname, password);
//		
//        System.out.println(con+" connection");
//		
//
//	} catch (Exception e) {
//		System.out.println(e);
//	}
//
//	return con;
//
//}
//        
        
        
        
        Connection con = null;

      
	 String uname="gary";
	 String password="gary";
//	String url="jdbc:derby://localhost:1527/MyData";
         	String url="jdbc:derby://localhost:1527/AcmeSpices";
           
	public  Connection getConnection() {
	try {
//		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
             Class.forName("org.apache.derby.jdbc.ClientDriver");
		
		
		con = DriverManager.getConnection(url, uname, password);
		
        System.out.println(con+" connection");
		

	} catch (Exception e) {
		System.out.println(e);
	}

	return con;

}
}