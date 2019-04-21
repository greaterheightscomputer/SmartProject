package smart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import smart.data.SmartConnect;

public class ProductDAO {
    
    private static Connection connect;
    private static PreparedStatement ps;
    private static Statement st;
    private static ResultSet rs;

    private static Connection getConnection(){   
        connect = SmartConnect.getConnection();
        return connect;
    }

    public static int insertProductRecord(String product_id, String product_name, String product_type, String unit_price,
                                          String discount_percent, String new_unit_price, String qty_in_stock, String picture,
                                          String creation_date){
        int status = -1;

        String query = "insert into Products values(?,?,?,?,?,?,?,?,?)";
         
        try {
            ps = getConnection().prepareStatement(query);            
            ps.setString(1, product_id);
            ps.setString(2, product_name);
            ps.setString(3, product_type);            
            ps.setDouble(4, Double.parseDouble(unit_price));
            ps.setDouble(5, Double.parseDouble(discount_percent));
            ps.setDouble(6, Double.parseDouble(new_unit_price));
            ps.setInt(7, Integer.parseInt(qty_in_stock));
            ps.setString(8, picture);            
            ps.setString(9, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
        return status;
    }

    public static int updateProductRecord(String product_id, String product_name, String product_type, String unit_price,
                                          String discount_percent, String new_unit_price, String qty_in_stock, String picture,
                                          String creation_date){
        int status = -1;
        String query = "update Products set product_name=?, product_type=?, unit_price=?, discount_percent=?, new_unit_price=?, qty_in_stock=?, picture=?, creation_date=? where product_id=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(9, product_id);
            ps.setString(1, product_name);
            ps.setString(2, product_type);
            ps.setDouble(3, Double.parseDouble(unit_price));
            ps.setDouble(4, Double.parseDouble(discount_percent));
            ps.setDouble(5, Double.parseDouble(new_unit_price));
            ps.setInt(6, Integer.parseInt(qty_in_stock));
            ps.setString(7, picture);            
            ps.setString(8, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
        return status;
    }

    public static int deleteProductRecord(String product_id){
        int status = -1;
        String query = "delete from Products where product_id=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, product_id);
            
            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
        return status;
    }

    public static int checkProductId(String product_id){
        int status = -1;
        String query = "select * from Products where product_id=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, product_id);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
        return status;
    }
        
        public static ArrayList getProductRecord(String product_id){
            ArrayList productArray = new ArrayList();
            String query = "select * from Products where product_id=?";
            ps = null;
            rs = null;

            try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, product_id);
            rs = ps.executeQuery();
            while(rs.next()){

                String productId = rs.getString("product_id").trim();
                String productName = rs.getString("product_name").trim();
                String productType = rs.getString("product_type").trim();                
                String unitPrice = rs.getString("unit_price").trim();
                String discountsPercent = rs.getString("discount_percent").trim();
                String newUnitPrice = rs.getString("new_unit_price").trim();
                String qtyInStock = rs.getString("qty_in_stock").trim();
                String picture = rs.getString("picture").trim();
                             
                productArray.add(productId);
                productArray.add(productName);
                productArray.add(productType);                
                productArray.add(unitPrice);
                productArray.add(discountsPercent);
                productArray.add(newUnitPrice);
                productArray.add(qtyInStock);
                productArray.add(picture);                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
            return productArray;
        }

    public static LinkedHashMap loadCombo(){
          LinkedHashMap linkedhash = new LinkedHashMap();

            String query = "select product_id, product_name from Products order by product_id ASC";
            st = null;
            rs = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                String productId = rs.getString("product_id").trim();
                String productName = rs.getString("product_name").trim();
                linkedhash.put(productId, productName);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return linkedhash;
        }
    
   //Products
  //product_id, product_name, product_type, unit_price, discount_percent, new_unit_price, qty_in_stock, picture, creation_date    
    public static LinkedHashMap loadProductRecord(){

        LinkedHashMap returnedNames = new LinkedHashMap();

        String query = "SELECT DISTINCT product_type FROM Products";

        Statement  statement = null;
        ResultSet result = null;
        try {
            connect = getConnection();
            statement = connect.createStatement();
            result = statement.executeQuery(query);

            while(result.next()){

                String product_id = result.getString("product_type").trim();
                String product_type = result.getString("product_type").trim();
                returnedNames.put(product_id, product_type);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{

          if(statement!= null){
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
          }
          if(connect!=null){
                try {
                    connect.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
          }
        }
        return returnedNames;
    }
    
    public static ResultSet getProductReportRecordStatic(){
            ResultSet rs = null;
            Statement state = null;
            Connection conn = getConnection();
            String classQuery = "Select product_name, product_type, unit_price, discount_percent, new_unit_price, picture from Products";
            try {
            state = conn.createStatement();
            rs = state.executeQuery(classQuery);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return rs;
    }
    
    public static ArrayList getProductReportRecord(String product_type){

            ArrayList productArray = new ArrayList();

            String query = "select product_name, product_type, unit_price, discount_percent, new_unit_price, picture"
                            + " from Products where product_type ='"+product_type+"' order by product_id";

            st = null;
            rs = null;

            try {
                connect = getConnection();
                st = connect.createStatement();
                rs = st.executeQuery(query);

                while (rs.next()) {
                ReportProduct report = new ReportProduct();

                report.product_name = rs.getString(1).trim();
                report.product_type = rs.getString(2).trim();
                report.unit_price = rs.getString(3).trim();
                report.discount_percent = rs.getString(4).trim();
                report.new_unit_price = rs.getString(5).trim();
                report.picture = rs.getString(6).trim();

                productArray.add(report);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
            if(ps != null){
                ps.close();
            }
            if(connect != null){
                connect.close();
            }
            }catch(Exception ex){
            }
        }
            return productArray;
        }
    
    public static void main(String[] arg){
        //product_id, product_name, product_type, unit_price, discount_percent, new_unit_price, qty_in_stock, picture, creation_date
        //System.out.println("Insert OK: "+ProductDAO.insertProductRecord("P0002", "Beatiful Electic Female Belt", "Female Belt",
          //      "2500.00", "0.95", "2400", "8", "long.jpg", "2018-02-25"));
        //System.out.println("Update OK: "+ProductDAO.updateProductRecord("P0002", "Nice Electic Female Belt", "Female Belt",
          //      "2500.00", "0.95", "2400", "8", "nice.jpg", "2018-02-25"));
        //System.out.println("Delete OK: "+ProductDAO.deleteProductRecord("P1000"));        
        System.out.println("LoadReport OK: "+ProductDAO.loadProductRecord());        
    }
}
