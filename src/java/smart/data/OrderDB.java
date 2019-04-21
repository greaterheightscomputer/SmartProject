package smart.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import smart.business.Order;

public class OrderDB {
    
    private static Connection connect;
    
    public static int insertOrder(Order order){
        connect = SmartConnect.getConnection();
        PreparedStatement ps = null; 
        
        String query="Insert into Orders(order_id, order_code, order_item, unit_price, qty_sold, amount,size, order_date, user_ids, sessionId)"
                     + "values(?,?,?,?,?,?,?,?,?,?)";        
        try {
            ps = connect.prepareStatement(query);
            ps.setInt(1, order.getOrder_id());
            ps.setString(2, order.getOrder_code());
            ps.setString(3, order.getOrder_item());
            ps.setString(4, order.getUnit_price());
            ps.setInt(5, order.getQty_sold());
            ps.setString(6, order.getAmount());
            ps.setString(7, order.getSize());
            ps.setString(8, order.getOrder_date());
            ps.setString(9, order.getUser().getUser_ids());
            ps.setString(10, order.getSessionId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return 0;
    }
    
    public static int insertOrderQty(Order order){
        connect = SmartConnect.getConnection();
        PreparedStatement ps = null; 
        
        String query="Insert into OrdersQty(qty_sold_id, quantity, order_date, user_ids, sessionId)"
                     + "values(?,?,?,?,?)";
        
        try {
            ps = connect.prepareStatement(query);
            
            ps.setInt(1, order.getQty_sold_id());            
            ps.setInt(2, order.getQty_sold());
            ps.setString(3, order.getOrder_date());
            ps.setString(4, order.getUser().getUser_ids());
            ps.setString(5, order.getSessionId());            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return 0;
    }

      public static int updateOrderQty(int qty_sold_id, int order_id, String sessionId){
        connect = SmartConnect.getConnection();
        PreparedStatement ps = null; 
        
       String query="UPDATE orders SET qty_sold = (SELECT quantity FROM ordersqty WHERE qty_sold_id=?) WHERE order_id=? AND sessionId=?";

        try {
            ps = connect.prepareStatement(query);
            
            ps.setString(3, sessionId);                        
            ps.setInt(1, qty_sold_id);            
            ps.setInt(2, order_id);            
                                                
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return 0;
    }
      public static int updateOrderAmount(int order_id, String sessionId){
        connect = SmartConnect.getConnection();
        PreparedStatement ps = null; 
     
        String query="UPDATE orders SET amount =(qty_sold * unit_price) WHERE order_id=? AND sessionId=?";

        try {
            ps = connect.prepareStatement(query);
            
            ps.setString(2, sessionId);                                              
            ps.setInt(1, order_id);            
                                                
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return 0;
    }
      public static int deleteOrder(String order_id, String session_id){
        
          connect = SmartConnect.getConnection();
        PreparedStatement ps = null;      
        String query="DELETE FROM orderdetails WHERE order_id=? AND session_id=?";
        try {
            ps = connect.prepareStatement(query);
                                                 
            ps.setString(1, order_id);            
            ps.setString(2, session_id);            
                                                
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return 0;
    }
            
      public static double getOrderAmount(String sessionId){
        double status = 0.00;
        PreparedStatement ps = null;
        ResultSet result = null;
        String CreditQuery = "SELECT SUM(amount) as amount FROM OrderDetails WHERE session_id = ?";
        try {
            connect = SmartConnect.getConnection();
            ps = connect.prepareStatement(CreditQuery);
//            ps.setString(1, userId);
            ps.setString(1, sessionId);
            result = ps.executeQuery();
            while(result.next()){
            status = result.getDouble("amount");
            }        
        } catch (SQLException e) {
            System.out.print(e);            
        } finally{
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeConnection(connect);
        }        
        return status;
    }
//    
//      public static int getOrderQtySold(int qty_sold_id){
//        int status = 0;
//        PreparedStatement ps = null;
//        ResultSet result = null;
//        String CreditQuery = "SELECT quantity FROM OrdersQty WHERE qty_sold_id=?";
//        try {
//            connect = SmartConnect.getConnection();
//            ps = connect.prepareStatement(CreditQuery);
//            ps.setInt(1, qty_sold_id);
//            result = ps.executeQuery();
//            while(result.next()){
//            status = result.getInt("quantity");
//            }        
//        } catch (SQLException e) {
//            System.out.print(e);            
//        } finally{
//            DBUtil.closePreparedStatement(ps);
//            DBUtil.closeConnection(connect);
//        }        
//        return status;
//    }
      
    //SELECT SUM(amount) AS amount FROM orders WHERE user_ids = '0001' AND sessionId = '469254697E269C6180415CF6DA8EF0B2';  
    
    public static void main(String[] arg){
        Order order = new Order();
        
//        System.out.println("Insert Ok: "+OrderDB.insertOrder(order));
       // System.out.println("Insert Ok: "+OrderDB.insertOrderQty(order));
       // System.out.println("Update Ok: "+OrderDB.updateOrderQty(2, 2, "789EDBEBD6461EFC71CD31EE9753881B"));       
        //System.out.println("Update Ok: "+OrderDB.updateOrderAmount(31, "9475C9E5CDCEB559055F5AB9C0492B33"));       
      //  System.out.println("Amount: "+OrderDB.getOrderAmount("3FB8DC82C7D6EB573E027F057D614A4B"));       
       //System.out.println("Delete Ok : "+OrderDB.deleteOrder("MA1000",  "B25FFBAE5C3A36C4DF6D73384346190C"));       
       
           
           } 
    
    }
