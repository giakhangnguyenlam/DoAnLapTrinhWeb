package ute.webapplication.model.web;

public class ProductModel {
	String maSanPham;
	String ten;
	String mota;
	float giaban;
	int soLuong;
	int nhaCungCap;
	String hinhAnh;
	int soLuongNhap;
	int soLuongBan;
	
	public ProductModel()
	{
		
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

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public float getGiaban() {
		return giaban;
	}

	public void setGiaban(float giaban) {
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

	public ProductModel(String maSanPham, String ten, String mota, float giaban, int soLuong, int nhaCungCap,
			String hinhAnh, int soLuongNhap, int soLuongBan) {
		super();
		this.maSanPham = maSanPham;
		this.ten = ten;
		this.mota = mota;
		this.giaban = giaban;
		this.soLuong = soLuong;
		this.nhaCungCap = nhaCungCap;
		this.hinhAnh = hinhAnh;
		this.soLuongNhap = soLuongNhap;
		this.soLuongBan = soLuongBan;
	}
	
	
	
	
	
	
}
