package com.nhom3.service;

import java.util.List;

import com.nhom3.dto.SanPhamDto;

public interface ISanPhamService {
	List<SanPhamDto> getAllSanPham();
	void addSanPham(SanPhamDto sanPhamDto);
	void deleteSanPham(int id);
	SanPhamDto getSanPhamByID(int id);
	List<SanPhamDto> getSanPhamByDanhMucByTen(String tenDanhMuc);
	List<SanPhamDto> getSanPhamByten(String tenSanPham);
	List<SanPhamDto> getAllSanPhambyTrangThai();
	SanPhamDto updateSanPhambyTrangThai(int id);
	boolean updateSanPham(SanPhamDto sanPhamdto);
}
