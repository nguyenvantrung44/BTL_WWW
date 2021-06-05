package com.nhom3.service;

import java.util.List;

import com.nhom3.dto.NguoiDungDto;

public interface INguoDungService {
	void DangKi(NguoiDungDto nguoiDungDto);
	List<NguoiDungDto> getAllNguoiDung();
	NguoiDungDto getNguoiDungByEmail(String email);
	NguoiDungDto updateKhachHang(NguoiDungDto nguoiDung);
}
