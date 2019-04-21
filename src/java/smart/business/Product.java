package smart.business;

import java.io.Serializable;

public class Product implements Serializable {
    
    private String code;
    private String description;
    private String price;
    private String amount;
    private String size;
    private String createdDate;
    private String sessionId;
    private User user;
    
    public Product(){        
    }

    public Product(String code, String description, String price, String amount, String size) {
        this.code = code;
        this.description = description;
        this.price = price;
        this.amount = amount;
        this.size = size;
    }

    public Product(String code, String description, String price, String amount, String size, String createdDate, String sessionId, User user) {
        this.code = code;
        this.description = description;
        this.price = price;
        this.amount = amount;
        this.size = size;
        this.createdDate = createdDate;
        this.sessionId = sessionId;
        this.user = user;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
    
    
}
