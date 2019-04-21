package smart.servlet;

import encript.EPassword;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smart.dao.UserDAO;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            HttpSession session = request.getSession(true);
            String action = request.getParameter("action");

            String button = request.getParameter("buttonsubmit").trim();
            String username = request.getParameter("textusername").trim();
            String password = request.getParameter("textpassword").trim();

            String encriptPwd = EPassword.digestValue(password, "MD5");

            if(button.equals("LOGIN")){

                ArrayList userRecord = null;

                if(validateEmail(username)==true){

                    userRecord = UserDAO.authenticateNewUser(username, encriptPwd);
                }
                else{
                    request.setAttribute("errormsg", "Invalid Email ID or Password");
                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                }              

              if(!userRecord.isEmpty()){

                    String content = userRecord.get(0).toString().trim();
                    if(content.equals("100")){
                    request.setAttribute("errormsg", "Invalid login details!");
                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);

                    }else{

                          String sUserId = userRecord.get(0).toString().trim();
                          String sFirstName = userRecord.get(1).toString().trim();
                          String sLastName = userRecord.get(2).toString().trim();
                          String sUserRoleId = userRecord.get(3).toString().trim();
                          String sLoginStatus = userRecord.get(4).toString().trim();

                          String userRoleName = UserDAO.getUserRoleName(sUserRoleId);

                         if(sLoginStatus.trim().equals("0") && sUserRoleId.trim().equals("UR001")){

                                    session.setAttribute("userId",sUserId);
                                    session.setAttribute("firstName",sFirstName);
                                    session.setAttribute("lastName",sLastName);
                                    session.setAttribute("fullName",sFirstName+" "+sLastName);

                                    session.setAttribute("userRoleName",userRoleName);
                                    session.setAttribute("userRoleId",sUserRoleId);
                                    session.setAttribute("loginStatus",sLoginStatus);

                                    getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
                                } 
                             else if(sLoginStatus.trim().equals("1") && sUserRoleId.trim().equals("UR001")){
                                    session.setAttribute("userId",sUserId);
                                    session.setAttribute("firstName",sFirstName);
                                    session.setAttribute("lastName",sLastName);
                                    session.setAttribute("fullName",sFirstName+" "+sLastName);

                                    session.setAttribute("userRoleName",userRoleName);
                                    session.setAttribute("userRoleId",sUserRoleId);
                                    session.setAttribute("loginStatus",sLoginStatus);
                                    
                                    getServletContext().getRequestDispatcher("/admin_welcome.jsp").forward(request, response);
                                }
                             else if(sLoginStatus.trim().equals("0") && sUserRoleId.trim().equals("UR002")){
                                    session.setAttribute("userId",sUserId);
                                    session.setAttribute("firstName",sFirstName);
                                    session.setAttribute("lastName",sLastName);
                                    session.setAttribute("fullName",sFirstName+" "+sLastName);

                                    session.setAttribute("userRoleName",userRoleName);
                                    session.setAttribute("userRoleId",sUserRoleId);
                                    session.setAttribute("loginStatus",sLoginStatus);

                                    getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
                                }
                             else if(sLoginStatus.trim().equals("1") && sUserRoleId.trim().equals("UR002")){
                                    session.setAttribute("userId",sUserId);
                                    session.setAttribute("firstName",sFirstName);
                                    session.setAttribute("lastName",sLastName);
                                    session.setAttribute("fullName",sFirstName+" "+sLastName);

                                    session.setAttribute("userRoleName",userRoleName);
                                    session.setAttribute("userRoleId",sUserRoleId);
                                    session.setAttribute("loginStatus",sLoginStatus);

                                    getServletContext().getRequestDispatcher("/customer_welcome.jsp").forward(request, response);
                                }
                              else{
                                    request.setAttribute("errormsg", "Invalid User Profile!");
                                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                                }
                         }
                 }             
            }
            
        } finally {
            out.close();
        }
    }
    private boolean validateEmail(String userId){

        boolean value = false;
        int mailIndex = userId.trim().indexOf("@");
        int dotIndex = userId.trim().lastIndexOf(".");
        //System.out.println("mailIndex: "+mailIndex);
        //System.out.println("dotIndex: "+dotIndex);
        int dIndex = dotIndex - mailIndex;
        //System.out.println("dIndex: "+dIndex);
        if(dIndex > 1 && dotIndex > 0 && mailIndex > 0){
            value = true;
        }
        else{
            value = false;
        }
        return value;
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
