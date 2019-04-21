<%-- 
    Document   : user
    Created on : Feb 19, 2018, 12:37:39 PM
    Author     : khadijatPc
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="smart.dao.UserDAO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link rel="icon" type="ico" href="image/ico2.png"/>
        <link rel="stylesheet" type="text/css" href="css/smartcss_user.css"/>

   <%
    String user_ids = (String)request.getAttribute("user_ids");
       if(user_ids==null){
           user_ids = "";
       }
    String first_name = (String)request.getAttribute("first_name");
       if(first_name==null){
           first_name = "";
       }
    String last_name = (String)request.getAttribute("last_name");
       if(last_name==null){
           last_name = "";
       }
    String pass_word = (String)request.getAttribute("pass_word");
       if(pass_word==null){
           pass_word = "";
       }
    String email = (String)request.getAttribute("email");
       if(email==null){
           email = "";
       }
    String gender = (String)request.getAttribute("gender");
       if(gender==null){
           gender = "";
       }
    String phone = (String)request.getAttribute("phone");
       if(phone==null){
           phone = "";
       }
    String user_address = (String)request.getAttribute("user_address");
       if(user_address==null){
           user_address = "";
       }
    String user_role_id = (String)request.getAttribute("user_role_id");
       if(user_role_id==null){
           user_role_id = "";
       }    
%>
    </head>
    <body>
        <form name="form" action="user" method="post">
            <div>
                <table>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td><input name="button" type="submit" value="Submit Record" /></td>
                        <td></td><td></td>
                        <td><input name="button" type="submit" value="Update Record"/></td>
                        <td></td><td></td>
                        <td><input name="button" type="submit" value="Delete Record" /></td>
                        <td></td><td></td>
                        <td><label>
                         <%
                              LinkedHashMap map = UserDAO.loadCombo();
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
                        <td><input name="button" type="submit" value="Load Record" /></td><td></td>
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
                                    out.println("<p style='color:blue'>User Record<p>");
                                }                              
                            %> 
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>
                        <td><label for="user">User Email Id</label></td><td></td>
                        <td></td><td></td> <td></td><td></td>
                        <td><label for="fn">First Name</label></td><td></td><td></td>
                        <td></td><td></td><td></td>
                        <td><label for="ls">Last Name</label></td><td></td>
                        <td></td><td></td>                
                    </tr> 
                    <tr>
                        <td><input name="textuser_ids" type="text" id="user" value="<%=user_ids%>" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td>
                        <td><input name="textfirst_name" type="text" id="fn" value="<%=first_name%>" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td>
                        <td><input name="textlast_name" type="text" id="ls" value="<%=last_name%>"size="23"/></td><td></td>
                   </tr>
                   <tr></tr><tr></tr>
                    <tr>          
                        <td><label for="pwd">Password</label></td><td></td>
                        <td></td><td></td> <td></td><td></td>
                        <td><label for="em">Email ID</label></td><td></td><td></td>
                        <td></td><td></td><td></td>
                        <td><label for="gnd">Gender</label></td><td></td>
                    </tr>
                    <tr>
                        <td><input name="textpass_word" type="password" id="pwd" value="" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td>
                        <td><input name="textemail" type="text" id="em" value="<%=email%>" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td> 
                        <td><select name="comboGender">
                                <option value="Select Gender">==Select Gender==</option>
                                <option <%if(gender.equals("Female")){out.print("selected='true'");}%>value="Female">Female</option>
                                <option <%if(gender.equals("Male")){out.print("selected='true'");}%>value="Male">Male</option>
                            </select></td><td></td>
                   </tr>
                   <tr></tr><tr></tr>
                    <tr>                            
                        <td><label for="phone">Phone </label></td><td></td>
                        <td></td><td></td> <td></td><td></td>
                        <td><label for="user_address">Address</label></td><td></td><td></td>
                        <td></td><td></td><td></td>
                        <td><label>User Role</label></td><td></td>
                    </tr>
                    <tr>
                        <td><input name="textphone" type="text" id="phonw" value="<%=phone%>" size="23"/></td><td></td>
                        <td></td><td></td><td></td><td></td>
                        <td><textarea name="textuser_address" id="user_address"><%=user_address%></textarea></td><td></td>
                        <td></td><td></td><td></td><td></td>
                        <td>
                            <%
                                  LinkedHashMap user_role = UserDAO.userRoleloadComboCustomer();
                                  out.print("<select name='comboUserRole'>");
                                  if (user_role.isEmpty()) {
                                    out.print("<OPTION value='0'>==No  Record==</OPTION>");
                                    } else {
                                        out.print("<OPTION value='0'>==Select User Role ==</OPTION>");
                                        Set keys = user_role.keySet();
                                        Iterator itr = keys.iterator();
                                        for (int i = 0; i < keys.size(); i++) {
                                            String selectedId = itr.next().toString();
                                            String Name = user_role.get(selectedId).toString();
                                            out.print("<OPTION value='" + selectedId + "'");

                                            if(user_role_id.equals(selectedId)){
                                            out.print("Selected='true'");}out.println(">" + Name + "</OPTION>");
                                        }
                                    }
                                out.println("</select>");
                            %>
                        </td>
                   </tr>                    
                   <tr>
                       <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                       <td></td><td></td>
                       <td><input name="button" type="submit" value="Back to Login" /></td>
                   </tr>
                </table>                  
            </div>             
        </form>
    </body>
</html>
