<%-- 
    Document   : product_report_dynamic
    Created on : Feb 26, 2018, 2:40:22 PM
    Author     : khadijatPc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="smart.dao.ProductDAO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Report on Production</title>        
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 45px; margin: 2px auto;">
        <form action="" method="post">
	<table border="1">
		<tr>
                        <h1>Static Report on Product</h1>
		</tr>
		<tr>                    
                    <th>Product Name</th>
                    <th>Product Type</th>
                    <th>Unit Price</th>
                    <th>Discount Rate</th>
                    <th>Discounted Price</th>
                    <th>Product Image</th>                        
			<%
                            ResultSet rs = ProductDAO.getProductReportRecordStatic();
                            while (rs.next()) {
                            String product_name = rs.getString(1).trim();
                            String product_type = rs.getString(2).trim();
                            String unit_price = rs.getString(3).trim();
                            String discount_percent = rs.getString(4).trim();
                            String new_unit_price = rs.getString(5).trim();
                            String picture = rs.getString(6).trim();

                     %>			
		</tr>
		<tr>
			<td class="auto-style3"><%=product_name%></td>
			<td class="auto-style3"><%=product_type%></td>
			<td class="auto-style3"><%=unit_price%></td>
			<td class="auto-style3"><%=discount_percent%></td>
			<td class="auto-style3"><%=new_unit_price%></td>			
                        <td><img src="pictures/<%=picture%>" alt="" width="120" height="120"/></td>
		</tr>

		<tr>
                    <%
        }
               %>
		</tr>
		</table>
    </form>

</body>

</html>
