package com.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.entity.Theloaisach;
import com.bookstore.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository cRepository;

	public List<Theloaisach> findAll() {
		return cRepository.findAll();
	}

	public void delete(Long maTheLoai) {
		cRepository.delete(maTheLoai);
	}

	public void create(Theloaisach theloaisach) {
		cRepository.saveAndFlush(theloaisach);

	}

	public Theloaisach findById(Long id) {
		return cRepository.findOne(id);
	}

	public void update(Theloaisach theloaisach) {
		Theloaisach t = cRepository.findOne(theloaisach.getMaTheLoai());
		t.setTenTheLoai(theloaisach.getTenTheLoai());
		cRepository.saveAndFlush(t);
	}

}
