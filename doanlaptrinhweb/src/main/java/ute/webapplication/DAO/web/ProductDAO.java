package ute.webapplication.DAO.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.naming.directory.SearchControls;

import ute.webapplication.model.web.DetailLaptopModel;
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
	
	
	public List<ProductModel> AllListProduct(Connection conn, String productCode)
	{
		String sql = "Select * from sanpham Where masanpham like ?";
		List<ProductModel> listProduct = new ArrayList<ProductModel>();
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, productCode);
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
	
	
	public ProductModel findProduct(Connection conn, String productCode)
	{
		String sql = "Select * from sanpham where masanpham=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, productCode);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				ProductModel product = new ProductModel();
				product.setMaSanPham(productCode);
				product.setTen(rs.getString(2));
				product.setMota(rs.getString(3));
				product.setGiaban(rs.getFloat(4));
				product.setSoLuong(rs.getInt(5));
				product.setNhaCungCap(rs.getInt(6));
				product.setHinhAnh(rs.getString(7));
				product.setSoLuongNhap(rs.getInt(8));
				product.setSoLuongBan(rs.getInt(9));
				product.setTenNhaCungCap(nameOfBrand(conn, product.getNhaCungCap()));
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
	
	public String nameOfBrand(Connection conn, int codeBrand) throws SQLException
	{
		String sql = "Select * from nhacungcap Where manhacungcap = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, codeBrand);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String nameOfBrand = rs.getString(2);
			return nameOfBrand;	
		}
		return null;
	}
	
	public DetailLaptopModel detailLaptop(Connection conn, String codeProduct)
	{
		String sql = "Select * from thongtinchitietlaptop where masanpham=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, codeProduct);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				DetailLaptopModel detailLaptop = new DetailLaptopModel();
				detailLaptop.setBaoHanh(rs.getInt(2));
				detailLaptop.setMauSac(rs.getString(3));
				detailLaptop.setSeriesLaptop(rs.getString(4));
				detailLaptop.setPartNumber(rs.getString(5));
				detailLaptop.setTheHeCPU(rs.getString(6));
				detailLaptop.setCpu(rs.getString(7));
				detailLaptop.setChipDoHoa(rs.getString(8));
				detailLaptop.setRam(rs.getString(9));
				detailLaptop.setManHinh(rs.getString(10));
				detailLaptop.setLuuTru(rs.getString(11));
				detailLaptop.setSoCongLuuTruToiDa(rs.getString(12));
				detailLaptop.setKieuKheM2HoTro(rs.getString(13));
				detailLaptop.setCongKetNoi(rs.getString(14));
				detailLaptop.setKetNoiKhongDay(rs.getString(15));
				detailLaptop.setBanPhim(rs.getString(16));
				detailLaptop.setHeDieuHanh(rs.getString(17));
				detailLaptop.setKichThuoc(rs.getString(18));
				detailLaptop.setPin(rs.getString(19));
				detailLaptop.setKhoiLuong(rs.getString(20));
				detailLaptop.setBaoMat(rs.getString(21));
				detailLaptop.setDenLedTrenMay(rs.getString(22));
				detailLaptop.setPhuKienDiKem(rs.getString(23));
				return detailLaptop;		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
	
	public int Count(Connection conn, String productCode)
	{
		String sql = "Select count(*) from sanpham Where masanpham like ?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, productCode);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	public List<ProductModel> searchSixProducts(Connection conn, String productCode, int index, int size)
	{
		String sql = "select * \r\n"
				+ "From (Select row_number() over (order by masanpham asc) as id, masanpham, ten, mota, giaban, soluong, nhacungcap, hinhanh, soluongnhap, soluongban \r\n"
				+ "	from sanpham\r\n"
				+ "	Where masanpham like ?) as temp\r\n"
				+ "where id between ?*6-5 and ?*6";
		List<ProductModel> listProduct = new ArrayList<ProductModel>();
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, productCode);
			pstm.setInt(2, index);
			pstm.setInt(3, index);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String masanpham = rs.getString(2);
				String ten = rs.getString(3);
				String mota = rs.getString(4);
				float giaban = rs.getFloat(5);
				int soluong = rs.getInt(6);
				int nhacungcap = rs.getInt(7);
				String hinhanh = rs.getString(8);
				int soluongnhap = rs.getInt(9);
				int soluongban = rs.getInt(10);
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
		}
		return null;
	}
	
	
	public List<String> search(Connection conn, String keyword)
	{
		List<String> names = new ArrayList<String>();
		List<ProductModel> allProduct = AllListProduct(conn);
		for (ProductModel product : allProduct) {
			if (product.getTen().toLowerCase().contains(keyword.toLowerCase())) {
				names.add(product.getTen());
			}
		}
		return names;
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
