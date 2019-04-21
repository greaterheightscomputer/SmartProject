<%-- 
    Document   : product_report_content
    Created on : Feb 26, 2018, 6:01:19 PM
    Author     : khadijatPc
--%>

<%@page import="smart.dao.ReportProduct"%>
<%@page import="java.util.Iterator"%>
<%@page import="smart.dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('image/pm-bg1_3.jpg'); padding-left: 45px; margin: 2px auto;">
        <form action="" method="post">
            <table border="1">
                <tr>
                <h1>Products Report with Images </h1>
                </tr>

                <tr>
                    <th>Product Name</th>
                    <th>Product Type</th>
                    <th>Unit Price</th>
                    <th>Discounted Rate</th>
                    <th>Discounted Price</th>
                    <th>Product Image</th>                                        
                  <%
                            String id = request.getParameter("comboProduct").trim();
                            ArrayList al = ProductDAO.getProductReportRecord(id);

                            Iterator itr = al.iterator();
                            for(int i=0;i<al.size();i++){
                                ReportProduct rp = (ReportProduct)itr.next();
                                String productname = rp.product_name;
                                String producttype = rp.product_type;
                                String unitprice = rp.unit_price;
                                String discountper = rp.discount_percent;
                                String newunitprice = rp.new_unit_price;
                                String picture = rp.picture;
                     %>
		</tr>
                <tr>
                    <td><%=productname%></td>
                    <td><%=producttype%></td>
                    <td><%=unitprice%></td>                    
                    <td><%=discountper%></td>
                    <td><%=newunitprice%></td>                    
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
