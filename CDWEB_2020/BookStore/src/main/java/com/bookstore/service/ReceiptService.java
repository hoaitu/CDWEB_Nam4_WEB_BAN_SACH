package com.bookstore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.entity.Receipt;
import com.bookstore.repository.ReceiptRepository;

@Service
public class ReceiptService {
	@Autowired
	private ReceiptRepository reRepository;

	public void create(Receipt receipt) {
		reRepository.saveAndFlush(receipt);
	}

	public Receipt findid(long id) {
		return reRepository.findOne(id);
	}

	public void delete(long id) {
		reRepository.delete(id);

	}
}
