package ServletPackage;

import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    
      static Connection  con;
      static PreparedStatement ps;
      public int insertUser(User u) {
      int status=0;
 try {
     //MyConnection m=new MyConnection();
     DBManager d=new DBManager();
	 
//	 con=m.getConnection();
//         System.out.println("connection------------"+con);
//	 System.out.println(u.getCustomername()+"username customerdao");
//         System.out.println(u.getPassword());
//	 ps = con.prepareStatement("insert into user values(?,?)");
//	 System.out.println("----new---"+ps);
//	 ps.setString(1,u.getCustomername());
//	 ps.setString(2,u.getPassword());
//	 status=ps.executeUpdate();
//	 con.close();
         
         
         
         // con=m.getConnection();
           con=d.getConnection();
         System.out.println("connection------------"+con);
	 System.out.println(u.getCustomername()+"username customerdao");
         System.out.println(u.getPassword());
         String s="\"User\"";
         ps = con.prepareStatement("insert into"+s+"values(?,?)");
	 System.out.println("----new---"+ps);
	 ps.setString(1,u.getCustomername());
	 ps.setString(2,u.getPassword());
	 status=ps.executeUpdate();
	 con.close();
         System.out.println("final connection----------");
         
 }
 catch(Exception e) {
	 e.printStackTrace();
 }
		return status;
	}
//      
//      public List getAllCustomers() {
//        List customers = new ArrayList();
//        try {
//        	String sql = "SELECT * FROM  User";
//                System.out.println("inside customer");
//            PreparedStatement ps = con.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                User user = new User();
//                user.setCustomername(rs.getString("username"));
//                             
//                customers.add(user);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return customers;
//    }
      


public User getCustomer(String customername, String password) {
	
		User ud =new User();
                  DBManager d=new DBManager();
                 //MyConnection m=new MyConnection();
		 try {
                     System.out.println("i am in customer");
                      con=d.getConnection();
                       System.out.println("my");
			 //con=ConnectionProvider.getConnection();
                           String s="\"User\"";
                           System.out.println("username===="+customername);
//			 ps= (PreparedStatement) con.prepareStatement("select * from "+s+" where customername=?");
//		ps.setString(1,userid );
//		//ps.setString(2,password );
//		ResultSet rs=ps.executeQuery();
//		
//			ud.setCustomername(rs.getString(1));
//			//ud.setPassword(rs.getString(2));
//			//c.setName(rs.getString(3));
        PreparedStatement preparedStatement = con.prepareStatement("select * from "+s+" where customername=? and password=?");
                     System.out.println("cust"+customername);
            preparedStatement.setString(1, customername);
              preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
//                user.setUserid(rs.getInt("userid"));
//                user.setFirstName(rs.getString("firstname"));
//                user.setLastName(rs.getString("lastname"));
//                user.setDob(rs.getDate("dob"));
//                user.setEmail(rs.getString("email"));
                System.out.println(rs.getString("customername"));
               ud.setCustomername(rs.getString("customername"));
               
		 }
                 }
		 catch(Exception e) {
			 
		 }
		return ud;
	
}    
}
