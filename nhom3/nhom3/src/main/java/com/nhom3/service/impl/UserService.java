package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom3.dto.NguoiDungDto;
import com.nhom3.entity.NguoiDung;
import com.nhom3.repository.INguoiDungRepository;
import com.nhom3.service.INguoDungService;

@Service
public class UserService implements INguoDungService {
	@Autowired
	private INguoiDungRepository nguoiDungReponsitory;

	@Override
	public void DangKi(NguoiDungDto dto) {
		String hased = BCrypt.hashpw(dto.getMatKhau(), BCrypt.gensalt());
		NguoiDung nguoiDung = new NguoiDung(dto.getTenNguoiDung(), dto.getNgaySinh(), dto.getSoCMND(),
				dto.getSoDienThoai(), dto.getEmail(), dto.getDiaChi(), dto.getLoaiNguoiDung(), hased);

		nguoiDungReponsitory.Dangki(nguoiDung);

	}
	@Override
	public List<NguoiDungDto> getAllNguoiDung() {
		List<NguoiDung> listnd = nguoiDungReponsitory.getAllNguoiDung();
		List<NguoiDungDto> listDto = new ArrayList<NguoiDungDto>();
		for (NguoiDung nd : listnd) {
			listDto.add(new NguoiDungDto(nd.getSoCMND(), nd.getSoDienThoai(), nd.getEmail()));

		}
		return listDto;
	}
	@Override
	public NguoiDungDto getNguoiDungByEmail(String email) {
		NguoiDung nd = nguoiDungReponsitory.getNguoiDungByEmail(email);
		NguoiDungDto dto = new NguoiDungDto(nd.getMaNguoiDung(), nd.getTenNguoiDung(), nd.getNgaySinh(), nd.getSoCMND(),
				nd.getSoDienThoai(), nd.getEmail(), nd.getDiaChi(), nd.getTrangThai(), nd.getLoaiNguoiDung(),
				nd.getMatKhau());
		return dto;
	}
	@Override
	public NguoiDungDto updateKhachHang(NguoiDungDto nd) {
		NguoiDung dung = nguoiDungReponsitory.updateKhachHang(new NguoiDung(nd.getMaNguoiDung(), nd.getTenNguoiDung(),
				nd.getNgaySinh(), nd.getSoCMND(), nd.getSoDienThoai(), nd.getEmail(), nd.getDiaChi(), nd.getTrangThai(),
				nd.getLoaiNguoiDung(), nd.getMatKhau()));
		NguoiDungDto dto = new NguoiDungDto(dung.getMaNguoiDung(), dung.getTenNguoiDung(), dung.getNgaySinh(),
				dung.getSoCMND(), dung.getSoDienThoai(), dung.getEmail(), dung.getDiaChi(), dung.getTrangThai(),
				dung.getLoaiNguoiDung(), dung.getMatKhau());
		return dto;
	}

}
