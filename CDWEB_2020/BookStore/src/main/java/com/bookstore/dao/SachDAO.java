package com.bookstore.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.bookstore.entity.Sach;

@Repository
@Transactional
public class SachDAO {
	@PersistenceContext
	private EntityManager manager;

	public List<Sach> findAll() {
		List<Sach> list = new ArrayList<Sach>();
		list = manager.createQuery("Select b From Sach b", Sach.class).getResultList();
		return list;
	}

	public List<Sach> Productdetail(int maSach) {
		List<Sach> list = new ArrayList<Sach>();
		list = manager.createQuery("select b from Sach b where b.maSach = :ma", Sach.class).setParameter("ma", maSach)
				.getResultList();
		return list;
	}

	public List<Sach> findById(int id) {
		List<Sach> listType = new ArrayList<Sach>();
//		String query = "select b from Sach b join Theloaisach c on b.theloaisach.maTheLoai = c.maTheLoai"
//				+ " and c.maTheLoai =:catId";
		listType = manager
				.createQuery("select b from Sach b join b.theloaisach c" + " where c.maTheLoai =:catId", Sach.class)
				.setParameter("catId", id).getResultList();
		return listType;
	}

	public List<Sach> Sale() {
		List<Sach> list = new ArrayList<Sach>();
		list = manager.createQuery("select b from Sach b where b.khuyenMai > 10", Sach.class).getResultList();
		return list;
	}
}
