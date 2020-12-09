package ute.webapplication.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.webapplication.DAO.web.ProductDAO;
import ute.webapplication.model.web.AccountModel;
import ute.webapplication.model.web.CartModel;
import ute.webapplication.model.web.ProductModel;
import ute.webapplication.utils.web.MyUtils;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
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
		
		int pageSize = 6;
		int endPage = 0;
		int count = 0;
		int index;
		if (request.getParameter("index") == null) {
			index=1;
		}
		else {
			index = Integer.parseInt(request.getParameter("index").trim());
		}
		

		String idProduct = request.getParameter("idProduct").trim();
		List<ProductModel> listProduct;
		ProductDAO productDAO = new ProductDAO();
		if (idProduct.equals(null)) {			
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request));
			request.setAttribute("listProduct", listProduct);
		}
		else if (idProduct.equals("computer")) {
			//List<ProductModel> listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "LT%");
			//request.setAttribute("listProduct", listProduct);
			count = productDAO.Count(MyUtils.getStoredConnection(request), "LT%");
			listProduct = productDAO.searchSixProducts(MyUtils.getStoredConnection(request), "LT%", index, pageSize);
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request));
			request.setAttribute("listProduct", listProduct);	
		}
		else if (idProduct.equals("computer")) {
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "LT%");
			request.setAttribute("listProduct", listProduct);	
		}
		else if (idProduct.equals("accessories")) {
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "Acc%");
			request.setAttribute("listProduct", listProduct);
		}
		else if (idProduct.equals("LTApple")){
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "LTApple%");
			request.setAttribute("listProduct", listProduct);
		}
		else if (idProduct.equals("LTAcer")){
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "LTAcer%");
			request.setAttribute("listProduct", listProduct);
		}
		else if (idProduct.equals("LTAssus")) {
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "LTAssus%");
			request.setAttribute("listProduct", listProduct);
		}
		else if (idProduct.equals("ram")){
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "AccRam%");
			request.setAttribute("listProduct", listProduct);
		}
		else if(idProduct.equals("cpu")){
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "AccCPU%");
			request.setAttribute("listProduct", listProduct);
		}
		else if(idProduct.equals("harddrive")){
			listProduct = productDAO.AllListProduct(MyUtils.getStoredConnection(request), "AccHD%");
			request.setAttribute("listProduct", listProduct);
		}
		else {
			listProduct = null;
		}
		
		String searchName = request.getParameter("search");
		if (searchName!=null) {
			
		}
		
		
		
		endPage = count / pageSize ;
		if (count % pageSize != 0 ) {
			endPage++;
		}

		request.setAttribute("idProduct", idProduct);
		request.setAttribute("index", index);
		request.setAttribute("listProduct", listProduct);
		request.setAttribute("end", endPage);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/products.jsp");
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
