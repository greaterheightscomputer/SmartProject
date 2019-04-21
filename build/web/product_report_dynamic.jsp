<%-- 
    Document   : product_report_dynamic
    Created on : Feb 26, 2018, 2:40:22 PM
    Author     : khadijatPc
--%>

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
        <link rel="stylesheet" type="text/css" href="css/smart_products_report.css"/>
    </head>
    <body>
        <form action="product_report_content.jsp" method="post">

            <table>
                <div>
                    <tr>
                        <td>
                            <%
                            out.print("<select name = 'comboProduct'>");
                            LinkedHashMap product = new LinkedHashMap();
                            product = ProductDAO.loadProductRecord();
                            if(product.isEmpty()){
                            out.print("<option value = '0'>==NO RECORD==</option>");
                            }else{
                            out.print("<option value='0'>==SELECT PRODUCTS TYPE==</option>");
                            Set keys = product.keySet();
                            Iterator itr = keys.iterator();
                            for(int i =0;i<keys.size();i++){
                            String selectedId = itr.next().toString();
                            String name = product.get(selectedId).toString();
                            out.print("<option value='"+selectedId+"'>"+name+"</option>");
                            }
                             }
                        %>
                        </td>
                        <td><input type="submit" name="button" value="Search" target="_" /></td>
                    </tr>                    
                </div>
            </table>                    
        </form>
    </body>
</html>
