package com.nhom3.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.nhom3.dto.NguoiDungDto;

public interface IUserDetailService {
	UserDetails loadUserByUsername(String email);
	List<NguoiDungDto> getAllNguoiDung();
}
