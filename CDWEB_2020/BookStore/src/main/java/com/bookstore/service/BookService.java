package com.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.entity.Sach;
import com.bookstore.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bRepository;

/// Hien thi sach moi
	public List<Sach> newBooks() {
		return bRepository.newBooks();
	}

/// HIEN THI TAT CA SACH
	public List<Sach> findAll() {
//		if (tenSach != null) {
////			return bRepository.findBookByTitle(tenSach);
//		}
		return bRepository.findAll();
	}

//// TIM SACH THEO TEN
	public Sach findByID(int ids) {
		return bRepository.findByName(ids);
	}

/// HIEN THI DANH SACH THEO THE LOAI
	public List<Sach> findByCategory(long id) {
		return bRepository.findByCategory(id);
	}

/// HIEN THI SACH CUNG LOAI
//	public List<Sach> findSameCategory() {
//		return bRepository.findSameCategory();
//	}

///  TIM SACH THEO ID
	public Sach findById(long productId) {
		return bRepository.findOne(productId);
	}
	//// XOA SACH

	public void delete(Long maSach) {
		Sach sach = bRepository.findOne(maSach);
		if (sach != null) {
			bRepository.delete(sach);
		}
	}

/// THEM MOI SACH
	public void createBook(Sach sach) {
		bRepository.saveAndFlush(sach);
	}

/// CHINH SUA SACH
	public void update(Sach sach) {
		Sach book = bRepository.findOne(sach.getMaSach());
		book.setHinhAnh(sach.getHinhAnh());
		book.setGia(sach.getGia());
		book.setMoTa(sach.getMoTa());
		book.setNgayXuatBan(sach.getNgayXuatBan());
		book.setTenSach(sach.getTenSach());
		book.setTenTacGia(sach.getTenTacGia());
		book.setTheloaisach(sach.getTheloaisach());
		book.setKhuyenMai(sach.getKhuyenMai());
		book.setSoLuong(sach.getSoLuong());
		bRepository.saveAndFlush(book);
	}

	//// HIEN THI SACH THEO TEN (TIM KIEM)

	public List<Sach> findBookByTitle(String tenSach) {
		return bRepository.findBookByTitle(tenSach);
	}

	public List<String> findBook(String name) {
		return bRepository.findBookName(name);
	}

	public Sach detailByName(String name) {
		return bRepository.DetailByName(name);
	}

}
