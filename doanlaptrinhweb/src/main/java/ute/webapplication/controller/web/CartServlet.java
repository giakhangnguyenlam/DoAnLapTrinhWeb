package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.CartDAO;
import ute.webapplication.DAO.web.ProductDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.model.web.ProductModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "";
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		if (user == null) {
			url="/views/web/login.jsp";
		}
		else {
			request.setAttribute("user", user);
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String idProduct = request.getParameter("idProduct");
			Connection conn = MyUtils.getStoredConnection(request);
			if (quantity<=0) {
				request.setAttribute("errorQuantity", "You have to enter least 1");
				ProductDAO productDAO =  new ProductDAO();
				ProductModel product = productDAO.findProduct(conn, idProduct);
				request.setAttribute("productInformation", product);
				url = "/views/web/single.jsp";
			}
			else {
				CartModel cart = MyUtils.getCartUser(request.getSession());
				CartDAO cartDAO =  new CartDAO();
				String optionAddToCart = request.getParameter("addToCart");
				String optionDeleteCart = request.getParameter("delete");
				String optionUpdateCart = request.getParameter("update");
				if ("Add To cart".equals(optionAddToCart)) {
					cartDAO.addCart(conn, cart, idProduct, quantity);
				}
				if ("Update".equals(optionUpdateCart)) {
					cartDAO.updateCart(conn, cart, idProduct, quantity);
				}
				if ("Delete".equals(optionDeleteCart)) {
					cartDAO.deleteCart(conn, cart, idProduct);
				}
				
				int totalItems = cart.getListItems().size();
				request.setAttribute("totalItems", totalItems);
				float totalCost=0;
				for (int i = 0; i < totalItems; i++) {
					totalCost = totalCost + cart.getListItems().get(i).getGiaban()*cart.getListItems().get(i).getSoluong();
				}
				request.setAttribute("cart", cart);
				request.setAttribute("totalCost", totalCost);
				url="/views/web/checkout.jsp";
				
			}
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
