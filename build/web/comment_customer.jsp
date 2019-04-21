<%-- 
    Document   : comment
    Created on : Feb 27, 2018, 1:58:00 PM
    Author     : khadijatPc
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="smart.dao.CommentDAO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="smart.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment Page</title>
    <link rel="stylesheet" type="text/css" href="css/smartcss_user.css"/>

   <%
    String user_ids = (String)session.getAttribute("userId");
       if(user_ids==null){           
           user_ids = user_ids;
       }
    String comment = (String)request.getAttribute("comment");
       if(comment==null){
           comment = "";
       }    
%>
    </head>
    <body>
        <form name="form" action="comment" method="post">
            <div>
                <table>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td><input name="button" type="submit" value="Insert Comment" /></td>
                        <td></td><td></td>
                        <%--<td><input name="button" type="submit" value="Update Record"/></td>
                        <td></td><td></td>
                        <td><input name="button" type="submit" value="Delete Record" /></td>
                        <td></td><td></td>
                        <td><label>
                         <%
                              LinkedHashMap map = CommentDAO.loadCombo();
                              out.print("<select name='comboLoad'>");
                              if (map.isEmpty()) {
                                out.print("<OPTION value='0'>==No Record==</OPTION>");
                                } else {
                                    out.print("<OPTION value='0'>===Select Record===</OPTION>");
                                    Set keys = map.keySet();
                                    Iterator itr = keys.iterator();
                                    for (int i = 0; i < keys.size(); i++) {
                                        String selectedId = itr.next().toString();
                                        String Name = map.get(selectedId).toString();
                                        out.print("<OPTION value='" + selectedId + "'>" + Name + "</OPTION>");
                                    }
                                }
                              out.println("</select>");
                          %>
                            </label></td>                        
                        <td></td><td></td><td></td>
                        <td><input name="button" type="submit" value="Load Record" /></td><td></td>--%>
                        <td></td>
                    </tr>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>                    
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                </table>
                <table>
                    <tr style="color: blue;">
                        <%
                            if(request.getAttribute("msg")!=null)
                               {
                                   String messsage = (String) request.getAttribute("msg");
                                   out.println(messsage);
                                }
                            else{
                                    out.println("<p style='color:blue'>Comment Record<p>");
                                }                              
                            %> 
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>
                        <td><label for="user">User Email Id</label></td><td></td>
                        <td></td><td></td> <td></td><td></td>                        
                    </tr> 
                    <tr>
                        <td><input name="textuser_ids" type="text" id="user" value="<%=user_ids%>" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td>                        
                        
                   </tr>
                   <tr></tr><tr></tr>
                    <tr>          
                        <td><label for="cmt">Comment</label></td><td></td>
                        <td></td><td></td> <td></td><td></td>                        
                    </tr>
                    <tr>
                          <td><textarea name="text_comment" id="cmt"  rows="20" cols="95"   value="<%=comment%>" placeholder="Enter your comment here" autocomplete="off"></textarea></td>
                        <%--<td><input name="text_comment" id="cmt"   size="96"  value="<%=comment%>" placeholder="Enter your comment here" autocomplete="off"/></td>--%>
                        <td></td><td></td><td></td><td></td>                        
                    </tr>    
                </table>                  
            </div>             
        </form>    
    </body>
</html>
