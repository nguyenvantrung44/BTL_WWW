package com.nhom3.repository;

import java.util.List;

import com.nhom3.entity.SanPham;

public interface ISanPhamReponsitory {
	List<SanPham> getAllSanPham();

	void addSanPham(SanPham sp);

	void deleteSanPham(int id);

	SanPham getSanPhamByID(int id);

	List<SanPham> getSanPhamByDanhMucByTen(String tenDanhMuc);

	List<SanPham> getSanPhamByten(String tenSanPham);

	List<SanPham> getAllSanPhambyTrangThai();

	SanPham updateSanPhambyTrangThai(int id);
	
	boolean updateSanPham(SanPham sanPham);

}
