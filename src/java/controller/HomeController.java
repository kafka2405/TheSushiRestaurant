package controller;

import dal.SushiDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Sushi;
import utils.HTMLHelper;

public class HomeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            SushiDAO sushiDAO = new SushiDAO();
            Sushi introSushi = sushiDAO.getOne(1);

            String strItemOnPage = getServletContext().getInitParameter("ItemOnPage");
            int itemOnPage = Integer.parseInt(strItemOnPage);

            System.out.println(itemOnPage);

            String strCurrentPage = request.getParameter("currentPage");
            System.out.println(strCurrentPage);
            if (strCurrentPage == null) {
                strCurrentPage = "1";
            }

            int currentPage = Integer.parseInt(strCurrentPage);

            int totalRecord = sushiDAO.totalSushi();

            System.out.println(totalRecord);

            int totalPage = (totalRecord / itemOnPage) + (totalRecord % itemOnPage != 0 ? 1 : 0);
            System.out.println(totalPage);

            int start = itemOnPage * (currentPage - 1) + 1;
            int end = start + itemOnPage - 1;

            ArrayList<Sushi> listSushi = sushiDAO.getListByIndex(start, end);
            
            String pagination = HTMLHelper.pagger(currentPage, totalPage, "homeController");
            

            request.setAttribute("introSushi", introSushi);
            request.setAttribute("listSushi", listSushi);
            request.setAttribute("totalPage", Integer.toString(totalPage));
            request.setAttribute("strCurrentPage", strCurrentPage);
            request.setAttribute("pagination", pagination);
            
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
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
