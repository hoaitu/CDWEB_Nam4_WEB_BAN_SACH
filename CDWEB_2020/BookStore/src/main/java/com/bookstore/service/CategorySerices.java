package com.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.CategoryDAO;
import com.bookstore.entity.Theloaisach;

@Service
public class CategorySerices {
	@Autowired
	private CategoryDAO categoryDAO;

	public List<Theloaisach> listCategory() {
		return categoryDAO.listAll();

	}

}
