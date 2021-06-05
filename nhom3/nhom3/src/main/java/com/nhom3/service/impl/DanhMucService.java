package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom3.dto.DanhMucDto;
import com.nhom3.entity.DanhMuc;
import com.nhom3.repository.IDanhMucReponsitory;
import com.nhom3.service.IDanhMucService;

@Service
public class DanhMucService implements IDanhMucService {

	@Autowired
	private IDanhMucReponsitory danhMucReponsitory;

	@Override
	public List<DanhMucDto> getAllDanhMuc() {
		List<DanhMuc> listdm = danhMucReponsitory.getAllDanhMuc();
		List<DanhMucDto> listDto = new ArrayList<DanhMucDto>();
		for (DanhMuc dm : listdm) {
			listDto.add(new DanhMucDto(dm.getMaDanhMuc(), dm.getTenDanhMuc()));

		}
		return listDto;
	}

	@Override
	public DanhMucDto getDanhMucbyTen(String ten) {
		DanhMuc danhMuc=danhMucReponsitory.getDanhMucbyTen(ten);
		DanhMucDto dto=new DanhMucDto(danhMuc.getMaDanhMuc(),danhMuc.getTenDanhMuc());
		return dto;
	}

}
