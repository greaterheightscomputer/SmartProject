<%-- 
    Document   : welcome
    Created on : Feb 20, 2018, 1:56:52 AM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Welcome Page</title>
        <link rel="icon" type="ico" href="image/ico2.png"/>        
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 95px; margin: 10px auto;">
        <br/><br/>
        
        <h1>Welcome to Smart Accessories Incorporation Web site!</h1>
        <h2>
            Click here <a href="user.jsp">to register </a> as a new user before you can purchase any of <br/> our high quality
            and trendy accessories for both female and male.            
        </h2> 
        
        <form action="checklogin" method="post">
            <input type="hidden" name="action" value="backtologin">            
            <input type="submit" value="Back to Login">
        </form>
        
    </body>
</html>
