package ute.webapplication.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class HomeController
 */

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		if (user != null) {
			request.setAttribute("user", user);
		}
		CartModel cart = MyUtils.getCartUser(request.getSession());
		if (cart != null) {
			request.setAttribute("cart", cart);
			int totalItems = cart.getListItems().size();
			request.setAttribute("totalItems", totalItems);
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/home.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
