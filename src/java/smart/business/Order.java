package smart.business;

import java.io.Serializable;

public class Order implements Serializable{
        
    private int order_id; //="F001";
    private String order_code; //="F001";
    private String order_item; //="Computer sets";
    private String unit_price; //=35000;
    private int qty_sold_id;//=8;
    private int qty_sold;//=8;
    private String amount; 
    private String size; //="34";
    private String order_date="2018-02-11";
    private User user = new User();
    private String sessionId="098765345675432001982";

    public Order() {
    }    
    
    public Order(int qty_sold_id, int qty_sold, String order_date, User user, String sessionId) {
        this.qty_sold_id = qty_sold_id;        
        this.qty_sold = qty_sold;
        this.order_date = order_date;
        this.user = user;
        this.sessionId = sessionId;
    }

    public Order(int order_id, String order_code, String order_item, String unit_price, int qty_sold, String amount, String size, String order_date, User user, String sessionId) {    
        this.order_id = order_id;
        this.order_code = order_code;
        this.order_item = order_item;
        this.unit_price = unit_price;        
        this.qty_sold = qty_sold;        
        this.amount = amount;
        this.size = size;
        this.order_date = order_date;
        this.user = user;
        this.sessionId = sessionId;
    }
       
    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    
    public String getOrder_code() {
        return order_code;
    }

    public void setOrder_code(String order_code) {
        this.order_code = order_code;
    }

    public String getOrder_item() {
        return order_item;
    }

    public void setOrder_item(String order_item) {
        this.order_item = order_item;
    }

    public String getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(String unit_price) {
        this.unit_price = unit_price;
    }

    public int getQty_sold() {
        return qty_sold;
    }

    public void setQty_sold(int qty_sold) {
        this.qty_sold = qty_sold;
    }
    public int getQty_sold_id() {
        return qty_sold_id;
    }

    public void setQty_sold_id(int qty_sold_id) {
        this.qty_sold_id = qty_sold_id;
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

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }   
        
}
