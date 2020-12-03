package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.UserDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.services.web.UserAccount;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class AdminUser
 */
@WebServlet("/AdminUser")
public class AdminUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		System.out.print(action);
		String tentaikhoan=request.getParameter("tentaikhoan");
		String url="";
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		
		if (user != null) {
		if(action.equals("Update"))
		{
			AccountModel userFind=new AccountModel();
			try {
				userFind=UserDAO.findUser(MyUtils.getStoredConnection(request), tentaikhoan);
				request.setAttribute("username", user.getTenTaiKhoan());
				request.setAttribute("userFind", userFind);
				if(userFind==null)
				{
					System.out.println(tentaikhoan);
				}
				url="/views/admin/editUser.jsp";	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else if(action.equals("Remove"))
		{
			UserDAO dao=new UserDAO();
			dao.delete(MyUtils.getStoredConnection(request), tentaikhoan);
			url="/views/admin/UserView.jsp";
		}
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
	protected void UpdateUserAdmin(HttpServletRequest request,HttpServletResponse response,String url,AccountModel user) throws ServletException,IOException
	{
		String yourName = request.getParameter("yourname").trim();
		String phoneNumber = request.getParameter("phonenumber").trim();
		String email = request.getParameter("email").trim();
		String address = request.getParameter("address").trim();
		String password = request.getParameter("password").trim();		
		String gender = request.getParameter("gender");
		String birthDateDay = request.getParameter("birthdateDay");
		String birthDateMonth = request.getParameter("birthdateMonth");
		String birthDateYear = request.getParameter("birthdateYear");
		Date birthDate = Date.valueOf(birthDateYear+"-"+birthDateMonth+"-"+birthDateDay);
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
		if (UserAccount.checkPassword(password) == false) {
			hasError=true;
			request.setAttribute("passwordError", "You have to enter your password");
		}
		if (hasError) {
			url="/views/web/register.jsp";
		}
		else {
			Connection conn = MyUtils.getStoredConnection(request);
			user.setMatKhau(password);
			user.setTenKhachHang(yourName);
			user.setGioitinh(gender);
			user.setSoDienThoai(phoneNumber);
			user.seteMail(email);
			user.setNgaySinh(birthDate);
			user.setDiaChi(address);
			UserDAO userDAO = new UserDAO();
			if (userDAO.update(conn, user, user.getTenTaiKhoan())) {
				System.out.print("Update user successfully");
				
				url="/views/admin/UserView.jsp";
			}
			else {
				request.setAttribute("username", user.getTenTaiKhoan());
				request.setAttribute("userFind", user);
				url="/views/admin/editUser.jsp";
			}
		}

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
