package com.bookstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bookstore.entity.Sach;

public interface BookRepository extends JpaRepository<Sach, Long> {
	@Query(value = "SELECT c FROM Sach c WHERE c.maSach =:ids")
	public abstract Sach findByName(@Param("ids") long ids);

	@Query(value = "select b from Sach b  where b.theloaisach =:catId")
	public abstract List<Sach> findByCategory(@Param("catId") long id);

	@Query(value = "select b from Sach b where b.theloaisach = b.theloaisach")
	public abstract List<Sach> findSameCategory();

	@Query(value = "SELECT s FROM Sach s ORDER BY RAND()")
	public abstract List<Sach> newBooks();

	@Query(value = "select p from Sach p where p.tenSach like %?1%")
	public abstract List<Sach> findBookByTitle(String tenSach);

	@Query(value = "select p from Sach p where p.tenTacGia =:tenTacGia")
	public abstract List<Sach> findBook(@Param("tenTacGia") String tenTacGia);

	@Query(value = "select p.tenSach from Sach p where p.tenSach like %?1%")
	public List<String> findBookName(String tenSach);

	@Query(value = "SELECT c FROM Sach c WHERE c.tenSach =:name")
	public abstract Sach DetailByName(@Param("name") String name);
}
