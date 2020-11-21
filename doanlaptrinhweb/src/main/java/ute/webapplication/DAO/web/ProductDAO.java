package ute.webapplication.DAO.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import ute.webapplication.model.web.ProductModel;

public class ProductDAO implements IObjectDAO{
	
	public List<ProductModel> AllListProduct(Connection conn)
	{
		String sql = "Select * from sanpham";
		List<ProductModel> listProduct = new ArrayList<ProductModel>();
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String masanpham = rs.getString(1);
				String ten = rs.getString(2);
				String mota = rs.getString(3);
				float giaban = rs.getFloat(4);
				int soluong = rs.getInt(5);
				int nhacungcap = rs.getInt(6);
				String hinhanh = rs.getString(7);
				int soluongnhap = rs.getInt(8);
				int soluongban = rs.getInt(9);
				ProductModel oneProduct = new ProductModel();
				oneProduct.setMaSanPham(masanpham);
				oneProduct.setTen(ten);
				oneProduct.setMota(mota);
				oneProduct.setGiaban(giaban);
				oneProduct.setSoLuong(soluong);
				oneProduct.setNhaCungCap(nhacungcap);
				oneProduct.setHinhAnh(hinhanh);
				oneProduct.setSoLuongNhap(soluongnhap);
				oneProduct.setSoLuongBan(soluongban);
				listProduct.add(oneProduct);
			}
			return listProduct;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static ProductModel findProduct(Connection conn, String productCode)
	{
		String sql = "Select * from sanpham where masanpham=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				ProductModel product = new ProductModel();
				product.setTen(rs.getString(2));
				product.setMota(rs.getString(3));
				product.setGiaban(rs.getFloat(4));
				product.setSoLuong(rs.getInt(5));
				product.setNhaCungCap(rs.getInt(6));
				product.setHinhAnh(rs.getString(7));
				product.setSoLuongNhap(rs.getInt(8));
				product.setSoLuongBan(rs.getInt(9));
				return product;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	@Override
	public boolean insert(Connection conn, Object obj) {
		String sql = "Insert into sanpham(masanpham, ten, mota, giaban, soluong, nhacungcap, hinhanh, soluongnhap, soluongban) Values (?,?,?,?,?,?,?,?,?)";
		ProductModel product = (ProductModel)obj;
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, product.getMaSanPham());
			pstm.setString(2, product.getTen());
			pstm.setString(3, product.getMota());
			pstm.setFloat(4, product.getGiaban());
			pstm.setInt(5, product.getSoLuong());
			pstm.setInt(6, product.getNhaCungCap());
			pstm.setString(8, product.getHinhAnh());
			pstm.setInt(9, product.getSoLuongNhap());
			pstm.setInt(10, product.getSoLuongBan());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean update(Connection conn, Object obj, String name) {
		
		return false;
	}

	@Override
	public boolean delete(Connection conn, String name) {
		
		return false;
	}
	
	
}
