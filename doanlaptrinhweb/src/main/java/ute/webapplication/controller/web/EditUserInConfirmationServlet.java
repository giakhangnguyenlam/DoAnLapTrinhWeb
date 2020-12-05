package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.UserDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.services.web.UserAccount;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class EditUserInConfirmation
 */
@WebServlet("/editUserInConfirmation")
public class EditUserInConfirmationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserInConfirmationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		CartModel cart = MyUtils.getCartUser(request.getSession());
		if (cart != null) {
			request.setAttribute("cart", cart);
			int totalItems = cart.getListItems().size();
			request.setAttribute("totalItems", totalItems);
		}
		
		String yourName = request.getParameter("yourname").trim();
		String phoneNumber = request.getParameter("phonenumber").trim();
		String email = request.getParameter("email").trim();
		String address = request.getParameter("address").trim();
		
		String url= "";
		boolean hasError=false;
		if (UserAccount.checkName(yourName) == false) {
			hasError=true;
			request.setAttribute("yourNameError", "You have to enter your name");
		}
		if (UserAccount.checkPhoneNumber(phoneNumber) == false) {
			hasError=true;
			request.setAttribute("phoneumberError", "Phone number have 10 digits");
		}

		if (UserAccount.checkEmail(email) == false) {
			hasError=true;
			request.setAttribute("emailError", "Incorrect! Example: abc@xyz");
		}
		if (UserAccount.checkAddress(address) == false) {
			hasError=true;
			request.setAttribute("addressError", "You have to enter your address");
		}
		
		if (hasError) {
			url="/views/web/EditUserInConfirmation.jsp";
		}
		else {
			Connection conn = MyUtils.getStoredConnection(request);
			user.setTenKhachHang(yourName);
			user.setSoDienThoai(phoneNumber);
			user.seteMail(email);
			user.setDiaChi(address);
			UserDAO userDAO = new UserDAO();
			if (userDAO.update(conn, user, user.getTenTaiKhoan())) {
				System.out.print("Update user successfully");
				request.setAttribute("user", user);
				url="/views/web/checkout.jsp";
			}
			else {
				url="/views/web/EditUserInConfirmation.jsp";
			}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/confirmOrder.jsp");
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
