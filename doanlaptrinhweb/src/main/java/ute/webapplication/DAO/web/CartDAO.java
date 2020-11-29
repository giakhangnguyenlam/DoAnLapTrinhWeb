package ute.webapplication.DAO.web;

import java.sql.Connection;

import ute.webapplication.model.web.CartModel;
import ute.webapplication.model.web.ItemsModel;
import ute.webapplication.model.web.ProductModel;

public class CartDAO{
	
	public boolean addCart(Connection conn, Object obj, String codeProduct, int quantity)
	{
		
		ItemsModel item = new ItemsModel();
		CartModel cart = (CartModel)obj;
		ProductDAO productDAO = new ProductDAO();
		ProductModel product = productDAO.findProduct(conn, codeProduct);
//		item.setHinhanh(product.getHinhAnh());
		item.setHinhAnh(product.getHinhAnh());
		item.setMaSanPham(codeProduct);
//		item.setTensanpham(product.getTen());
		item.setTen(product.getTen());
		item.setGiaban(product.getGiaban());
		item.setSoluong(quantity);
		item.setThanhTien(item.getSoluong()*item.getGiaban());
		cart.getListItems().add(item);
		return true;
	}
	
	public boolean deleteCart(Connection conn, String codeProduct)
	{
		


		return false;
	}
	
	public ItemsModel findItems(Object obj, String codeProduct)
	{
		CartModel cart = (CartModel)obj;
		for (int i=0; i<cart.getListItems().size() ;i++)
		{
			ItemsModel item = (ItemsModel)cart.getListItems().get(i);
			if (codeProduct.equals(item.getMaSanPham())) {
				return item;
			}
		}
		return null;
	}
	
	public ItemsModel getItem(Object obj, int i)
	{
		CartModel cart = (CartModel)obj;
		return (ItemsModel)cart.getListItems().get(i);
	}
	
	
}
