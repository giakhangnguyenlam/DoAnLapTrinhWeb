package ute.webapplication.model.web;

import java.sql.Date;
import java.util.List;

public class ProductModel {
	int maDonHang;
	String tenKhachHang;
	List<Integer> danhSachMaSanPham;
	List<String> danhSachTenSanPham;
	int tongSoLuong;
	int tongTien;
	Date ngayMua;
	String diaChi;
	int soDienThoai;
	String email;
	String tinhTrangDonHang;
	
	
	
	
	public ProductModel(int maDonHang, String tenKhachHang, List<Integer> danhSachMaSanPham, List<String> danhSachTenSanPham,
			int tongSoLuong, int tongTien, Date ngayMua, String diaChi, int soDienThoai, String email,
			String tinhTrangDonHang) {
		super();
		this.maDonHang = maDonHang;
		this.tenKhachHang = tenKhachHang;
		this.danhSachMaSanPham = danhSachMaSanPham;
		this.danhSachTenSanPham = danhSachTenSanPham;
		this.tongSoLuong = tongSoLuong;
		this.tongTien = tongTien;
		this.ngayMua = ngayMua;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.tinhTrangDonHang = tinhTrangDonHang;
	}
	public int getMaDonHang() {
		return maDonHang;
	}
	public void setMaDonHang(int maDonHang) {
		this.maDonHang = maDonHang;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public List<Integer> getDanhSachMaSanPham() {
		return danhSachMaSanPham;
	}
	public void setDanhSachMaSanPham(List<Integer> danhSachMaSanPham) {
		this.danhSachMaSanPham = danhSachMaSanPham;
	}
	public List<String> getDanhSachTenSanPham() {
		return danhSachTenSanPham;
	}
	public void setDanhSachTenSanPham(List<String> danhSachTenSanPham) {
		this.danhSachTenSanPham = danhSachTenSanPham;
	}
	public int getTongSoLuong() {
		return tongSoLuong;
	}
	public void setTongSoLuong(int tongSoLuong) {
		this.tongSoLuong = tongSoLuong;
	}
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public int getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(int soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}
	public void setTinhTrangDonHang(String tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}
	
}
