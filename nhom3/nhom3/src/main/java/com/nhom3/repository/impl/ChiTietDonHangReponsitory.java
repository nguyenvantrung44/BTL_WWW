package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.entity.ChiTietDonHang;
import com.nhom3.repository.IChiTietDonHangReponsitory;

@Repository
@Transactional
public class ChiTietDonHangReponsitory implements IChiTietDonHangReponsitory {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ChiTietDonHang> getAllChiTietDonHang() {
		Session session = sessionFactory.getCurrentSession();
		Query<ChiTietDonHang> query = session.createQuery("From ChiTietDonHang", ChiTietDonHang.class);
		return query.getResultList();
	}

	@Override
	public ChiTietDonHang addChiTietDonHang(ChiTietDonHang chiTietDonHang) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(chiTietDonHang);
		return chiTietDonHang;
	}

	@Override
	public ChiTietDonHang updateChiTietDonHang(ChiTietDonHang chiTietDonHang) {
		Session session = sessionFactory.getCurrentSession();
		session.update(chiTietDonHang);
		return chiTietDonHang;
	}

	@Override
	public ChiTietDonHang removeChiTietDonHang(ChiTietDonHang chiTietDonHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChiTietDonHang> getAllChiTietDonHangbyDoHang(int maDonHang) {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietDonHang> chiTietDonHangs = session
				.createNativeQuery("select * from ChiTietDonHang c where c.MADONHANG=" + maDonHang + "",
						ChiTietDonHang.class)
				.getResultList();
		return chiTietDonHangs;
	}

	@Override
	public ChiTietDonHang getChiTietbyDHSP(int maDonHang, int maSanPham) {
		Session session = sessionFactory.getCurrentSession();
		return session.createNativeQuery(
				"Select * from ChiTietDonHang c where c.MADONHANG=" + maDonHang + " and c.MASANPHAM=" + maSanPham + "",
				ChiTietDonHang.class).getResultList().get(0);
	}

}
