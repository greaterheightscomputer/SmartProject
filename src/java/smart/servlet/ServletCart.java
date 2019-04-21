
package smart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smart.business.Cart;
import smart.business.LineItem;
import smart.business.Product;
import smart.business.User;
import smart.data.OrderDB;

public class ServletCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            ServletContext sc = getServletContext();
            HttpSession session = request.getSession();
                              
            String jsessionId = (String)session.getId();                      
            String created_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());                        
            User user = new User();
            String user_Id = (String)user.getUser_ids();
            
            String productCode = request.getParameter("productCode");
            String price = request.getParameter("price");
            String description = request.getParameter("description");         
            String quantityString = request.getParameter("quantity");
            String amount = request.getParameter("price");
            String size = request.getParameter("comboSize");
            
            session.setAttribute("productCode", productCode);
            session.setAttribute("description", description);
            session.setAttribute("quantityString", quantityString);
            session.setAttribute("amount", amount);
            session.setAttribute("price", price);
            session.setAttribute("size", size);
            session.setAttribute("jsessionId", jsessionId);
            session.setAttribute("created_date", created_date);
            session.setAttribute("user", user);
            session.setAttribute("user_Id", user_Id);
                        
        String action = request.getParameter("action");
        if(action==null){
            action = "cart";
        }
        
        String url = "/home.jsp";
        if(action.equals("shop")){
            url="/home.jsp";
        }
                
        else if(action.equals("cart")){            
           
            System.out.println("Cart insertion\n==========================");                                                           
            System.out.println("productCode: "+productCode);            
            System.out.println("description: "+description);
            System.out.println("price: "+price);
            System.out.println("quantityString: "+quantityString);
            System.out.println("amount: "+amount);
            System.out.println("size: "+size);
            System.out.println("userId: "+user);
            System.out.println("jsessionId: "+jsessionId);
                                    
//if the user enter a negative or invalid quantity, the quantity is automatically reset to 1
            int quantity;
            try{
                quantity = Integer.parseInt(quantityString);
                if(quantity < 0){
                    quantity = 1;
                }
            }catch(NumberFormatException nfe){
                quantity = 1;               
            }
            //System.out.println("quantity: "+quantity);
                        
            Cart cart = (Cart)session.getAttribute("cart");
            if(cart == null){
                cart = new Cart(); 
            } 
                        
            Product product = new Product(productCode, description, price, amount, size);            
            
            request.setAttribute("product", product);
                                    
            LineItem lineItem = new LineItem();                                                                                             
            lineItem.setProduct(product);                                                                                                                                                                                  
            lineItem.setQuantity(quantity);
                                       
           if(quantity > 0){
                cart.addItems(lineItem);
                                
                session.setAttribute("code", lineItem.getProduct().getCode());
                session.setAttribute("qty", lineItem.getQuantity());                
                                
            }
            else if(quantity == 0) {
                cart.removeItems(lineItem);
                OrderDB.deleteOrder(productCode, jsessionId);                
            }            
            session.setAttribute("cart", cart);
            url = "/cart.jsp";
        }
        
        else if(action.equals("viewcartlist")){             
                                                  
            url="/inovice.jsp";                  
        }        
              
        else if(action.equals("generateinovice")){  
                        
            double total = OrderDB.getOrderAmount(jsessionId);            
            String totalAmount = String.valueOf(total);
            session.setAttribute("totalAmount", totalAmount);
            
            System.out.println("Update Orders Table Insertion to database\n=========================");                             
            System.out.println("jsessionId: "+jsessionId);
            System.out.println("total: "+totalAmount);
                        
            url="/invoice_generate.jsp";                  
        }
              
        else if(action.equals("back")){                          
            url="/inovice.jsp";                  
        }
        
        else if(action.equals("payment")){                          
            url="/payment.jsp";                  
        }
        
        else if(action.equals("thank")){                          
            url="/thanks.jsp";                  
        }
        
        else if(action.equals("checkout")){          
            session = request.getSession();
            session.invalidate();
            url="/login.jsp";
        }        
        else if(action.equals("logout")){          
            //session = request.getSession();
            session.invalidate();
            url="/login.jsp";
        }        
        sc.getRequestDispatcher(url).forward(request, response);

        }catch(Exception ext){
            out.println(ext.getMessage());
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
