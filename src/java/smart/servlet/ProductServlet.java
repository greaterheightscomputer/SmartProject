package smart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smart.dao.ProductDAO;

public class ProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
//            HttpSession session = request.getSession(true);

            String button = request.getParameter("button").trim();

            String product_id = request.getParameter("textproduct_id").trim();
            String product_name = request.getParameter("textproduct_name").trim();
            String product_type = request.getParameter("textproduct_type").trim();
            String unit_price = request.getParameter("textunit_price").trim();
            String discount_percent = request.getParameter("textdiscount_percent").trim();
            String new_unit_price="";
            String qty_in_stock = request.getParameter("textqty_in_stock").trim();
            String picture =request.getParameter("picture").trim();            
            String create_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
            
//            out.println("product_id: "+product_id+"<br>");
//            out.println("product_name: "+product_name+"<br>");
//            out.println("product_type: "+product_type+"<br>");
//            out.println("unit_price: "+unit_price+"<br>");
//            out.println("discount_percent: "+discount_percent+"<br>");
//            out.println("new_unit_price: "+new_unit_price+"<br>");
//            out.println("qty_in_stock: "+qty_in_stock+"<br>");
//            out.println("picture: "+picture+"<br>");
//            out.println("create_date: "+create_date+"<br>");
                
            if(button.equals("Submit Record")){                                
                
                double discountRate = (Double.parseDouble(discount_percent)/100);
            
                String discount_rate = String.valueOf(discountRate);
                double new_price = (Double.parseDouble(unit_price) * discountRate);                       
                new_unit_price = String.valueOf(Math.floor(new_price));
                
                int status = ProductDAO.insertProductRecord(product_id, product_name, product_type,  unit_price,
                                                      discount_rate, new_unit_price, qty_in_stock, picture, create_date);
                if(status==0){
                    
                    String msg= "<p style='color:blue'>Record Successfully Saved!</p>";                    
                    request.setAttribute("msg",msg);

                    getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
                else{
                    request.setAttribute("product_id", product_id);
                    request.setAttribute("product_name", product_name);
                    request.setAttribute("product_type", product_type);                    
                    request.setAttribute("unit_price", unit_price);
                    request.setAttribute("discount_rate", discount_rate);
                    request.setAttribute("new_unit_price", new_unit_price);
                    request.setAttribute("qty_in_stock", qty_in_stock);
                    request.setAttribute("picture", picture);                    
                    request.setAttribute("create_date", create_date);
                    
                    request.setAttribute("msg","<p style='color:blue'>Record not Saved!</p>");
                    getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
            }
            //product_id, product_name, product_type, unit_price, discount_percent, new_unit_price, qty_in_stock, picture, creation_date
            else if(button.equals("Update Record")){  
                
                double discountRate = (Double.parseDouble(discount_percent)/100);
                
                String discount_rate = String.valueOf(discountRate);
                double new_price = (Double.parseDouble(unit_price) * discountRate);                       
                new_unit_price = String.valueOf(Math.floor(new_price));
                
                      int status = ProductDAO.updateProductRecord(product_id, product_name, product_type,  unit_price,
                                                            discount_rate, new_unit_price, qty_in_stock, picture, create_date);
                        if(status==0){
                        
                        String msg= "<p style='color:blue'>Record Successfully Updated!</p>";
                        request.setAttribute("msg",msg);

                       getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
                else{
                    request.setAttribute("product_id", product_id);
                    request.setAttribute("product_name", product_name);
                    request.setAttribute("product_type", product_type);                    
                    request.setAttribute("unit_price", unit_price);
                    request.setAttribute("discount_rate", discount_rate);
                    request.setAttribute("new_unit_price", new_unit_price);
                    request.setAttribute("qty_in_stock", qty_in_stock);
                    request.setAttribute("picture", picture);                                        
                    
                    request.setAttribute("msg","<p style='color:blue'>Record not Updated!</p>");
                    getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
            }
            else if(button.equals("Delete Record")){
                 int status = ProductDAO.deleteProductRecord(product_id);
                        if(status==0){
                            
                        String msg= "<p style='color:blue'>Record Successfully Deleted!</p>";
                        request.setAttribute("msg",msg);

                       getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
                else{
                    request.setAttribute("product_id", product_id);
                    request.setAttribute("product_name", product_name);
                    request.setAttribute("product_type", product_type);                    
                    request.setAttribute("unit_price", unit_price);
                    request.setAttribute("discount_percent", discount_percent);
                    request.setAttribute("new_unit_price", new_unit_price);
                    request.setAttribute("qty_in_stock", qty_in_stock);
                    request.setAttribute("picture", picture);                                        
                    
                    request.setAttribute("msg","<p style='color:blue'>Record not Deleted!</p>");
                    getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
            }           
                else if(button.equals("Load Record")){

                ArrayList productArray = null;
                String loadRecord = request.getParameter("comboLoad").trim();
                productArray = ProductDAO.getProductRecord(loadRecord);

                if(productArray!=null){

                product_id = productArray.get(0).toString();
                product_name = productArray.get(1).toString();
                product_type = productArray.get(2).toString();                
                unit_price = productArray.get(3).toString();
                discount_percent = productArray.get(4).toString();
                new_unit_price  = productArray.get(5).toString();
                qty_in_stock = productArray.get(6).toString();
                picture = productArray.get(7).toString();
                                
                request.setAttribute("product_id", product_id);
                request.setAttribute("product_name", product_name);
                request.setAttribute("product_type", product_type);                
                request.setAttribute("unit_price", unit_price);
                request.setAttribute("discount_percent", discount_percent);
                request.setAttribute("new_unit_price", new_unit_price);
                request.setAttribute("qty_in_stock", qty_in_stock);
                request.setAttribute("picture", picture);

                getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);

                }else{
                request.setAttribute("msg","<p style='color:blue'>Invalid Combo Selection!</p>");
                getServletContext().getRequestDispatcher("/product.jsp").forward(request, response);
                }
            }

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
