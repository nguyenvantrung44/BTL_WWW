package com.nhom3.service;

import java.util.List;

import com.nhom3.dto.DanhMucDto;

public interface IDanhMucService {
	List<DanhMucDto> getAllDanhMuc();
	DanhMucDto getDanhMucbyTen(String ten);
}
