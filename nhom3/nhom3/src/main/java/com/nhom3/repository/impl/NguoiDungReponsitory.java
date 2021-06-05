package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.nhom3.entity.NguoiDung;
import com.nhom3.repository.INguoiDungRepository;

@Repository
@Transactional
public class NguoiDungReponsitory implements INguoiDungRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void Dangki(NguoiDung nguoiDung) {

		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(nguoiDung);

	}

	@Override
	public List<NguoiDung> getAllNguoiDung() {
		Session session = sessionFactory.getCurrentSession();
		Query<NguoiDung> query = session.createQuery("From NguoiDung", NguoiDung.class);
		return query.getResultList();
	}

	@Override
	public NguoiDung getNguoiDungByEmail(String email) {
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
	public NguoiDung updateKhachHang(NguoiDung nguoiDung) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(nguoiDung);
		return nguoiDung;
	}

}
