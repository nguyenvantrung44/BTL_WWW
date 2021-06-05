package com.nhom3.service;

import java.util.List;

import com.nhom3.dto.NhaCungCapDto;

public interface INhaCungCapService {
	List<NhaCungCapDto> getAllNhaCungCap();
	NhaCungCapDto getNhaCungCapbyTen(String ten);
}
