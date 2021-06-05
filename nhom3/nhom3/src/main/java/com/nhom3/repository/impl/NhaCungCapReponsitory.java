package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.nhom3.entity.NhaCungCap;
import com.nhom3.repository.INhaCungCapReponsitory;

@Repository
@Transactional
public class NhaCungCapReponsitory implements INhaCungCapReponsitory {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<NhaCungCap> getAllNhaCungCap() {
		Session session = sessionFactory.getCurrentSession();
		List<NhaCungCap> nhaCungCaps = session.createNativeQuery("select *from NhaCungCap", NhaCungCap.class)
				.getResultList();
		return nhaCungCaps;
	}

	@Override
	public NhaCungCap getNhaCungCapbyTen(String ten) {
		Session session = sessionFactory.getCurrentSession();
		return (NhaCungCap) session
				.createNativeQuery("select * from NhaCungCap n where n.tenNhaCungCap= N'" + ten + "'", NhaCungCap.class)
				.getResultList().get(0);
	}

}
