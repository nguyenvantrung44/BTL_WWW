package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.entity.NguoiDung; 
import com.nhom3.repository.IUserDetailRepository; 

@Repository
@Transactional
public class UserDetailRepository implements IUserDetailRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public NguoiDung findUserInfo(String email) {
		System.out.println(email);
		Session session = sessionFactory.getCurrentSession();
		Query<NguoiDung> query = session.createQuery("from NguoiDung where  email = '" + email + "'", NguoiDung.class);

		List<NguoiDung> result = query.getResultList();
		NguoiDung user = null;
		for (NguoiDung nd : result) {
			return nd;

		} 
		return user;
	}

	@Override
	public String getUserRole(String email) {
		Session session = sessionFactory.getCurrentSession();
		Query<NguoiDung> query = session.createQuery("from NguoiDung where  email = '" + email + "'", NguoiDung.class);
		List<NguoiDung> result = query.getResultList();
		if (result.size() > 0) {
			System.out.println(result.get(0).getLoaiNguoiDung());
			return result.get(0).getLoaiNguoiDung();

		} 
		return null;
	}

}
