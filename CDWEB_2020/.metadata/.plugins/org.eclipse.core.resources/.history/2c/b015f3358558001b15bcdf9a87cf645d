package com.bookstore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.ReceiptDAO;
import com.bookstore.entity.Receipt;

@Service
public class ReceiptService {
	@Autowired
	private ReceiptDAO receiptDAO;

	public void create(Receipt receipt) {
		receiptDAO.create(receipt);
	}

}
