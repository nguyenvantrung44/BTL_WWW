package com.nhom3.dto;

import java.time.LocalDate;
import java.util.List;


import com.nhom3.entity.ChiTietDonHang;
import com.nhom3.entity.NguoiDung;

public class DonHangDto {
	private Integer maDonHang;
	private LocalDate ngayLap;
	private NguoiDung khachHang;
	private List<ChiTietDonHang> chiTietDonHangs;
	public Integer getMaDonHang() {
		return maDonHang;
	}
	public void setMaDonHang(Integer maDonHang) {
		this.maDonHang = maDonHang;
	}
	public LocalDate getNgayLap() {
		return ngayLap;
	}
	public void setNgayLap(LocalDate ngayLap) {
		this.ngayLap = ngayLap;
	}
	public NguoiDung getKhachHang() {
		return khachHang;
	}
	public void setKhachHang(NguoiDung khachHang) {
		this.khachHang = khachHang;
	}
	public List<ChiTietDonHang> getChiTietDonHangs() {
		return chiTietDonHangs;
	}
	public void setChiTietDonHangs(List<ChiTietDonHang> chiTietDonHangs) {
		this.chiTietDonHangs = chiTietDonHangs;
	}
	@Override
	public String toString() {
		return "DonHangDto [maDonHang=" + maDonHang + ", ngayLap=" + ngayLap + ", khachHang=" + khachHang
				+ ", chiTietDonHangs=" + chiTietDonHangs + "]";
	}
	/**
	 * @param maDonHang
	 * @param ngayLap
	 * @param khachHang
	 * @param chiTietDonHangs
	 */
	public DonHangDto(Integer maDonHang, LocalDate ngayLap, NguoiDung khachHang, List<ChiTietDonHang> chiTietDonHangs) {
		super();
		this.maDonHang = maDonHang;
		this.ngayLap = ngayLap;
		this.khachHang = khachHang;
		this.chiTietDonHangs = chiTietDonHangs;
	}
	
	/**
	 * @param maDonHang
	 * @param ngayLap
	 * @param khachHang
	 */
	public DonHangDto(Integer maDonHang, LocalDate ngayLap, NguoiDung khachHang) {
		super();
		this.maDonHang = maDonHang;
		this.ngayLap = ngayLap;
		this.khachHang = khachHang;
	}
	/**
	 * 
	 */
	public DonHangDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
