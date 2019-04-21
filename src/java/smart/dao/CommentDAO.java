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

public class CommentDAO {
    private static Connection connect;
    private static PreparedStatement ps;
    private static Statement st;
    private static ResultSet rs;

    private static Connection getConnection(){
        connect = SmartConnect.getConnection();
        return connect;
    }

    public static int insertCommentRecord(String user_ids, String comments,String creation_date){
        int status = -1;

        String query = "insert into Comments values(?,?,?)";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);
            ps.setString(2, comments);            
            ps.setString(3, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    public static int updateCommentRecord(String user_ids, String comments,String creation_date){
        int status = -1;
        String query = "update Comments set comments=?, creation_date=? where user_ids=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(3, user_ids);
            ps.setString(1, comments);            
            ps.setString(2, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
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
    
        public static int deleteCommentRecord(String user_ids){
        int status = -1;
        String query = "delete from Comments where user_ids=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
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

        public static ArrayList getCommentRecord(String user_ids){

            ArrayList commentArray = new ArrayList();
            String query = "select user_ids, comments from Comments where user_ids=?";
            ps = null;
            rs = null;

            try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);
            rs = ps.executeQuery();
            while(rs.next()){

                String user_id = rs.getString("user_ids").trim();
                String comment = rs.getString("comments").trim();
                
                commentArray.add(user_id);
                commentArray.add(comment);                
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            return commentArray;
        }

        public static LinkedHashMap loadCombo(){

            LinkedHashMap linkedhash = new LinkedHashMap();

            String query = "select user_ids from Comments order by user_ids ASC";
            st = null;
            rs = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                String user_Id = rs.getString("user_ids").trim();
                String name = rs.getString("user_ids").trim();                
                linkedhash.put(user_Id, name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return linkedhash;
        }
//Comments
//user_ids, comments, creation_date
        
        public static void main(String[] arg){                                       
           //System.out.println("insert ok: "+CommentDAO.insertCommentRecord("khadijat@gmail.com", "Your websit is very efficient"
             //      + "and i love it functionality ", "2018-02-27"));
           //System.out.println("update ok: "+CommentDAO.updateUserRecord("khadijat@gmail.com", "Your website is one of the "
             //      + "most powerful site ", "2018-02-27"));
          // System.out.println("delete ok: "+CommentDAO.deleteCommentRecord("hameedah@gmail.com"));
           //System.out.println("Load ok: "+CommentDAO.getCommentRecord("ola@yahoo.com"));
            
        }        
    
}
