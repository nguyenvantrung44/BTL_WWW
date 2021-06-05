package com.nhom3.dto;

import java.io.Serializable;

import com.nhom3.entity.ChiTietDonHangID;
import com.nhom3.entity.DonHang;
import com.nhom3.entity.SanPham;

public class ChiTietDonHangDTo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ChiTietDonHangID chiTietDonHangID;
	private SanPham sanPham;
	private DonHang donHang;
	private int soLuong;
	private float donGia;

	public ChiTietDonHangID getChiTietDonHangID() {
		return chiTietDonHangID;
	}

	public void setChiTietDonHangID(ChiTietDonHangID chiTietDonHangID) {
		this.chiTietDonHangID = chiTietDonHangID;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public DonHang getDonHang() {
		return donHang;
	}

	public void setDonHang(DonHang donHang) {
		this.donHang = donHang;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public float getDonGia() {
		return donGia;
	}

	public void setDonGia(float donGia) {
		this.donGia = donGia;
	}

	/**
	 * @param chiTietDonHangID
	 * @param sanPham
	 * @param donHang
	 * @param soLuong
	 * @param donGia
	 */
	public ChiTietDonHangDTo(ChiTietDonHangID chiTietDonHangID, SanPham sanPham, DonHang donHang, int soLuong,
			float donGia) {
		super();
		this.chiTietDonHangID = chiTietDonHangID;
		this.sanPham = sanPham;
		this.donHang = donHang;
		this.soLuong = soLuong;
		this.donGia = donGia;
	}

	/**
	 * 
	 */
	public ChiTietDonHangDTo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ChiTietDonHangDTo [chiTietDonHangID=" + chiTietDonHangID + ", sanPham=" + sanPham + ", donHang="
				+ donHang + ", soLuong=" + soLuong + ", donGia=" + donGia + "]";
	}

}
