package com.nhom3.repository;

import java.util.List;

import com.nhom3.entity.DanhMuc;

public interface IDanhMucReponsitory {
	List<DanhMuc> getAllDanhMuc();
	DanhMuc getDanhMucbyTen(String ten);
}
