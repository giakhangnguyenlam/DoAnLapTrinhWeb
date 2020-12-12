package ute.webapplication.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.CartDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class MyOrderController
 */
@WebServlet("/myOrder")
public class MyOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyOrderController() {
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
			int totalItems = 0;
			for (int i = 0; i < cart.getListItems().size(); i++) {
				totalItems = totalItems + cart.getListItems().get(i).getSoluong();
			}
			request.setAttribute("totalItems", totalItems);
		}
		CartDAO cartDAO = new CartDAO();
		List<CartModel> listOrder = cartDAO.getAllListOrder(MyUtils.getStoredConnection(request), user.getTenTaiKhoan());
		if (listOrder != null) {
			request.setAttribute("listOrder", listOrder);
		}
		else {
			System.out.print("listOrder is null");
		}
		

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/myorder.jsp");
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