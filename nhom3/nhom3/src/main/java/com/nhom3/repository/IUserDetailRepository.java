package com.nhom3.repository;

import com.nhom3.entity.NguoiDung; 

public interface IUserDetailRepository {
	 NguoiDung findUserInfo(String email);
	 String getUserRole(String email);
}
