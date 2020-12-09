package ute.webapplication.DAO.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
	
	public boolean deleteCart(Connection conn, Object obj, String codeProduct)
	{
		CartModel cart = (CartModel)obj;
		for (int i = 0; i < cart.getListItems().size(); i++) {
			if (codeProduct.equals(cart.getListItems().get(i).getMaSanPham())) {
				cart.getListItems().remove(i);
				return true;
			}
		}

		return false;
	}
	
	public boolean updateCart(Connection conn, Object obj, String codeProduct, int quantity)
	{
		CartModel cart = (CartModel)obj;
		for (int i = 0; i < cart.getListItems().size(); i++) {
			if (codeProduct.equals(cart.getListItems().get(i).getMaSanPham())) {
				cart.getListItems().get(i).setSoluong(quantity);
				cart.getListItems().get(i).setThanhTien(cart.getListItems().get(i).getSoluong()*cart.getListItems().get(i).getGiaban());
				return true;
			}
		}
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
	
	public boolean storeCartInDB(Connection conn, Object obj)
	{
		CartModel cart = (CartModel)obj;
		String sql = "Insert into donhang(ngaymua, sanpham, tongtien, trangthaidonhang, tentaikhoan) Values (?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setDate(1, cart.getNgayMuaHang());
			pstm.setString(2, cart.getSanpham());
			pstm.setFloat(3, cart.getTongTien());
			pstm.setString(4, cart.getTinhTrangDonHang());
			pstm.setString(5, cart.getUser().getTenTaiKhoan());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
