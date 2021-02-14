package com.bookstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bookstore.entity.ReceiptItem;

public interface ReceipRepository extends JpaRepository<ReceiptItem, Long> {
	@Query(value = "select b from ReceiptItem b join b.receipt c join b.product p where c.receiptName =:email")
	public List<ReceiptItem> showReceipt(@Param("email") String email);

	@Query(value = "select b from ReceiptItem b join b.receipt c join b.product p")
	public List<ReceiptItem> showAll();

	@Query(value = "select b from ReceiptItem b join b.receipt c join b.product p where c.receiptId =:id")
	public List<ReceiptItem> findID(@Param("id") Long id);
}
