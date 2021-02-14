package com.bookstore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.bookstore.entity.Theloaisach;

@Repository(value = "CategoryDAO")
@Transactional
public class CategoryDAO {
	
	@PersistenceContext
	private EntityManager manager;
	

	public List<Theloaisach> listAll() {
		List<Theloaisach> category = manager.createQuery("Select a From Theloaisach a", Theloaisach.class).getResultList();
		return category;

	}

}
