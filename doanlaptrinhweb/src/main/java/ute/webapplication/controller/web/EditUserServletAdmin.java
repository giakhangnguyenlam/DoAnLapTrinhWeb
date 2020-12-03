package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

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
 * Servlet implementation class EditUserServletAdmin
 */
@WebServlet("/EditUserServletAdmin")
public class EditUserServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		String url="";
		if(action.equals("Insert"))
		{
			url=Insert(request, response);
		}
		else if(action.equals("Update"))
		{
			url=Update(request, response);
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
	protected String Update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tentaikhoan=request.getParameter("tentaikhoan");
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
		AccountModel userFind=new AccountModel();
		String url="";
		try {
			userFind=UserDAO.findUser(MyUtils.getStoredConnection(request), tentaikhoan);
			if(userFind!=null)
			{
				System.out.println(tentaikhoan);
			}	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		boolean hasError=false;
		if (UserAccount.checkName(yourName) == false) {
			System.out.println("checkName");
			hasError=true;
			request.setAttribute("yourNameError", "You have to enter your name");
		}
		if (UserAccount.checkPhoneNumber(phoneNumber) == false) {
			System.out.println("checkPhoneNumber");
			hasError=true;
			request.setAttribute("phoneumberError", "Phone number have 10 digits");
		}
		if (UserAccount.checkEmail(email) == false) {
			System.out.println("checkEmail");
			hasError=true;
			request.setAttribute("emailError", "Incorrect! Example: abc@xyz");
		}
		if (UserAccount.checkAddress(address) == false) {
			System.out.println("checkAddress");
			hasError=true;
			request.setAttribute("addressError", "You have to enter your address");
		}
		if (UserAccount.checkPassword(password) == false) {
			System.out.println("checkPassword");
			hasError=true;
			request.setAttribute("passwordError", "You have to enter your password");
		}
		if (hasError) {
			request.setAttribute("username", userFind.getTenTaiKhoan());
			request.setAttribute("userFind", userFind);
			url="/views/admin/editUser.jsp";
		}
		else {
			Connection conn = MyUtils.getStoredConnection(request);
			userFind.setMatKhau(password);
			userFind.setTenKhachHang(yourName);
			userFind.setGioitinh(gender);
			userFind.setSoDienThoai(phoneNumber);
			userFind.seteMail(email);
			userFind.setNgaySinh(birthDate);
			userFind.setDiaChi(address);
			UserDAO userDAO = new UserDAO();
			if (userDAO.update(conn, userFind,userFind.getTenTaiKhoan())) {
				System.out.print("Update user successfully");
				request.setAttribute("username", userFind.getTenTaiKhoan());
				request.setAttribute("userFind", userFind);
				ArrayList<AccountModel> listUser=UserDAO.AllListProduct(MyUtils.getStoredConnection(request));
				if(listUser.size()==1)
				{
					System.out.println("co 1 thang thoi");
				}
				else
				{
					request.setAttribute("listUser", listUser);
				
				}
				url="/views/admin/UserView.jsp";
				}
			else {

				System.out.print("Update user unsuccess");
			}
		}
		return url;
	}
	protected String Insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName= request.getParameter("username").trim();
		String yourName = request.getParameter("yourname").trim();
		String phoneNumber = request.getParameter("phonenumber").trim();
		String email = request.getParameter("email").trim();
		String address = request.getParameter("address").trim();
		String password = request.getParameter("password").trim();		
		String confirmPassword = request.getParameter("confirmpassword").trim();
		String gender = request.getParameter("gender");
		String birthDateDay = request.getParameter("birthdateDay");
		String birthDateMonth = request.getParameter("birthdateMonth");
		String birthDateYear = request.getParameter("birthdateYear");
		String url="";
		Date birthDate = Date.valueOf(birthDateYear+"-"+birthDateMonth+"-"+birthDateDay);
		//java.sql.Date birthDate = new java.sql.Date(util_BirthDate.get);
		
		boolean hasError=false;
		if (UserAccount.checkUserName(userName) == false) {
			hasError=true;
			request.setAttribute("userNameError", "You have to enter user name");
		}
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
		if (UserAccount.checkPhoneNumber(phoneNumber) == false) {
			hasError=true;
			request.setAttribute("phoneNumberError", "Phone number have 10 digits");
		}
		if (UserAccount.checkAddress(address) == false) {
			hasError=true;
			request.setAttribute("addressError", "You have to enter your address");
		}
		if (UserAccount.checkPassword(password) == false) {
			hasError=true;
			request.setAttribute("passwordError", "You have to enter your password");
		}
		if (UserAccount.checkConfirmPassword(confirmPassword) == false) {
			hasError=true;
			request.setAttribute("passwordError", "You have to enter password again");
		}
		if (UserAccount.checkTheSamePassword(password, confirmPassword) == false) {
			hasError=true;
			request.setAttribute("passwordError", "Password and confirmPassword are diffrences");
		}
		if (hasError) {
			url="/views/admin/UserView.jsp";
		}
		else {
			Connection conn = MyUtils.getStoredConnection(request);
			AccountModel user = new AccountModel();
			user.setTenTaiKhoan(userName);
			user.setMatKhau(password);
			user.setTenKhachHang(yourName);
			user.setGioitinh(gender);
			user.setSoDienThoai(phoneNumber);
			user.seteMail(email);
			user.setNgaySinh(birthDate);
			user.setDiaChi(address);
			user.setVaiTro("user");
			UserDAO userDAO =  new UserDAO();
			if (userDAO.insert(conn, user)) {
				System.out.print("Chạy vô tới đây");
				ArrayList<AccountModel> listUser=UserDAO.AllListProduct(MyUtils.getStoredConnection(request));
				if(listUser.size()==1)
				{
					System.out.println("co 1 thang thoi");
				}
				else
				{
					request.setAttribute("listUser", listUser);
				
				}
				url="/views/admin/UserView.jsp";
			}
			else {
				url="/views/admin/AddNewUser.jsp";
			}
			
		}
		return url;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
