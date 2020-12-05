package ute.webapplication.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
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
import ute.webapplication.model.web.ItemsModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class ConfirmOrderServlet
 */
@WebServlet("/confirmOrderServlet")
public class ConfirmOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartModel cart = MyUtils.getCartUser(request.getSession());
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat forratter = new SimpleDateFormat("yyyy-MM-dd");
		String date = forratter.format(calendar.getTime());
		cart.setNgayMuaHang(Date.valueOf(date));
		String items = "";
		for(int i=0;i<cart.getListItems().size();i++)
		{
			items = items + cart.getListItems().get(i).getTen() + "(" + cart.getListItems().get(i).getSoluong()+")" + ",";
		}
		cart.setSanpham(items);
		float totalCost = 0 ;
		for (int i = 0; i < cart.getListItems().size(); i++) {
			totalCost = totalCost + cart.getListItems().get(i).getGiaban()*cart.getListItems().get(i).getSoluong();
		}
		cart.setTongTien(totalCost);
		cart.setTinhTrangDonHang("Đang chờ xử lý");
		CartDAO cartDAO = new CartDAO();
		String url = "";
		if (cartDAO.storeCartInDB(MyUtils.getStoredConnection(request), cart)) {
			System.out.print("Stored in DB succesfully");
			List<ItemsModel> listItems = new ArrayList<ItemsModel>();
			cart.setListItems(listItems);
			url="/views/web/checkout.jsp";
		}
		else {
			System.out.print("Failured");
		}
		RequestDispatcher rd  = getServletContext().getRequestDispatcher(url);
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
