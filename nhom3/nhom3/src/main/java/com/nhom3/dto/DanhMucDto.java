package com.nhom3.dto;

import java.util.Objects;

public class DanhMucDto {

	private Integer maDanhMuc;
	private String tenDanhMuc;
	public Integer getMaDanhMuc() {
		return maDanhMuc;
	}
	public void setMaDanhMuc(Integer maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}
	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	/**
	 * @param maDanhMuc
	 * @param tenDanhMuc
	 */
	public DanhMucDto(Integer maDanhMuc, String tenDanhMuc) {
		super();
		this.maDanhMuc = maDanhMuc;
		this.tenDanhMuc = tenDanhMuc;
	}
	/**
	 * 
	 */
	public DanhMucDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param tenDanhMuc
	 */
	public DanhMucDto(String tenDanhMuc) {
		super();
		this.tenDanhMuc = tenDanhMuc;
	}
	@Override
	public String toString() {
		return "DanhMucDto [maDanhMuc=" + maDanhMuc + ", tenDanhMuc=" + tenDanhMuc + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(maDanhMuc, tenDanhMuc);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DanhMucDto other = (DanhMucDto) obj;
		return Objects.equals(maDanhMuc, other.maDanhMuc) && Objects.equals(tenDanhMuc, other.tenDanhMuc);
	}
	
	
}
