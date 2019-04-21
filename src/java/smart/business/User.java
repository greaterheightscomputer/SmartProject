package smart.business;

import java.io.Serializable;

public class User implements Serializable{
    private String user_ids;//0001";
    private String first_name;
    private String last_name;
    private String pass_word;
    private String email;
    private String gender;
    private String phone;
    private String user_address;
    private UserRole userRole;
    private String creation_date;

    public User() {
    }

    public User(String user_ids, String first_name, String last_name, String pass_word, String email, String gender, String phone, String user_address, UserRole userRole, String creation_date) {
        this.user_ids = user_ids;
        this.first_name = first_name;
        this.last_name = last_name;
        this.pass_word = pass_word;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.user_address = user_address;
        this.userRole = userRole;
        this.creation_date = creation_date;
    }

    public String getUser_ids() {
        return user_ids;
    }

    public void setUser_ids(String user_ids) {
        this.user_ids = user_ids;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getPass_word() {
        return pass_word;
    }

    public void setPass_word(String pass_word) {
        this.pass_word = pass_word;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }

    public String getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(String creation_date) {
        this.creation_date = creation_date;
    }
    
    

    
}
