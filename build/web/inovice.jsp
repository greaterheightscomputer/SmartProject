<%-- 
    Document   : inovice
    Created on : Feb 10, 2018, 4:29:36 PM
    Author     : khadijatPc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.util.*"%>
<%@page import="javax.servlet.http.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 95px; margin: 10px auto;">
        <h1>View Your Cart!</h1>
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
                        <c:set var="code" value="${item.product.code}"/>
                            <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                            <c:set var="qty"  value="${item.quantity}" /><c:out value='${qty}'/>                            
                    </td>              
                    <td><c:set var="desc" value="${item.product.description}"/><c:out value="${desc}"/></td>   
                    <td><c:set var="prc" value="${item.product.price}"/><fmt:formatNumber value="${prc}" type="currency"/></td> 
                    <td><c:set var="amt" value="${(item.product.price * item.quantity)}"/>
                        <fmt:formatNumber  value="${amt}" type="currency"/></td>                       
                    <td><c:set var="siz" value="${item.product.size}"/><c:out value="${siz}"/></td>                                                                                                                      
                    <td><c:set var="session_Id" value="${pageContext.session.id}"/> </td>                                                                                                   
                    <td><c:set var="created_date" value="${sessionScope.created_date}"/> </td>  
                    <td><c:set var="user_Id" value="${sessionScope.userId}"/>  </td>                                     
                </tr>
                <tr>
                    <sql:setDataSource var="orderdb" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost/SmartAcceDB"
                                       password="" user="root" />
                    <sql:update dataSource="${orderdb}" var="order">               
                        insert into OrderDetails values("${code}","${qty}", "${desc}", "${prc}", "${amt}", "${siz}", "${user_Id}","${session_Id}", "${created_date}");                                                                                                               
                    </sql:update>
                </tr>                
                </c:forEach>                
        </table>              
        <form action="cartsmart" method="post">
            <input type="hidden" name="action" value="generateinovice">            
            <input type="submit" value="Generate Invoice">
        </form>        
    </body>
</html>
