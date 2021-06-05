package com.nhom3.repository;

import java.util.List;

import com.nhom3.entity.DonHang;

public interface IDonHangRepository {
	DonHang addKDonHang(DonHang donHang);

	DonHang updateDonHang(DonHang donHang);

	DonHang removeDonHang(DonHang donHang);

	List<DonHang> getAllDonHang();

	int getIdMax();

	List<DonHang> getAllDonHangbyMaKhachHang(int maKhacHang);
}
