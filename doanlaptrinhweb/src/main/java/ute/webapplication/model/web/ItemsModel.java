package ute.webapplication.model.web;

public class ItemsModel extends ProductModel{
	
//	private String masanpham;
//	private String tensanpham;
//	private String hinhanh;
//	private  float giaban;
	private int soluong;
	private float thanhTien;
	
	public ItemsModel()
	{}

	
	public int getSoluong() {
		return soluong;
	}


	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	
	

	public float getThanhTien() {
		return thanhTien;
	}


	public void setThanhTien(float thanhTien) {
		this.thanhTien = thanhTien;
	}


	public ItemsModel(String maSanPham, String ten, String mota, float giaban, int soLuong, int nhaCungCap,
			String hinhAnh, int soLuongNhap, int soLuongBan) {
		super(maSanPham, ten, mota, giaban, soLuong, nhaCungCap, hinhAnh, soLuongNhap, soLuongBan);
		// TODO Auto-generated constructor stub
	}



	
	
	
	
	
//	public String getMasanpham() {
	//		return masanpham;
//	}
//
//	public void setMasanpham(String masanpham) {
//		this.masanpham = masanpham;
//	}
//
//	public String getTensanpham() {
//		return tensanpham;
//	}
//
//	public void setTensanpham(String tensanpham) {
//		this.tensanpham = tensanpham;
//	}
//
//	public String getHinhanh() {
//		return hinhanh;
//	}
//
//	public void setHinhanh(String hinhanh) {
//		this.hinhanh = hinhanh;
//	}
//
//	public float getGiaban() {
//		return giaban;
//	}
//
//	public void setGiaban(float giaban) {
//		this.giaban = giaban;
//	}
	
	

//	public ItemsModel(String masanpham, String tensanpham, String hinhanh, float giaban, int soluong) {
//		super();
//		this.masanpham = masanpham;
//		this.tensanpham = tensanpham;
//		this.hinhanh = hinhanh;
//		this.giaban = giaban;
//		this.soluong = soluong;
//	}

	

	
	
}
