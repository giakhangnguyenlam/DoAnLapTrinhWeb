package ute.webapplication.model.web;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import net.bytebuddy.implementation.bind.annotation.Super;
@Entity 
@Table(name="sanpham")
public class ProductModelWithHibernate {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="masanpham")
	private String maSanPham;
	@Column(name="ten")
	private String ten;
	@Column(name="mota")
	private String mota;
	@Column(name="giaban")
	private float giaban;
	@Column(name="soluong")
	private int soLuong;
	@Column(name="nhacungcap")
	private int nhaCungCap;
	@Column(name="hinhanh")
	private String hinhAnh;
	@Column(name="soluongnhap")
	private int soLuongNhap;
	@Column(name="soluongban")
	private int soLuongBan;
	public ProductModelWithHibernate()
	{
		super();
	}
	public ProductModelWithHibernate(String maSanPham, String ten, String mota, float giaban, int soLuong, int nhaCungCap,
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
	
	
}
