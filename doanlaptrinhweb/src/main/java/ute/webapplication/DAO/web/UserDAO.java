package ute.webapplication.DAO.web;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import ute.webapplication.model.web.AccountModel;



public class UserDAO implements IObjectDAO {
	public static AccountModel findUser(Connection conn, String userName, String password) throws SQLException {
		String sql = "SELECT * FROM taikhoan Where tentaikhoan=? and matkhau=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String name = rs.getString(4);
			String gender = rs.getString(5);
			String phone = rs.getString(6);
			String email = rs.getString(7);
			Date birthDate = rs.getDate(8);
			String address = rs.getString(9);
			String role = rs.getString(10);
			AccountModel user = new AccountModel(userName, password, name, gender, phone, email, birthDate, address, role);
			return user;
		}
		return null;
	}

	public static AccountModel findUser(Connection conn, String userName) throws SQLException {

		String sql = "Select * from taikhoan where tentaikhoan = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString(3);
			String name = rs.getString(4);
			String gender = rs.getString(5);
			String phone = rs.getString(6);
			String email = rs.getString(7);
			Date birthDate = rs.getDate(8);
			String address = rs.getString(9);
			String role = rs.getString(10);
			AccountModel user = new AccountModel(userName, password, name, gender, phone, email, birthDate, address, role);
			return user;
		}
		return null;
	}

	@Override
	public boolean insert(Connection conn, Object obj) {
		String sql = "Insert into taikhoan(tentaikhoan, matkhau, tenkhachhang, gioitinh, sodienthoai, email, ngaysinh, diachi, vaitro) values(?,?,?,?,?,?,?,?,?)";
		AccountModel user = (AccountModel) obj;
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, user.getTenTaiKhoan());
			pstm.setString(2, user.getMatKhau());
			pstm.setString(3, user.getTenKhachHang());
			pstm.setString(4, user.getGioitinh());
			pstm.setString(5, user.getSoDienThoai());
			pstm.setString(6, user.geteMail());
			pstm.setDate(7, user.getNgaySinh());
			pstm.setString(8, user.getDiaChi());
			pstm.setString(9, user.getVaiTro());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean update(Connection conn, Object obj, String name) {
		String sql = "Update taikhoan set matkhau=?, tenkhachhang=?, gioitinh=?, sodienthoai=?, email=?, ngaysinh=?, diachi=? Where tentaikhoan=?";
		AccountModel user = (AccountModel)obj;
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, user.getMatKhau());
			pstm.setString(2, user.getTenKhachHang());
			pstm.setString(3, user.getGioitinh());
			pstm.setString(4, user.getSoDienThoai());
			pstm.setString(5, user.geteMail());
			pstm.setDate(6, user.getNgaySinh());
			pstm.setString(7, user.getDiaChi());
			pstm.setString(8, user.getTenTaiKhoan());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean delete(Connection conn, String name) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
		
	}
	
	

