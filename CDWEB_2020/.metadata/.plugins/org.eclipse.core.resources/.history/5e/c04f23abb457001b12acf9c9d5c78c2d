package com.bookstore.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name = "receipt_item")
public class ReceiptItem implements Serializable {

	@Id
	@GeneratedValue
	private long receiptItemId;
	@ManyToOne
	@JoinColumn(name = "receiptId")
	private Receipt receipt;
	@OneToOne
	@JoinColumn(name = "productId")
	private Sach product;
	private long receiptItemQuantity;
	private double receiptItemPrice;
	private int receiptItemSale;
	private boolean receiptItemStatus;

	public long getReceiptItemId() {
		return receiptItemId;
	}

	public void setReceiptItemId(long receiptItemId) {
		this.receiptItemId = receiptItemId;
	}

	public Receipt getReceipt() {
		return receipt;
	}

	public void setReceipt(Receipt receipt) {
		this.receipt = receipt;
	}

	public Sach getProduct() {
		return product;
	}

	public void setProduct(Sach product) {
		this.product = product;
	}

	public long getReceiptItemQuantity() {
		return receiptItemQuantity;
	}

	public void setReceiptItemQuantity(long l) {
		this.receiptItemQuantity = l;
	}

	public double getReceiptItemPrice() {
		return receiptItemPrice;
	}

	public void setReceiptItemPrice(double receiptItemPrice) {
		this.receiptItemPrice = receiptItemPrice;
	}

	public int getReceiptItemSale() {
		return receiptItemSale;
	}

	public void setReceiptItemSale(int receiptItemSale) {
		this.receiptItemSale = receiptItemSale;
	}

	public boolean isReceiptItemStatus() {
		return receiptItemStatus;
	}

	public void setReceiptItemStatus(boolean receiptItemStatus) {
		this.receiptItemStatus = receiptItemStatus;
	}

}
