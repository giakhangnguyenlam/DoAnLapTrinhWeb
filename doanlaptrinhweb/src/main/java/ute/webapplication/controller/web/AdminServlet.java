package ute.webapplication.controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.UserDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionAdmin=request.getParameter("actionAdmin");
		String action=request.getParameter("action");
		String url="";
		AccountModel user = MyUtils.getLoginedUser(request.getSession());
		if (user != null) {
			if(actionAdmin.equals("ViewUser"))
			{
				ArrayList<AccountModel> listUser=UserDAO.AllListProduct(MyUtils.getStoredConnection(request));
				if(listUser.size()==1)
				{
					System.out.println("co 1 thang thoi");
				}
				else
				{
					request.setAttribute("listUser", listUser);
					url="/views/admin/UserView.jsp";
				}
				
			}
			else if(actionAdmin.equals("ViewProduct"))
			{
			}
			else if(actionAdmin.equals("ViewSupplier"))
			{
				
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
