package com.nhom3.dto;


public class NhaCungCapDto {
	private Integer maNhaCungCap;
	private String tenNhaCungCap;
	private String diaChi;
	public Integer getMaNhaCungCap() {
		return maNhaCungCap;
	}
	public void setMaNhaCungCap(Integer maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}
	public String getTenNhaCungCap() {
		return tenNhaCungCap;
	}
	public void setTenNhaCungCap(String tenNhaCungCap) {
		this.tenNhaCungCap = tenNhaCungCap;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @param maNhaCungCap
	 * @param tenNhaCungCap
	 * @param diaChi
	 */
	public NhaCungCapDto(Integer maNhaCungCap, String tenNhaCungCap, String diaChi) {
		super();
		this.maNhaCungCap = maNhaCungCap;
		this.tenNhaCungCap = tenNhaCungCap;
		this.diaChi = diaChi;
	}
	/**
	 * 
	 */
	public NhaCungCapDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
