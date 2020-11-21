package ute.webapplication.model.web;

public class ItemsModel {
	
	String masanpham;
	String tensanpham;
	String hinhanh;
	float giaban;
	int soluong;
	
	public ItemsModel()
	{}

	public String getMasanpham() {
		return masanpham;
	}

	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public float getGiaban() {
		return giaban;
	}

	public void setGiaban(float giaban) {
		this.giaban = giaban;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public ItemsModel(String masanpham, String tensanpham, String hinhanh, float giaban, int soluong) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.hinhanh = hinhanh;
		this.giaban = giaban;
		this.soluong = soluong;
	}

	

	
	
}
