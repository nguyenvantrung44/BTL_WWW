package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom3.dto.DonHangDto;
import com.nhom3.entity.DonHang;
import com.nhom3.repository.IDonHangRepository;
import com.nhom3.service.IDonHangService;

@Service
public class DonHangService implements IDonHangService {

	@Autowired
	private IDonHangRepository donHangRepository;

	@Override
	public DonHangDto addKDonHang(DonHangDto dto) {
		DonHang donHang = donHangRepository.addKDonHang(
				new DonHang(dto.getMaDonHang(), dto.getNgayLap(), dto.getKhachHang(), dto.getChiTietDonHangs()));
		DonHangDto dt = new DonHangDto(donHang.getMaDonHang(), donHang.getNgayLap(), donHang.getKhachHang(),
				donHang.getChiTietDonHangs());
		return dt;
	}

	@Override
	public DonHangDto updateDonHang(DonHangDto donHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DonHangDto removeDonHang(DonHangDto donHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DonHangDto> getAllDonHang() {
		List<DonHang> dh = donHangRepository.getAllDonHang();
		List<DonHangDto> dto = new ArrayList<DonHangDto>();

		for (DonHang d : dh) {
			dto.add(new DonHangDto(d.getMaDonHang(), d.getNgayLap(), d.getKhachHang()));
		}
		return dto;
	}

	@Override
	public int getIdMax() {
		return donHangRepository.getIdMax();
	}

	@Override
	public List<DonHangDto> getAllDonHangbyMaKhachHang(int maKhacHang) {
		List<DonHang> dh = donHangRepository.getAllDonHangbyMaKhachHang(maKhacHang);
		List<DonHangDto> dto = new ArrayList<DonHangDto>();

		for (DonHang donHang : dh) {
			dto.add(new DonHangDto(donHang.getMaDonHang(), donHang.getNgayLap(), donHang.getKhachHang(),
					donHang.getChiTietDonHangs()));
		}
		return dto;
	}

}
