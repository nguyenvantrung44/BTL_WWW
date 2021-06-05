package com.nhom3.entity;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NguoiDung")
public class NguoiDung implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maNguoiDung;
	@Column(columnDefinition = "nvarchar(255)")
 
	private String tenNguoiDung;
	private LocalDate ngaySinh;
	@Column(columnDefinition = "nvarchar(255)")
	 
	private String soCMND;
	@Column(columnDefinition = "nvarchar(255)")
	 
	private String soDienThoai;
	@Column(columnDefinition = "nvarchar(255)")
	 
	private String email;
	@Column(columnDefinition = "nvarchar(255)")
	 
	private String diaChi;
	@Column(columnDefinition = "nvarchar(255)")
	private String trangThai;
	@Column(name = "LoaiNguoiDung")
	private String loaiNguoiDung;
	@Column(name = "matKhau")
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

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maNguoiDung == null) ? 0 : maNguoiDung.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NguoiDung other = (NguoiDung) obj;
		if (maNguoiDung == null) {
			if (other.maNguoiDung != null)
				return false;
		} else if (!maNguoiDung.equals(other.maNguoiDung))
			return false;
		return true;
	}

	public NguoiDung(Integer maNguoiDung, String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai,
			String email, String diaChi, String trangThai) {
		super();
		this.maNguoiDung = maNguoiDung;
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
		this.trangThai = trangThai;
	}

	public NguoiDung(String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai, String email,
			String diaChi ,String matKhau ) {
		super();
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi; 
		this.matKhau = matKhau;
	}

	public NguoiDung(String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai, String email,
			String diaChi, String loaiNguoiDung, String matKhau) {
		super();
		this.tenNguoiDung = tenNguoiDung;
		this.ngaySinh = ngaySinh;
		this.soCMND = soCMND;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
		this.loaiNguoiDung = loaiNguoiDung;
		this.matKhau = matKhau;
	}

	public NguoiDung() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "NguoiDung [maNguoiDung=" + maNguoiDung + ", tenNguoiDung=" + tenNguoiDung + ", ngaySinh=" + ngaySinh
				+ ", soCMND=" + soCMND + ", soDienThoai=" + soDienThoai + ", email=" + email + ", diaChi=" + diaChi
				+ ", trangThai=" + trangThai + ", loaiNguoiDung=" + loaiNguoiDung + ", matKhau=" + matKhau + "]";
	}

	/**
	 * @param maNguoiDung
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
	public NguoiDung(Integer maNguoiDung, String tenNguoiDung, LocalDate ngaySinh, String soCMND, String soDienThoai,
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

}
