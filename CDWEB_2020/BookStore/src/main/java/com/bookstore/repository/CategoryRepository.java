package com.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bookstore.entity.Theloaisach;

public interface CategoryRepository extends JpaRepository<Theloaisach, Long> {

}
