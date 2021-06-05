package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom3.dto.SanPhamDto;
import com.nhom3.entity.SanPham;
import com.nhom3.repository.ISanPhamReponsitory;
import com.nhom3.service.ISanPhamService;

@Service
public class SanPhamService implements ISanPhamService {
	@Autowired
	private ISanPhamReponsitory sanPhamRepository;
	
	// danh muc repository; viet ham find danh muc theo id
	@Override
	public List<SanPhamDto> getAllSanPham() {
		List<SanPham> listsp = sanPhamRepository.getAllSanPham();
		List<SanPhamDto> listDto = new ArrayList<SanPhamDto>();
		for (SanPham sp : listsp) {
			listDto.add(new SanPhamDto(sp.getMaSanPham(), sp.getTenSanPham(), sp.getDonViTinh(),
					sp.getDanhMuc().getMaDanhMuc(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuongNhap(),
					sp.getUrlHinh()));

		}
		return listDto;
	}

	@Override
	public SanPhamDto getSanPhamByID(int id) {
		SanPham sp = sanPhamRepository.getSanPhamByID(id);
		SanPhamDto sanPhamDto = new SanPhamDto(sp.getMaSanPham(), sp.getTenSanPham(), sp.getNgaySanXuat(),
				sp.getDonViTinh(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuongNhap(), sp.getUrlHinh(),
				sp.getTrangThai(), sp.getDanhMuc(), sp.getNhaCungCap());
		return sanPhamDto;
	}

	@Override
	public List<SanPhamDto> getSanPhamByDanhMucByTen(String tenDanhMuc) {
		List<SanPham> listsp = sanPhamRepository.getSanPhamByDanhMucByTen(tenDanhMuc);
		List<SanPhamDto> listDto = new ArrayList<SanPhamDto>();
		for (SanPham sp : listsp) {
			listDto.add(new SanPhamDto(sp.getMaSanPham(), sp.getTenSanPham(), sp.getDonViTinh(),
					sp.getDanhMuc().getMaDanhMuc(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuongNhap(),
					sp.getUrlHinh()));

		}
		return listDto;
	}

	@Override
	public List<SanPhamDto> getSanPhamByten(String tenSanPham) {
		List<SanPham> listsp = sanPhamRepository.getSanPhamByten(tenSanPham);
		List<SanPhamDto> listDto = new ArrayList<SanPhamDto>();
		for (SanPham sp : listsp) {
			listDto.add(new SanPhamDto(sp.getMaSanPham(), sp.getTenSanPham(), sp.getDonViTinh(),
					sp.getDanhMuc().getMaDanhMuc(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuongNhap(),
					sp.getUrlHinh()));

		}
		return listDto;
	}

	@Override
	public List<SanPhamDto> getAllSanPhambyTrangThai() {
		List<SanPham> listsp = sanPhamRepository.getAllSanPhambyTrangThai();
		List<SanPhamDto> listDto = new ArrayList<SanPhamDto>();
		for (SanPham sp : listsp) {
			listDto.add(new SanPhamDto(sp.getMaSanPham(), sp.getTenSanPham(), sp.getDonViTinh(), sp.getMoTa(),
					sp.getDonGia(), sp.getSoLuongNhap(), sp.getUrlHinh(), sp.getTrangThai(), sp.getDanhMuc(),
					sp.getNhaCungCap()));

		}
		return listDto;
	}

	@Override
	public SanPhamDto updateSanPhambyTrangThai(int id) {
		// TODO Auto-generated method stub
		SanPham sp = sanPhamRepository.updateSanPhambyTrangThai(id);
		SanPhamDto dto = new SanPhamDto(sp.getTenSanPham(), sp.getDonViTinh(), sp.getMoTa(), sp.getDonGia(),
				sp.getSoLuongNhap(), sp.getUrlHinh(), sp.getTrangThai(), sp.getDanhMuc(), sp.getNhaCungCap());
		return dto;
	}

	@Override
	public void addSanPham(SanPhamDto dto) {
		sanPhamRepository.addSanPham(new SanPham(dto.getMaSanPham(), dto.getTenSanPham(), dto.getNgaySanXuat(),
				dto.getDonViTinh(), dto.getDonViTinh(), dto.getDonGia(), dto.getSoLuongNhap(), dto.getUrlHinh(),
				dto.getTrangThai(), dto.getNhaCungCap(), dto.getDanhMuc()));

	}

	@Override
	public boolean updateSanPham(SanPhamDto dto) {
		if (sanPhamRepository.updateSanPham(new SanPham(dto.getMaSanPham(), dto.getTenSanPham(), dto.getNgaySanXuat(),
				dto.getDonViTinh(), dto.getMoTa(), dto.getDonGia(), dto.getSoLuongNhap(), dto.getUrlHinh(),
				dto.getTrangThai(), dto.getNhaCungCap(), dto.getDanhMuc()))) {
			return true;
		}

		return false;
	}

	@Override
	public void deleteSanPham(int id) {
		// TODO Auto-generated method stub

	}
	
}

/*
 * đầu service nhớ có annotaition @Service lớp service impl là nơi xữ lí logic,
 * ở đây , chuyển đổi dữ liệu nhận và là dto , sau đó tạo đối tượng entity xong
 * gọi hàm insert (reponsitory) để thêm vào đatabase, service chỉ xữ lí dữ liệu
 * dto, muốn thao tác với data thì xuống dưới reponsitory để xữ lí (CRUD)
 * 
 */
