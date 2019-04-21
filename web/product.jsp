<%-- 
    Document   : product
    Created on : Feb 25, 2018, 1:43:52 PM
    Author     : khadijatPc
--%>

<%@page import="smart.dao.ProductDAO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
        <link rel="icon" type="ico" href="image/ico2.png"/>
        <link rel="stylesheet" type="text/css" href="css/smartcss.css"/>
<%
    String productid = (String)request.getAttribute("product_id");
       if(productid==null){
           productid = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
       }
    String productname = (String)request.getAttribute("product_name");
       if(productname==null){
           productname = "";
       }
    String producttype = (String)request.getAttribute("product_type");
       if(producttype==null){
           producttype = "";
       }    
    String unitprice = (String)request.getAttribute("unit_price");
       if(unitprice==null){
           unitprice = "";
       }
    String discountpercent = (String)request.getAttribute("discount_percent");
       if(discountpercent==null){
           discountpercent = "";
       }
    String newunitprice = (String)request.getAttribute("new_unit_price");
       if(newunitprice==null){
           newunitprice = "";
       }
    String qtyinstock = (String)request.getAttribute("qty_in_stock");
       if(qtyinstock==null){
           qtyinstock = "";
       }
    String picture = (String)request.getAttribute("picture");
       if(picture==null){
           picture = "";
       }    
%>
    </head>    
    <body>      
        <form name="form" action="product" method="post">
            <div>
                <table>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td><input name="button" type="submit" value="Submit Record" /></td>
                        <td></td><td></td>
                        <td><input name="button" type="submit" value="Update Record"/></td>
                        <td></td><td></td>
                        <td><input name="button" type="submit" value="Delete Record" /></td>
                        <td></td><td></td>
                        <td><label>
                         <%
                              LinkedHashMap map = ProductDAO.loadCombo();
                              out.print("<select name='comboLoad'>");
                              if (map.isEmpty()) {
                                out.print("<OPTION value='0'>==No Record==</OPTION>");
                                } else {
                                    out.print("<OPTION value='0'>===Select Record===</OPTION>");
                                    Set keys = map.keySet();
                                    Iterator itr = keys.iterator();
                                    for (int i = 0; i < keys.size(); i++) {
                                        String selectedId = itr.next().toString();
                                        String Name = map.get(selectedId).toString();
                                        out.print("<OPTION value='" + selectedId + "'>" + Name + "</OPTION>");
                                    }
                                }
                              out.println("</select>");
                          %>
                            </label></td>                        
                        <td></td><td></td><td></td>
                        <td><input name="button" type="submit" value="Load Record" /></td><td></td>
                        <td></td>
                    </tr>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>                    
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                </table>
                <table border="0">
                    <tr style="color: blue;">
                        <%
                            if(request.getAttribute("msg")!=null)
                               {
                                   String messsage = (String) request.getAttribute("msg");
                                   out.println(messsage);
                                }
                            else{
                                    out.println("<p style='color:blue'>Product Record<p>");
                                }                              
                            %> 
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>
                        <td><label for="productId">Product Id</label></td>
                        <td></td><td></td> <td></td>
                        <td><label for="productName">Product Name</label></td>
                        <td></td><td></td><td></td>
                        <td><label for="productType">Product Type</label></td>
                        <td></td>
                        <td rowspan="40"><img src="pictures/<%=picture%>" alt="product image" width="200" height="220"/></td>
                        <td></td><td></td> 
                    </tr> 
                    <tr>
                        <td><input name="textproduct_id" type="text" id="productId" value="<%=productid%>" size="23"/></td>
                        <td></td><td></td><td></td>
                        <td><input name="textproduct_name" type="text" id="productName" value="<%=productname%>" size="23"/></td
                        <td></td><td></td><td></td><td></td>
                        <td><input name="textproduct_type" type="text" id="productDesc" value="<%=producttype%>"size="23"/></td
                   </tr>
                   <tr></tr><tr></tr>
                    <tr>
                        <td><label for="unitprice">Unit Price</label></td>
                        <td></td><td></td><td></td>
                        <td><label for="discountpercent">Discount Rate</label></td>                        
                        <td></td><td></td><td></td>
                        <td><label for="qtyinstock">Quantity in Stock</label></td>                        
                    </tr>
                    <tr>
                        <td><input name="textunit_price" type="text" id="unitprice" value="<%=unitprice%>" size="23"/></td>
                        <td></td><td></td><td></td>
                        <td><input name="textdiscount_percent" type="text" id="discountpercent" value="<%=discountpercent%>" size="23"/></td
                        <td></td><td></td><td></td><td></td>
                        <td><input name="textqty_in_stock" type="text" id="qtyinstock" value="<%=qtyinstock%>" size="23"/></td>                        
                   </tr>
                   <tr></tr><tr></tr>
                    <tr>                        
                        <td><label for="picture">Product Image</label></td>
                    </tr>
                    <tr>
                        <td><input name="picture" type="file" id="picture" value="<%=picture%>" size="23"/></td>                        
                   </tr>

                    
                </table>                  
            </div>
        </form>    
    </body>
</html>
