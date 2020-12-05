package ute.webapplication.model.web;

import java.sql.Date;
import java.util.List;

public class CartModel {

	private List<ItemsModel> listItems;
	private AccountModel user;
	private Date ngayMuaHang;
	private float tongTien;
	private String sanpham;
	private String tinhTrangDonHang;
	
	public CartModel()
	{}
	
	
	public String getSanpham() {
		return sanpham;
	}





	public void setSanpham(String sanpham) {
		this.sanpham = sanpham;
	}





	public List<ItemsModel> getListItems() {
		return listItems;
	}


	public void setListItems(List<ItemsModel> listItems) {
		this.listItems = listItems;
	}


	public AccountModel getUser() {
		return user;
	}
	public void setUser(AccountModel user) {
		this.user = user;
	}
	public Date getNgayMuaHang() {
		return ngayMuaHang;
	}
	public void setNgayMuaHang(Date ngayMuaHang) {
		this.ngayMuaHang = ngayMuaHang;
	}
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	public String getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}
	public void setTinhTrangDonHang(String tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}


	public CartModel(List<ItemsModel> listItems, AccountModel user, Date ngayMuaHang, float tongTien,
			String tinhTrangDonHang) {
		super();
		this.listItems = listItems;
		this.user = user;
		this.ngayMuaHang = ngayMuaHang;
		this.tongTien = tongTien;
		this.tinhTrangDonHang = tinhTrangDonHang;
	}


	
	
	
	
}
