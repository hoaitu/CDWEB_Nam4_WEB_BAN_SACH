package com.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface GenericDAO<E> {
//the first method is create
	public E create(E t);

	public E update(E t);

	public E get(Object id);

	public void delete(Object id);

	public List<E> findAll();

	public long count();
}
