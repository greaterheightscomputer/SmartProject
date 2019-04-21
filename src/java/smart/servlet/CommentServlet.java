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
import smart.dao.CommentDAO;

public class CommentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            String button = request.getParameter("button");

            String user_ids = request.getParameter("textuser_ids");
            String comment = request.getParameter("text_comment");            
            String creation_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());           

//            out.println("user_ids: "+user_ids+"<br/>");
//            out.println("comment: "+comment+"<br/>");
//            out.println("creation_date: "+creation_date+"<br/>");
            
            if(button.equals("Insert Comment")){                
                 int status = CommentDAO.insertCommentRecord(user_ids, comment, creation_date);
                  if(status==0){
                    String msg = "Record Saved!";
                    request.setAttribute("msg", msg);
                    getServletContext().getRequestDispatcher("/comment_customer.jsp").forward(request, response);

                    }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("comment", comment);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Saved!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                     }
                }
            
            else if(button.equals("Submit Record")){                
                 int status = CommentDAO.insertCommentRecord(user_ids, comment, creation_date);
                  if(status==0){
                    String msg = "Record Saved!";
                    request.setAttribute("msg", msg);
                    getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);

                    }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("comment", comment);
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Saved!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                     }
                }
            
             if(button.equals("Update Record")){                
                
                     int status = CommentDAO.updateCommentRecord(user_ids, comment, creation_date);
                     if(status==0){
                        String msg = "Record Updated!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);

                     }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("comment", comment);                        
                        request.setAttribute("creation_date", creation_date);

                        String msg = "Record not Updated!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                     }

                }

            else if(button.equals("Delete Record")){                               
                    int status = CommentDAO.deleteCommentRecord(user_ids);
                    if(status==0){
                        String msg = "Record Deleted Successful!";
                        request.setAttribute("msg", msg);

                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                    }else{
                        request.setAttribute("user_ids", user_ids);
                        request.setAttribute("comment", comment);                        
                        
                        String msg = "Record not Deleted! : Remove all Dependencies before you try again!";
                        request.setAttribute("msg", msg);
                        getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                    }                
            }

            else if(button.equals("Load Record")){

                ArrayList loadComment = null;
                String loadRecord = request.getParameter("comboLoad").trim();
                loadComment = CommentDAO.getCommentRecord(loadRecord);

                if(loadComment!=null){
                user_ids  = loadComment.get(0).toString();
                comment  = loadComment.get(1).toString();
                
                request.setAttribute("user_ids", user_ids);
                request.setAttribute("comment", comment);
                
                getServletContext().getRequestDispatcher("/comment.jsp").forward(request, response);
                }
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
