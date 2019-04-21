<%-- 
    Document   : home
    Created on : Feb 18, 2018, 12:34:16 AM
    Author     : khadijatPc
--%>

<%@page import="smart.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart Home Page</title>
        <link rel="icon" type="ico" href="image/ico2.png"/>
        <link rel="stylesheet" href="css/smart_home.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html.js"></script>
        <%
         String user_role_id = (String)session.getAttribute("userRoleId");
       %>
    </head>
    <frameset rows="145,*,25" onload="noBack();" onpageshow="if(event.persisted) noBack();" onload="">

        <frame name="top" scrolling="no" frameborder=0 noresize target="contents" src="header.jsp"/>        
        <frameset cols="205,*">
            <frame name="contents" target="main" frameborder=0 src="<%=UserDAO.setMenu(user_role_id)%>.jsp"/>                                                     
            <frame name="main" frameborder=0 src="welcome.jsp"/>            
        </frameset>                    
        <frame name="bottom" scrolling="no" frameborder=0 noresize target="contents" src="footer.jsp"/>
        <noframes>
            <body>
                <p>This page uses frames, but your browser doesn't support them.</p>
            </body>
        </noframes>
    </frameset>
</html>
