package smart.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
    public static void closeStatement(Statement st){
        try{
            if(st != null){
                st.close();
            }
        }catch(SQLException e){
            System.out.println(e);
        }        
    }
    
    public static void closePreparedStatement(PreparedStatement ps){
        try{
            if(ps != null){
                ps.close();
            }
        }catch(SQLException e){
            System.out.println(e);
        }        
    }
    
    public static void closeResultSet(ResultSet rs){
        try{
            if(rs != null){
                rs.close();
            }
        }catch(SQLException e){
            System.out.println(e);
        }        
    }
    
    public static void closeConnection(Connection cn){
        try{
            if(cn != null){
                cn.close();
            }
        }catch(SQLException e){
            System.out.println(e);
        }        
    }
    
}
