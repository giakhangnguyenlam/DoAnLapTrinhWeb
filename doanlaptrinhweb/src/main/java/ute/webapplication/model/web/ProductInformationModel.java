package ute.webapplication.model.web;

public class ProductInformationModel {
	String maSP;
	String moTa;
	String hinhAnhChiTiet;
	
	
	
	
	public ProductInformationModel(String maSP, String moTa, String hinhAnhChiTiet) {
		super();
		this.maSP = maSP;
		this.moTa = moTa;
		this.hinhAnhChiTiet = hinhAnhChiTiet;
	}
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getHinhAnhChiTiet() {
		return hinhAnhChiTiet;
	}
	public void setHinhAnhChiTiet(String hinhAnhChiTiet) {
		this.hinhAnhChiTiet = hinhAnhChiTiet;
	}
	
}
