<%-- 
    Document   : header
    Created on : Feb 18, 2018, 1:23:59 AM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/smart_header.css"/>
    </head>
    <body>
        <header>
            <p>Hi&nbsp;<%=session.getAttribute("fullName")%>&nbsp;|&nbsp;<a style="color: white" href="cartsmart?action=logout" target="_top">log out</a><br/><br/> Profile:&nbsp;<%=session.getAttribute("userRoleName")%></p>
            <img src="image/logo1.png" alt="logo" width="100" height="100"/>
            <hgroup>
                <h1>Smart Accessories Incorporation</h1>
                <h3> ...a trading, sourcing, and exporting company</h3>
            </hgroup>
        </header>
    </body>
</html>
