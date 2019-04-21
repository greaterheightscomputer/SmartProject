package smart.business;

import java.io.Serializable;

public class LineItem implements Serializable{
    
    private Product product; 
    private int quantity;  
    

    public LineItem() {
    }

    public LineItem(Product product, int quantity, String description) {
        this.product = product;
        this.quantity = quantity;    
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
         
    
}
