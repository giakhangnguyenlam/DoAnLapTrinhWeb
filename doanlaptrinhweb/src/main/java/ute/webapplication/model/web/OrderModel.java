package ute.webapplication.model.web;

public class OrderModel {
	String maSanPham;
	String ten;
	int giadagiam;
	int giaban;
	int soLuong;
	int nhaCungCap;
	int maLoai;
	String hinhAnh;
	int soLuongNhap;
	int soLuongBan;
	
	
	
	public OrderModel(String maSanPham, String ten, int giadagiam, int giaban, int soLuong, int nhaCungCap, int maLoai,
			String hinhAnh, int soLuongNhap, int soLuongBan) {
		super();
		this.maSanPham = maSanPham;
		this.ten = ten;
		this.giadagiam = giadagiam;
		this.giaban = giaban;
		this.soLuong = soLuong;
		this.nhaCungCap = nhaCungCap;
		this.maLoai = maLoai;
		this.hinhAnh = hinhAnh;
		this.soLuongNhap = soLuongNhap;
		this.soLuongBan = soLuongBan;
	}
	public String getMaSanPham() {
		return maSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public int getGiadagiam() {
		return giadagiam;
	}
	public void setGiadagiam(int giadagiam) {
		this.giadagiam = giadagiam;
	}
	public int getGiaban() {
		return giaban;
	}
	public void setGiaban(int giaban) {
		this.giaban = giaban;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int getNhaCungCap() {
		return nhaCungCap;
	}
	public void setNhaCungCap(int nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
	}
	public int getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public int getSoLuongNhap() {
		return soLuongNhap;
	}
	public void setSoLuongNhap(int soLuongNhap) {
		this.soLuongNhap = soLuongNhap;
	}
	public int getSoLuongBan() {
		return soLuongBan;
	}
	public void setSoLuongBan(int soLuongBan) {
		this.soLuongBan = soLuongBan;
	}
	
	
	
	
}
