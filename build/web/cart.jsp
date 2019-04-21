<%-- 
    Document   : cart
    Created on : Feb 10, 2018, 4:34:49 PM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 95px; margin: 10px auto;">        
        <h1>Your Cart!</h1>
        <table border="0" cellspacing="10">
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
                <th>Size</th>
                <th>&nbsp;</th>
            </tr>            
               <c:forEach var="item"  items="${cart.items}" >             
                <tr>
                    <td>                        
                        <form action="" method="post">
                            <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                            <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>">
                            <input type="submit" value="Update">
                        </form>                        
                    </td>                     
                    <td><c:out value="${item.product.description}"/></td>   
                    <td><fmt:formatNumber value="${item.product.price}" type="currency"/></td> 
                    <td><fmt:formatNumber value="${(item.product.price * item.quantity)}" type="currency"/></td>   
                    <td><c:out value="${item.product.size}"/></td>   
                    <td>                        
                       <form action="" method="post">
                            <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                            <input type="hidden" name="quantity" value="0">                            
                            <input type="submit" value="Remove">
                        </form>
                    </td>  
                </tr>
                </c:forEach>
                
        </table>
        <%--<form action="cartsmart" method="post">
            <input type="hidden" name="action" value="shop">            
            <input type="submit" value="Continue Shopping">
        </form>--%>
        <form action="cartsmart" method="post">
            <input type="hidden" name="action" value="viewcartlist">            
            <input type="submit" value="View Cart List">
        </form>
        <%--<form action="cartsmart" method="post">
            <input type="hidden" name="action" value="checkout">            
            <input type="submit" value="Check Out">
        </form>--%>
    </body>
</html>
