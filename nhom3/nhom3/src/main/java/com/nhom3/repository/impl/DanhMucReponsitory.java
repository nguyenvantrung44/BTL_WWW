package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.entity.DanhMuc;
import com.nhom3.repository.IDanhMucReponsitory;

@Repository
@Transactional
public class DanhMucReponsitory implements IDanhMucReponsitory{
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<DanhMuc> getAllDanhMuc() {
		Session session = sessionFactory.getCurrentSession();
		Query<DanhMuc> query = session.createQuery("From DanhMuc", DanhMuc.class);
		return query.getResultList();
	}
	@Override
	public DanhMuc getDanhMucbyTen(String ten) {
		Session session = this.sessionFactory.getCurrentSession();
		List<DanhMuc> list = session
				.createNativeQuery("select * from DanhMuc where tenDanhMuc= N'" + ten + "'", DanhMuc.class)
				.getResultList();
		DanhMuc d = list.get(0);
		return d;
	}

}
