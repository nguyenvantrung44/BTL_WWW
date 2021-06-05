package com.nhom3.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.entity.DonHang;
import com.nhom3.repository.IDonHangRepository;


@Repository
@Transactional
public class DonHangRepository implements IDonHangRepository{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public DonHang addKDonHang(DonHang donHang) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(donHang);
		return donHang;
	}

	@Override
	public DonHang updateDonHang(DonHang donHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DonHang removeDonHang(DonHang donHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DonHang> getAllDonHang() {
		Session session = sessionFactory.getCurrentSession();
		List<DonHang> donHangs = session
				.createNativeQuery("select	maDonHang,ngayLap,MAKHACHHANG from DonHang ", DonHang.class)
				.getResultList();
		return donHangs;
	}

	@Override
	public int getIdMax() {
		Session session = sessionFactory.getCurrentSession();
		List<DonHang> list = session
				.createNativeQuery("select top 1 *from DonHang order by maDonHang desc ", DonHang.class)
				.getResultList();
		return list.get(0).getMaDonHang();
	}

	@Override
	public List<DonHang> getAllDonHangbyMaKhachHang(int maKhacHang) {
		Session session = sessionFactory.getCurrentSession();
		List<DonHang> donHangs = session
				.createNativeQuery("select * from DonHang d where d.MAKHACHHANG=" + maKhacHang + "", DonHang.class)
				.getResultList();
		return donHangs;
	}

}
