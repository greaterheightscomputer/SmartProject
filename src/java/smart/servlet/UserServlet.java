package smart.servlet;

import encript.EPassword;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smart.dao.UserDAO;

public class UserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            //HttpSession session = request.getSession();
            String button = request.getParameter("button");

            String user_ids = request.getParameter("textuser_ids");
            String first_name = request.getParameter("textfirst_name");
            String last_name = request.getParameter("textlast_name");
            String pass_word = request.getParameter("textpass_word");
            String email = request.getParameter("textemail");
            String gender = request.getParameter("comboGender");
            String phone = request.getParameter("textphone");
            String user_address = request.getParameter("textuser_address");
            String user_role_id = request.getParameter("comboUserRole");
            String user_status = "1";
            String creation_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());

            String encriptPwd = EPassword.digestValue(pass_word, "MD5");

//            out.println("user_ids: "+user_ids+"<br/>");
//            out.println("first_name: "+first_name+"<br/>");
//            out.println("last_name: "+last_name+"<br/>");
//            out.println("pass_word: "+encriptPwd+"<br/>");
//            out.println("email: "+email+"<br/>");
//            out.println("gender: "+gender+"<br/>");
//            out.println("phone: "+phone+"<br/>");
//            out.println("user_address: "+user_address+"<br/>");
//            out.println("user_role_id: "+user_role_id+"<br/>");
//            out.println("user_status: "+user_status+"<br/>");
//            out.println("creation_date: "+creation_date+"<br/>");
            
            if(button.equals("Submit Record")){
                int pk_user = UserDAO.checkID(user_ids);
                if(pk_user!=0){
                     int status = UserDAO.insertUserRecord(user_ids, first_name, last_name, encriptPwd, email, gender, phone, user_address, user_role_id, user_status, creation_date);
                     if(status==0){
                        String msg = "Record Saved!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);

                     }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Saved!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                     }

                }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Saved! : Record for user_id["+user_ids +"] already exist!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                    }
                }
             if(button.equals("Update Record")){
                int pk_user = UserDAO.checkID(user_ids);
                if(pk_user==0){
                     int status = UserDAO.updateUserRecord(user_ids, first_name, last_name, encriptPwd, email, gender, phone, user_address, user_role_id, creation_date);
                     if(status==0){
                        String msg = "Record Updated!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);

                     }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Updated!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                     }

                }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Updated! : Record for user_id["+user_ids+"] does not exist!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                    }
                }

            else if(button.equals("Delete Record")){
               int pk_user = UserDAO.checkID(user_ids);
                if(pk_user==0){
                    int status = UserDAO.deleteUserRecord(user_ids);
                    if(status==0){
                        String msg = "Record Deleted Successful!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                    }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Deleted! : Remove all Dependencies before you try again!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                    }
                }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("first_name", first_name);
                        request.setAttribute("last_name", last_name);
                        request.setAttribute("pass_word", pass_word);
                        request.setAttribute("email", email);
                        request.setAttribute("gender", gender);
                        request.setAttribute("phone", phone);
                        request.setAttribute("user_address", user_address);
                        request.setAttribute("user_role_id", user_role_id);
                        request.setAttribute("user_status", user_status);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Deleted! : Record for user_id["+user_ids+"] does not exist!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                }
            }

            else if(button.equals("Load Record")){

                ArrayList loadUser = null;
                String loadRecord = request.getParameter("comboLoad").trim();
                loadUser = UserDAO.getUserRecord(loadRecord);

                if(loadUser!=null){
                user_ids  = loadUser.get(0).toString();
                first_name  = loadUser.get(1).toString();
                last_name  = loadUser.get(2).toString();
                pass_word  = loadUser.get(3).toString();
                email  = loadUser.get(4).toString();
                gender  = loadUser.get(5).toString();
                phone  = loadUser.get(6).toString();
                user_address  = loadUser.get(7).toString();
                user_role_id  = loadUser.get(8).toString();

                request.setAttribute("user_ids", user_ids);
                request.setAttribute("first_name", first_name);
                request.setAttribute("last_name", last_name);
                request.setAttribute("pass_word", pass_word);
                request.setAttribute("email", email);
                request.setAttribute("gender", gender);
                request.setAttribute("phone", phone);
                request.setAttribute("user_address", user_address);
                request.setAttribute("user_role_id", user_role_id);

                getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);

                }
            }
            else if(button.equals("Load Record")){

                ArrayList loadUser = null;
                String loadRecord = request.getParameter("comboLoad").trim();
                loadUser = UserDAO.getUserRecord(loadRecord);

                if(loadUser!=null){
                user_ids  = loadUser.get(0).toString();
                first_name  = loadUser.get(1).toString();
                last_name  = loadUser.get(2).toString();
                pass_word  = loadUser.get(3).toString();
                email  = loadUser.get(4).toString();
                gender  = loadUser.get(5).toString();
                phone  = loadUser.get(6).toString();
                user_address  = loadUser.get(7).toString();
                user_role_id  = loadUser.get(8).toString();

                request.setAttribute("user_ids", user_ids);
                request.setAttribute("first_name", first_name);
                request.setAttribute("last_name", last_name);
                request.setAttribute("pass_word", pass_word);
                request.setAttribute("email", email);
                request.setAttribute("gender", gender);
                request.setAttribute("phone", phone);
                request.setAttribute("user_address", user_address);
                request.setAttribute("user_role_id", user_role_id);

                getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);
                }
            }
            else if(button.equals("Back to Login")){
                
                getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
            }            

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
