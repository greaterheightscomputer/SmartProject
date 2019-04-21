<%-- 
    Document   : invoice_generate
    Created on : Feb 16, 2018, 9:01:30 PM
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
        <h1>Your Invoice!</h1>
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
                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                        <c:out value='${item.quantity}'/>
                    </td>                     
                    <td><c:out value="${item.product.description}"/></td>   
                    <td><fmt:formatNumber value="${item.product.price}" type="currency"/></td> 
                    <td>                        
                        <fmt:formatNumber value="${(item.product.price * item.quantity)}" type="currency"/></td>   
                    <td><c:out value="${item.product.size}"/></td>                       
                </tr>
                </c:forEach>
                <tr>
                    <td><b>Total</b></td>
                    <td></td>
                    <td></td>
                    <td><b>                                                     
                            <fmt:formatNumber value="${totalAmount}" type="currency"/>     
                   </b></td>
                </tr>
        </table>
        <form action="cartsmart" method="post">
            <input type="hidden" name="action" value="payment">            
            <input type="submit" value="Made Payment">
        </form>
        <%--<form action="cartsmart" method="post">
            <input type="hidden" name="action" value="back">            
            <input type="submit" value="Back to Cart">
        </form>--%>
    </body>
</html>
