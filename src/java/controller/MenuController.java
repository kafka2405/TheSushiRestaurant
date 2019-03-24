package controller;

import dal.MenuDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Menu;
import utils.HTMLHelper;

public class MenuController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            MenuDAO menuDAO = new MenuDAO();

            String strItemOnPage = getServletContext().getInitParameter("ItemOnPage");

            int itemOnPage = Integer.parseInt(strItemOnPage);

            String strCurrentPage = request.getParameter("currentPage");
            System.out.println(strCurrentPage);
            if (strCurrentPage == null) {
                strCurrentPage = "1";
            }

            int currentPage = Integer.parseInt(strCurrentPage);

            int totalRecord = menuDAO.total();

            System.out.println("total record:" + totalRecord);

            int totalPage = (totalRecord / itemOnPage) + (totalRecord % itemOnPage != 0 ? 1 : 0);

            int start = itemOnPage * (currentPage - 1) + 1;
            int end = start + itemOnPage - 1;


            ArrayList<Menu> listMenu = menuDAO.getListByIndex(start, end);

            String pagination = HTMLHelper.pagger(currentPage, totalPage, "menuController");
            
            request.setAttribute("listMenu", listMenu);
            request.setAttribute("totalPage", Integer.toString(totalPage));
            request.setAttribute("strCurrentPage", strCurrentPage);
            request.setAttribute("pagination", pagination);

            request.getRequestDispatcher("menuPriceList.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
