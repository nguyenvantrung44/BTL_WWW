package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom3.dto.ChiTietDonHangDTo;
import com.nhom3.entity.ChiTietDonHang;
import com.nhom3.repository.IChiTietDonHangReponsitory;
import com.nhom3.service.IChiTietDonHangService;

@Service
public class ChiTietDonHangService implements IChiTietDonHangService {

	@Autowired
	private IChiTietDonHangReponsitory chiTietDonHangRepository;

	@Override
	public List<ChiTietDonHangDTo> getAllChiTietDonHang() {
		List<ChiTietDonHang> listct = chiTietDonHangRepository.getAllChiTietDonHang();
		List<ChiTietDonHangDTo> listDto = new ArrayList<ChiTietDonHangDTo>();
		for (ChiTietDonHang ct : listct) {
			listDto.add(new ChiTietDonHangDTo(ct.getChiTietDonHangID(),ct.getSanPham(), ct.getDonHang(), ct.getSoLuong(), ct.getDonGia()));

		}
		return listDto;
	}

	@Override
	public ChiTietDonHangDTo addChiTietDonHang(ChiTietDonHangDTo d) {
		ChiTietDonHang ct = chiTietDonHangRepository.addChiTietDonHang(new ChiTietDonHang(d.getChiTietDonHangID(),
				d.getSanPham(), d.getDonHang(), d.getSoLuong(), d.getDonGia()));
		ChiTietDonHangDTo dTo=new ChiTietDonHangDTo(ct.getChiTietDonHangID(),ct.getSanPham(), ct.getDonHang(), ct.getSoLuong(),ct.getDonGia());
		return dTo;
	}

	@Override
	public ChiTietDonHangDTo updateChiTietDonHang(ChiTietDonHangDTo ct) {
		ChiTietDonHang c = chiTietDonHangRepository.updateChiTietDonHang(new ChiTietDonHang(ct.getChiTietDonHangID(),
				ct.getSanPham(), ct.getDonHang(), ct.getSoLuong(), ct.getDonGia()));
		ChiTietDonHangDTo dto = new ChiTietDonHangDTo(c.getChiTietDonHangID(), c.getSanPham(), c.getDonHang(),
				c.getSoLuong(), c.getDonGia());
		return dto;
	}

	@Override
	public ChiTietDonHangDTo removeChiTietDonHang(ChiTietDonHangDTo chiTietDonHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChiTietDonHangDTo> getAllChiTietDonHangbyDonHang(int maDonHang) {
		List<ChiTietDonHang> ct = chiTietDonHangRepository.getAllChiTietDonHangbyDoHang(maDonHang);
		List<ChiTietDonHangDTo> dto = new ArrayList<ChiTietDonHangDTo>();

		for (ChiTietDonHang dh : ct) {
			dto.add(new ChiTietDonHangDTo(dh.getChiTietDonHangID(), dh.getSanPham(), dh.getDonHang(), dh.getSoLuong(),
					dh.getDonGia()));
		}
		return dto;
	}

	@Override
	public ChiTietDonHangDTo getChiTietbyDHSP(int maDonHang, int maSanPham) {
		ChiTietDonHang ct = chiTietDonHangRepository.getChiTietbyDHSP(maDonHang, maSanPham);
		ChiTietDonHangDTo dto = new ChiTietDonHangDTo(ct.getChiTietDonHangID(), ct.getSanPham(), ct.getDonHang(),
				ct.getSoLuong(), ct.getDonGia());
		return dto;
	}

}
