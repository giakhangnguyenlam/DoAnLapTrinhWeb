package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ute.webapplication.DAO.web.UserDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.model.web.ItemsModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		AccountModel user = MyUtils.getLoginedUser(session);
		String url = "";
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String userName = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		boolean hasError = false;
		String errorString = "";
		if (userName == null || password == null || userName.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required username and password!";
		} else {
			Connection conn = MyUtils.getStoredConnection(request);
			try {
				user = UserDAO.findUser(conn, userName, password);
				if (user == null) {
					hasError = true;
					errorString = "User Name or password invalid";
				}
			} catch (SQLException e) {
				e.printStackTrace();
				hasError = true;
				errorString = e.getMessage();
			}
		}

		if (hasError) {
			user = new AccountModel();
			user.setTenTaiKhoan(userName);
			user.setMatKhau(password);

			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			url = "/views/web/login.jsp";
		} else {
			MyUtils.storeLoginedUser(session, user);
			request.setAttribute("user", user);
			CartModel cart = new CartModel();
			cart.setUser(user);
			List<ItemsModel> listItems = new ArrayList<ItemsModel>();
			cart.setListItems(listItems);
			MyUtils.storeCartUser(session, cart);
			url = "/views/web/home.jsp";
		}
		
		RequestDispatcher dp = getServletContext().getRequestDispatcher(url);
		dp.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
