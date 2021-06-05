package com.nhom3.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserDetail extends User {

	private static final long serialVersionUID = 1L;
	private int id;
	public UserDetail(String username, String password, Collection<? extends GrantedAuthority> authorities,int id) {
		super(username, password, authorities); 
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
