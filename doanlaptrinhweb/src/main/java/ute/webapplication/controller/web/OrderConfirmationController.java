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
 * Servlet implementation class OrderConfirmationController
 */
@WebServlet("/orderconfirmation")
public class OrderConfirmationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderConfirmationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		String url = "";
		if (user == null) {
			url="/views/web/login.jsp";
		}
		else {
			request.setAttribute("user", user);
		}

		CartModel cart = MyUtils.getCartUser(request.getSession());
		if (cart != null) {
			request.setAttribute("cart", cart);
			int totalItems = 0;
			request.setAttribute("totalItems", totalItems);
			float totalCost=0;
			for (int i = 0; i < cart.getListItems().size(); i++) {
				totalCost = totalCost + cart.getListItems().get(i).getGiaban()*cart.getListItems().get(i).getSoluong();
				totalItems = totalItems + cart.getListItems().get(i).getSoluong();
			}
			request.setAttribute("totalItems", totalItems);
			request.setAttribute("cart", cart);
			request.setAttribute("totalCost", totalCost);
			url="/views/web/confirmOrder.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
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
