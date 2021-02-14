package com.bookstore.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookstore.entity.Receipt;
import com.bookstore.repository.ReceiptRepository;

@Repository
@Transactional
public class ReceiptDAO {
	@Autowired
	private ReceiptRepository reRepository;

	public void create(Receipt receipt) {
		reRepository.saveAndFlush(receipt);
	}
}
