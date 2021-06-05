package com.nhom3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.nhom3.dto.UserDetail;
import com.nhom3.entity.NguoiDung;
import com.nhom3.repository.IUserDetailRepository;

@Service
public class UserDetailService implements UserDetailsService {
	@Autowired
	private IUserDetailRepository userInfoRepository;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		NguoiDung nguoiDung = userInfoRepository.findUserInfo(email);
		if (nguoiDung == null) {
			throw new UsernameNotFoundException("Email không tồn tại !!!");
		}
		String role = "";
		role = userInfoRepository.getUserRole(email);

		List<GrantedAuthority> listGrantedAuthorities = new ArrayList<GrantedAuthority>();
		if (!role.equalsIgnoreCase("")) {
			listGrantedAuthorities.add(new SimpleGrantedAuthority(role));
		}

		UserDetail userInfo = new UserDetail(email, nguoiDung.getMatKhau(), listGrantedAuthorities,nguoiDung.getMaNguoiDung());
		return userInfo;
	}

}
