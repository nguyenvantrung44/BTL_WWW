package com.nhom3.dto;

import java.time.LocalDate;

public class NguoiDungDto {

	private Integer maNguoiDung;

	private String tenNguoiDung;
	private LocalDate ngaySinh;

	private String soCMND;

	private String soDienThoai;

	private String email;

	private String diaChi;

	private String trangThai;

	private String loaiNguoiDung;

	private String matKhau;

	public Integer getMaNguoiDung() {
		return maNguoiDung;
	}

	public void setMaNguoiDung(Integer maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}

	public String getTenNguoiDung() {
		return tenNguoiDung;
	}

	public void setTenNguoiDung(String tenNguoiDung) {
		this.tenNguoiDung = tenNguoiDung;
	}

	public LocalDate getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(LocalDate ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getSoCMND() {
		return soCMND;
	}

	public void setSoCMND(String soCMND) {
		this.soCMND = soCMND;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getLoaiNguoiDung() {
		return loaiNguoiDung;
	}

	public void setLoaiNguoiDung(String loaiNguoiDung) {
		this.loaiNguoiDung = loaiNguoiDung;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public NguoiDungDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NguoiDungDto(String tenNguoiDung, String soCMND, String soDienThoai, String email, String diaChi,
			String loaiNguoiDung, String matKhau) {
		super();
		this.tenNguoiDung = tenNguoiDung;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
		this.loaiNguoiDung = loaiNguoiDung;
		this.matKhau = matKhau;
	}

	/**
	 * @param tenNguoiDung
	 * @param ngaySinh
	 * @param soCMND
	 * @param soDienThoai
	 * @param email
	 * @param diaChi
	 * @param trangThai
	 * @param loaiNguoiDung
	 * @param matKhau
	 */
	public NguoiDungDto(String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai, String email,
			String diaChi, String trangThai, String loaiNguoiDung, String matKhau) {
		super();
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
		this.loaiNguoiDung = loaiNguoiDung;
		this.matKhau = matKhau;
	}

	public NguoiDungDto(Integer maNguoiDung, String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai,
			String email, String diaChi, String trangThai, String loaiNguoiDung, String matKhau) {
		super();
		this.maNguoiDung = maNguoiDung;
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
		this.loaiNguoiDung = loaiNguoiDung;
		this.matKhau = matKhau;
	}

	@Override
	public String toString() {
		return "NguoiDungDto [maNguoiDung=" + maNguoiDung + ", tenNguoiDung=" + tenNguoiDung + ", ngaySinh=" + ngaySinh
				+ ", soCMND=" + soCMND + ", soDienThoai=" + soDienThoai + ", email=" + email + ", diaChi=" + diaChi
				+ ", trangThai=" + trangThai + ", loaiNguoiDung=" + loaiNguoiDung + ", matKhau=" + matKhau + "]";
	}

	/**
	 * @param soCMND
	 * @param soDienThoai
	 * @param email
	 */
	public NguoiDungDto(String soCMND, String soDienThoai, String email) {
		super();
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
	}

	/**
	 * @param tenNguoiDung
	 * @param ngaySinh
	 * @param soCMND
	 * @param soDienThoai
	 * @param email
	 * @param diaChi
	 */
	public NguoiDungDto(String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai, String email,
			String diaChi) {
		super();
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
	}
	
	
	
	

}
