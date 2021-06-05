package com.nhom3.repository;

import java.util.List;

import com.nhom3.entity.NhaCungCap;

public interface INhaCungCapReponsitory {
	List<NhaCungCap> getAllNhaCungCap();
	NhaCungCap getNhaCungCapbyTen(String ten);
}
