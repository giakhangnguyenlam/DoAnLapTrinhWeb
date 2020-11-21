package ute.webapplication.DAO.web;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import ute.webapplication.model.web.CartModel;
import ute.webapplication.model.web.ItemsModel;
import ute.webapplication.model.web.ProductModel;

public class CartDAO {
CartModel cart = new CartModel();
	
	public boolean addCart(Connection conn, String codeProduct)
	{
		
		ItemsModel item = new ItemsModel();
		List<ItemsModel> listItem = new ArrayList<ItemsModel>();
		ProductModel product = ProductDAO.findProduct(conn, codeProduct);
		item.setHinhanh(product.getHinhAnh());
		item.setTensanpham(product.getTen());
		item.setSoluong(product.getSoLuong());
		item.setGiaban(product.getGiaban());
		listItem.add(item);
		cart.setCart(listItem);
		return true;
	}
	
	public boolean deleteCart(Connection conn, String codeProduct)
	{
		


		return false;
	}
	
	public ItemsModel findItems(String codeProduct)
	{
		for (int i=0; i<cart.getCart().size() ;i++)
		{
			ItemsModel item = (ItemsModel)cart.getCart().get(i);
			if (codeProduct.equals(item.getMasanpham())) {
				return item;
			}
		}
		return null;
	}
	
	public ItemsModel getItem(int i)
	{
		return (ItemsModel)cart.getCart().get(i);
	}
	
	public int getSize()
	{
		return cart.getCart().size();
	}
	
}
