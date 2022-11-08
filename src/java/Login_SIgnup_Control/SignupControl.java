package Login_SIgnup_Control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bin
 */
@WebServlet(name = "SignupControl", urlPatterns = {"/signup"})
public class SignupControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String fullname = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String repass = request.getParameter("repass");
        
        String phoneRegrex = "^(84|0[3|5|7|8|9])+([0-9]{8})$";
        if (fullname == "" || phone=="" || address=="" || username=="" || password=="" || repass==""){
            request.setAttribute("mess", "Please enter all of your infomation!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if(!phone.matches(phoneRegrex)){
            request.setAttribute("mess", "Your phone number is illegal!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (!password.equals(repass)) {
            request.setAttribute("mess", "Please check your password and repeat password!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
            DAO dao = new DAO();
            Account a = dao.checkAccountExist(username);
            if (a == null) {
                dao.signUp(fullname,phone,address,username, password);
                Account b = dao.checkAccountExist(username);
                HttpSession session = request.getSession();
                session.setAttribute("acc", b);
                response.sendRedirect("home");

            } else {
                request.setAttribute("messS", "Account already exists");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
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
