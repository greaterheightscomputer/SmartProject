<%-- 
    Document   : admin_welcome
    Created on : Feb 19, 2018, 5:34:07 PM
    Author     : khadijatPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin Page</title>
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 95px;" >
        <form action="welcome" method="post">
            <h1>Welcome <%=session.getAttribute("fullName")%> to Smart Accessories Incorporation! as <%=session.getAttribute("userRoleName")%> </h1>

        <h3>Our company is one of the leading e-commerce web-site globally, we ideal with the following high quantity and<br/>
            trendy accessories for both female and male;
        </h3>
        <ul style="font-size: 20px">
            <li>Leather Belt</li>
            <li>Leather Shoes</li>
            <li>Leather Bag</li>
            <li>Diamond & Gold</li>
        </ul>
        <h3>Our web-site is one of the site where you can shop for avoidable, highly trendy and quantity products that we ideal with.<br/>
            Goods bought from the web-site will be delivery or shipped to our customer on or before 4days globally.
            <br/>In case our customer does not satisfy with our product(s), the product(s) can be return within seven days after purchase.<br/><br/>
        </h3>
        <h3>Our web-site is one of the most busiest web-site with huge traffic because we have customers from different continents and <br/>
        countries in the world, as a result of these it made our administrators to be highly busy and well paid as well.<br/>
        <b><i>Thanks for managing Smart Accessories Web-site. Wishing you happy working services. <br/>Once again thanks for being one of our admin member</i></b>
        </h3><br/>
        <input type="submit" name="button" value="Click to Continue"/>
        </form>
    </body>
</html>
