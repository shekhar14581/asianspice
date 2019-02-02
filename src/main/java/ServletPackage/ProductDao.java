/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPackage;

import com.bsapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ProductDao {
         public static ArrayList<ProductAdmin> getAllproducts ()
        {
        Connection con = null;
  DBManager d=new DBManager();
                                        con=d.getConnection();
        ArrayList<ProductAdmin> allProducts = new ArrayList();

        String query = "SELECT * FROM PRODUCTDETAIL";

        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();  
            
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
				allProducts.add(uObject);				
			}
                    
                   
             rs.close();
             stmt.close();
              

            } catch (SQLException e) {
                e.printStackTrace();
             }
             
            
        return allProducts;
    }
}
