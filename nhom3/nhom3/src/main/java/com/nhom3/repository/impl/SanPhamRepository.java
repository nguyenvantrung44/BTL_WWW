package com.nhom3.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.entity.SanPham;
import com.nhom3.repository.ISanPhamReponsitory;

@Repository
@Transactional
public class SanPhamRepository implements ISanPhamReponsitory {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<SanPham> getAllSanPham() {
		Session session = sessionFactory.getCurrentSession();
		Query<SanPham> query = session.createQuery("From SanPham where trangThai like 'true'", SanPham.class);
		return query.getResultList();
	}

	@Override
	public void deleteSanPham(int id) {
		Session session = sessionFactory.getCurrentSession();
		SanPham sanPham = session.find(SanPham.class, id);
		session.remove(sanPham);
	}

	@Override
	public SanPham getSanPhamByID(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(SanPham.class, id);
	}

	@Override
	public List<SanPham> getSanPhamByDanhMucByTen(String tenDanhMuc) {
		Session session = sessionFactory.getCurrentSession();
		return session.createNativeQuery(
				"select * from [dbo].[SanPham] sp join [dbo].[DanhMuc] dm on sp.MADANHMUC=dm.MADANHMUC where sp.trangThai = 'true' and dm.[TENDANHMUC]=N'"
						+ tenDanhMuc + "'",
				SanPham.class).getResultList();
	}

	@Override
	public List<SanPham> getSanPhamByten(String tenSanPham) {
		Session session = sessionFactory.getCurrentSession();
		String tenThuong = tenSanPham.toLowerCase().trim();
		List<SanPham> list = new ArrayList<SanPham>();
		list = session.createNativeQuery("select *from SanPham where trangThai = 'true'", SanPham.class).getResultList();
		List<SanPham> listSP = new ArrayList<SanPham>();
		for (SanPham sanPham : list) {
			if (sanPham.getTenSanPham().toLowerCase().trim().contains(tenThuong)) {
				listSP.add(sanPham);
			}
		}
		return listSP;
	}

	@Override
	public List<SanPham> getAllSanPhambyTrangThai() {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> sanPhams = session
				.createNativeQuery("select * from SanPham ", SanPham.class).getResultList();
		return sanPhams;
	}

	@Override
	public SanPham updateSanPhambyTrangThai(int id) {
		Session session = sessionFactory.getCurrentSession();
		SanPham s = session.find(SanPham.class, id);
		if(s.getTrangThai().equals("true"))
			s.setTrangThai("false");
		else
			s.setTrangThai("true");
		session.update(s);
		return s;
	}

	@Override
	public void addSanPham(SanPham sp) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(sp);;
	}

	@Override
	public boolean updateSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(sanPham);
		return true;
	}

}
