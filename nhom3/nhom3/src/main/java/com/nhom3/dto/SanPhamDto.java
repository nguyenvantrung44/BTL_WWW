package com.nhom3.dto;

import java.time.LocalDate;

import com.nhom3.entity.DanhMuc;
import com.nhom3.entity.NhaCungCap;

public class SanPhamDto {

	private Integer maSanPham;

	private String tenSanPham;
	private LocalDate ngaySanXuat;

	private String donViTinh;
	private int maDanhMuc;
	private String moTa;
	private long donGia;
	private int soLuongNhap;
	private String urlHinh;
	private String trangThai;
	private int maNhaCungCap;
	
	private DanhMuc danhMuc;
	private NhaCungCap nhaCungCap;
	
	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}

	public NhaCungCap getNhaCungCap() {
		return nhaCungCap;
	}

	public void setNhaCungCap(NhaCungCap nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
	}

	public int getMaNhaCungCap() {
		return maNhaCungCap;
	}

	public void setMaNhaCungCap(int maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}

	public Integer getMaSanPham() {
		return maSanPham;
	}
	
	public int getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(int maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public void setMaSanPham(Integer maSanPham) {
		this.maSanPham = maSanPham;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public LocalDate getNgaySanXuat() {
		return ngaySanXuat;
	}
	public void setNgaySanXuat(LocalDate ngaySanXuat) {
		this.ngaySanXuat = ngaySanXuat;
	}
	public String getDonViTinh() {
		return donViTinh;
	}
	public void setDonViTinh(String donViTinh) {
		this.donViTinh = donViTinh;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public long getDonGia() {
		return donGia;
	}
	public void setDonGia(long donGia) {
		this.donGia = donGia;
	}
	public int getSoLuongNhap() {
		return soLuongNhap;
	}
	public void setSoLuongNhap(int soLuongNhap) {
		this.soLuongNhap = soLuongNhap;
	}
	public String getUrlHinh() {
		return urlHinh;
	}
	public void setUrlHinh(String urlHinh) {
		this.urlHinh = urlHinh;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public SanPhamDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPhamDto(Integer maSanPham, String tenSanPham, LocalDate ngaySanXuat, String donViTinh, String moTa,
			long donGia, int soLuongNhap, String urlHinh, String trangThai) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.ngaySanXuat = ngaySanXuat;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
		this.trangThai = trangThai;
	}
	@Override
	public String toString() {
		return "SanPhamDto [maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham + ", ngaySanXuat=" + ngaySanXuat
				+ ", donViTinh=" + donViTinh + ", moTa=" + moTa + ", donGia=" + donGia + ", soLuongNhap=" + soLuongNhap
				+ ", urlHinh=" + urlHinh + ", trangThai=" + trangThai + "]";
	}
	public SanPhamDto(Integer maSanPham, String tenSanPham, LocalDate ngaySanXuat, String donViTinh, String moTa,
			long donGia, int soLuongNhap, String urlHinh) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.ngaySanXuat = ngaySanXuat;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
	}

	/**
	 * @param maSanPham
	 * @param tenSanPham
	 * @param ngaySanXuat
	 * @param donViTinh
	 * @param maDanhMuc
	 * @param moTa
	 * @param donGia
	 * @param soLuongNhap
	 * @param urlHinh
	 */
	public SanPhamDto(Integer maSanPham, String tenSanPham, String donViTinh, int maDanhMuc,
			String moTa, long donGia, int soLuongNhap, String urlHinh) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.donViTinh = donViTinh;
		this.maDanhMuc = maDanhMuc;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
	}
//	<th>Mã sản phẩm</th>
//	<th>Tên sản phẩm</th>
//	<th>Mô tả</th>
//	<th>Ngày sản xuất</th>
//	<th>Đơn vị tính</th>
//	<th>Đơn giá</th>
//	<th>Số lượng nhập</th>
//	<th>Tên danh mục</th>
//	<th>Tên nhà cung cấp</th>

	/**
	 * @param maSanPham
	 * @param tenSanPham
	 * @param ngaySanXuat
	 * @param donViTinh
	 * @param moTa
	 * @param donGia
	 * @param soLuongNhap
	 * @param danhMuc
	 * @param nhaCungCap
	 */
	
	public SanPhamDto(Integer maSanPham, String tenSanPham, LocalDate ngaySanXuat, String donViTinh, String moTa,
			long donGia, int soLuongNhap, DanhMuc danhMuc, NhaCungCap nhaCungCap) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.ngaySanXuat = ngaySanXuat;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.danhMuc = danhMuc;
		this.nhaCungCap = nhaCungCap;
	}

	/**
	 * @param maSanPham
	 * @param tenSanPham
	 * @param ngaySanXuat
	 * @param donViTinh
	 * @param moTa
	 * @param donGia
	 * @param soLuongNhap
	 * @param urlHinh
	 * @param trangThai
	 * @param danhMuc
	 * @param nhaCungCap
	 */
	public SanPhamDto(Integer maSanPham, String tenSanPham, LocalDate ngaySanXuat, String donViTinh, String moTa,
			long donGia, int soLuongNhap, String urlHinh, String trangThai, DanhMuc danhMuc, NhaCungCap nhaCungCap) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.ngaySanXuat = ngaySanXuat;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
		this.trangThai = trangThai;
		this.danhMuc = danhMuc;
		this.nhaCungCap = nhaCungCap;
	}

	/**
	 * @param tenSanPham
	 * @param donViTinh
	 * @param moTa
	 * @param donGia
	 * @param soLuongNhap
	 * @param urlHinh
	 * @param trangThai
	 * @param danhMuc
	 * @param nhaCungCap
	 */
	public SanPhamDto(Integer maSanPham,String tenSanPham, String donViTinh, String moTa, long donGia, int soLuongNhap, String urlHinh,
			String trangThai, DanhMuc danhMuc, NhaCungCap nhaCungCap) {
		super();
		this.maSanPham=maSanPham;
		this.tenSanPham = tenSanPham;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
		this.trangThai = trangThai;
		this.danhMuc = danhMuc;
		this.nhaCungCap = nhaCungCap;
		this.trangThai=trangThai;
	}
	public SanPhamDto(String tenSanPham, String donViTinh, String moTa, long donGia, int soLuongNhap, String urlHinh,
			String trangThai, DanhMuc danhMuc, NhaCungCap nhaCungCap) {
		super();
		this.tenSanPham = tenSanPham;
		this.donViTinh = donViTinh;
		this.moTa = moTa;
		this.donGia = donGia;
		this.soLuongNhap = soLuongNhap;
		this.urlHinh = urlHinh;
		this.trangThai = trangThai;
		this.danhMuc = danhMuc;
		this.nhaCungCap = nhaCungCap;
		this.trangThai=trangThai;
	}

	
}
