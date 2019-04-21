package smart.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SmartConnect {
    
    
private static Connection connect;

    public static Connection getConnection(){
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost/SmartAcceDB"; 
        String username = "root";
        String password = "";
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SmartConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            connect = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(SmartConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connect;
    }

//    public static void main(String al[]){
//        System.out.println("Connection:"+getConnection());
//
//    }
    
}
