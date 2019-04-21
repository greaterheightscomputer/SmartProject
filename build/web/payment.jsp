<%-- 
    Document   : payment
    Created on : Feb 13, 2018, 2:40:56 PM
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
        <h1>Payment Details</h1>
        <form action="cartsmart" method="post">
            <label>Card Type</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="comboSize">
                <option value="0">==Select Card Type==</option>
                <option value="Master">Master</option>
                <option value="Smart">Smart</option>
                <option value="Visa">Visa</option>
            </select><br/><br/>
            <label>Card Number </label>
            <input  type="text" name="cardNumber" required="true"/><br/><br/>
            <label>Expire Date</label>
            &nbsp;&nbsp;&nbsp;<input  type="date" name="expireDate" required="true" /><br/><br/>                      
                
            <input type="hidden" name="action" value="thank">            
            <input  type="submit" value="Process Payment" />
        </form>
    </body>
</html>
