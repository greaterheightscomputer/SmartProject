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

public class UserDAO {
    
    private static Connection connect;
    private static PreparedStatement ps;
    private static Statement st;
    private static ResultSet rs;

    private static Connection getConnection(){
        connect = SmartConnect.getConnection();
        return connect;
    }

    public static int insertUserRecord(String user_ids, String first_name, String last_name, String pass_word, String email,
                                         String gender, String phone, String user_address, String user_role_id, 
                                         String user_status,String creation_date){
        int status = -1;

        String query = "insert into Users values(?,?,?,?,?,?,?,?,?,?,?)";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);
            ps.setString(2, first_name);
            ps.setString(3, last_name);
            ps.setString(4, pass_word);
            ps.setString(5, email);
            ps.setString(6, gender);
            ps.setString(7, phone);
            ps.setString(8, user_address);
            ps.setString(9, user_role_id);
            ps.setInt(10, Integer.parseInt(user_status));
            ps.setString(11, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    public static int updateUserRecord(String user_ids, String first_name, String last_name, String pass_word, String email,
                                         String gender, String phone, String user_address, String user_role_id, String creation_date){
        int status = -1;
        String query = "update Users set first_name=?, last_name=?, pass_word=?, email=?, gender=?, phone=?, user_address=?, user_role_id=?, creation_date=? where user_ids=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(10, user_ids);
            ps.setString(1, first_name);
            ps.setString(2, last_name);
            ps.setString(3, pass_word);
            ps.setString(4, email);
            ps.setString(5, gender);
            ps.setString(6, phone);
            ps.setString(7, user_address);
            ps.setString(8, user_role_id);
            ps.setString(9, creation_date);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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
    
        public static int deleteUserRecord(String user_ids){
        int status = -1;
        String query = "delete from Users where user_ids=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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

        public static ArrayList getUserRecord(String user_ids){

            ArrayList userArray = new ArrayList();
            String query = "select * from Users where user_ids=?";
            ps = null;
            rs = null;

            try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);
            rs = ps.executeQuery();
            while(rs.next()){

                String user_id = rs.getString("user_ids").trim();
                String first_name = rs.getString("first_name").trim();
                String last_name = rs.getString("last_name").trim();
                String pass_word = rs.getString("pass_word").trim();
                String email = rs.getString("email").trim();
                String gender = rs.getString("gender").trim();
                String phone = rs.getString("phone").trim();
                String user_address = rs.getString("user_address").trim();
                String user_role_id = rs.getString("user_role_id").trim();

                userArray.add(user_id);
                userArray.add(first_name);
                userArray.add(last_name);                
                userArray.add(pass_word);
                userArray.add(email);
                userArray.add(gender);
                userArray.add(phone);
                userArray.add(user_address);
                userArray.add(user_role_id);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            return userArray;
        }

        public static LinkedHashMap loadCombo(){

            LinkedHashMap linkedhash = new LinkedHashMap();

            String query = "select user_ids, first_name, last_name from Users order by user_ids ASC";
            st = null;
            rs = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                String user_Id = rs.getString("user_ids").trim();
                String name = rs.getString("first_name").trim()+" "+rs.getString("last_name").trim();                
                linkedhash.put(user_Id, name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return linkedhash;
        }

        public static int checkID(String user_ids){

        int status = -1;
        String query = "Select * from Users where user_ids=?";
        ps = null;
        rs = null;
        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);
            rs = ps.executeQuery();
            if(rs.next()){
                return 0;
            }else{
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{

          if(ps!= null){
                try {
                    ps.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
          }
          if(connect!=null){
                try {
                    connect.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
          }
        }
        return status;
    }

        public static ArrayList authenticateNewUser(String user_id, String password){

        ArrayList loginRecord = new ArrayList();

        String loginQuery = "SELECT user_ids, first_name, last_name, user_role_id, user_status "
                + "FROM Users WHERE user_ids=? AND pass_word=?";
        ps = null;
        rs = null;
        try {

            connect = getConnection();
            ps = connect.prepareStatement(loginQuery);
            ps.setString(1, user_id);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if(rs.next()){
                loginRecord.add(rs.getString("user_ids").trim());
                loginRecord.add(rs.getString("first_name").trim());
                loginRecord.add(rs.getString("last_name").trim());
                loginRecord.add(rs.getString("user_role_id").trim());
                loginRecord.add(rs.getString("user_status").trim());
            }
            else{
                 loginRecord.add("100");
                 }

        } catch (SQLException ex) {

            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);

        }finally  {
                try{
                    if(rs != null){
                        rs.close();
                    }if(connect != null){
                        connect.close();
                    }
                }catch(SQLException ex){
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
       }

        return loginRecord;
    }

        public static String getUserRoleName(String user_role_id){

        String user_role_name = ""; 
        String userRoleQuery = "Select * from User_Roles where user_role_id = '"+user_role_id+"'";
        rs = null;
        st = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(userRoleQuery);

            if(rs.next()){
                user_role_name = rs.getString("user_names").trim();
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }catch(Exception ex){
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally  {
                try{
                    if(rs != null){
                        rs.close();
                    }if(connect != null){
                        connect.close();
                    }
                }catch(SQLException ex){
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        return user_role_name;
    }

        public static int updateUserStatus(String user_ids){
        int status = -1;
        String query = "update Users set user_status=0 where user_ids=?";

        try {
            ps = getConnection().prepareStatement(query);
            ps.setString(1, user_ids);            

            status = ps.executeUpdate();
            if(status > -1){
                status = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            
        public static LinkedHashMap userRoleloadCombo(){

            LinkedHashMap linkedhash = new LinkedHashMap();

            String query = "select user_role_id, user_names from User_Roles order by user_role_id ASC";
            st = null;
            rs = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                String user_role = rs.getString("user_role_id").trim();
                String name = rs.getString("user_names").trim();
                linkedhash.put(user_role, name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return linkedhash;
        }
        
        public static LinkedHashMap userRoleloadComboCustomer(){

            LinkedHashMap linkedhash = new LinkedHashMap();

            String query = "select user_role_id, user_names from User_Roles where user_role_id='UR002'";
            st = null;
            rs = null;

        try {
            connect = getConnection();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                String user_role = rs.getString("user_role_id").trim();
                String name = rs.getString("user_names").trim();
                linkedhash.put(user_role, name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return linkedhash;
        }

        public static String setMenu(String user_role_id){
        String menu = "";
        if(user_role_id.trim().equals("UR001")){
            menu = "nav_admin";
        }
        else if(user_role_id.trim().equals("UR002")){
            menu = "nav_customer";
        }
        else{
            menu = "nav_customer";
        }
        return menu;
    }
        
        public static void main(String[] arg){                                       
                                       //user_ids, first_name, last_name, pass_word, email,
                                                 //gender, phone, user_address, user_role_id, user_status, creation_date
//            System.out.println("insertion ok: "+UserDAO.insertUserRecord("bimbola@gmail.com", "Saboor", "Orimadegun", "1234", "hameedah@gmail.com",
//                                                         "female", "080456", "24B, Pike Street", "UR001", "1", "2018-03-19"));
            
            //System.out.println("Update ok: "+UserDAO.updateUserRecord("hameedah@gmail.com", "Hameedah", "Orimadegun", "1234", "hameedah@gmail.com",
              //                                           "female", "0809678954", "24B, Pike Street", "UR001", "2018-03-19"));
        
           // System.out.println("Delete ok: "+UserDAO.deleteUserRecord("bimbola@gmail.com"));
            //System.out.println("authenticate ok: "+UserDAO.authenticateNewUser("hameedah@gmail.com", "1234"));
             //System.out.println("User_Roles ok: "+UserDAO.userRoleloadCombo());
             System.out.println("User_Roles ok: "+UserDAO.userRoleloadComboCustomer());
            
        }        
}
