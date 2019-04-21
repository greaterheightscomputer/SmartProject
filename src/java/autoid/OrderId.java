package autoid;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import smart.data.DBUtil;
import smart.data.SmartConnect;

public class OrderId {
    private static Connection connect;
    private static Statement st = null;
    private static ResultSet rs = null;

    public static Connection getConnection(){
       connect = SmartConnect.getConnection();
       return connect;
    }

    public static int updateId(){
        int status = -1;
        String query = "UPDATE autoId SET status = status + 1 WHERE tableName = '001'";
        try {
            st = getConnection().createStatement();
            status = st.executeUpdate(query);
            if(status > -1){
                status = 0;
            }

        } catch (SQLException ex) {
            return status;
        }
        finally{
            DBUtil.closeStatement(st);
            DBUtil.closeConnection(connect);
        }
        return status;
    }
    public static int Id(){
        int status = -1;
        String query = "SELECT status FROM autoId WHERE tableName = '001'";
        try {
            st = getConnection().createStatement();
            rs = st.executeQuery(query);
            if(rs.next()){
                status = rs.getInt("status");
            }
        } catch (SQLException ex) {
            return status;
        }
        finally{
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(st);
            DBUtil.closeConnection(connect);
        }
        return status;
    }

    public static String getId(){
        String returnedId = "";
        int id = Id();

        if(id >= 0 && id <= 9){
            returnedId = "000000"+id;
        }
        else if(id >= 10 && id <= 99){
            returnedId = "00000"+id;
        }
        else if(id >= 100 && id <= 999){
            returnedId = "0000"+id;
        }
        else if(id >= 1000 && id <= 9999){
            returnedId = "000"+id;
        }
        else if(id >= 10000 && id <= 99999){
            returnedId = "00"+id;
        }
        else if(id > 99999){
            returnedId = "00"+id;
        }

        return returnedId;
    }
    
}
