package smart.business;

import java.io.Serializable;

public class UserRole implements Serializable{
    
    private String user_role_id;
    private String user_names;
    private String user_status;

    public UserRole() {
    }

    public UserRole(String user_role_id, String user_names, String user_status) {
        this.user_role_id = user_role_id;
        this.user_names = user_names;
        this.user_status = user_status;
    }

    public String getUser_role_id() {
        return user_role_id;
    }

    public void setUser_role_id(String user_role_id) {
        this.user_role_id = user_role_id;
    }

    public String getUser_names() {
        return user_names;
    }

    public void setUser_names(String user_names) {
        this.user_names = user_names;
    }

    public String getUser_status() {
        return user_status;
    }

    public void setUser_status(String user_status) {
        this.user_status = user_status;
    }
    
    
}
