package com.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.UserDAO;
import com.bookstore.entity.User;
import com.bookstore.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository uRepository;
	@Autowired
	private UserDAO userDAO;

	public User findByEmail(String email) {
		List<User> listUser = uRepository.findByEmail(email);
		if (listUser != null && listUser.size() > 0) {
			return listUser.get(0);
		}
		return null;
	}

	public User checkLogin(String email, String password) {
		User user = userDAO.findByEmail(email);
		if (user != null && user.getPassword().equals(password)) {
			return user;
		}
		return null;
	}

	public void create(User user) {
		uRepository.saveAndFlush(user);
	}

	public void update(User user) {
		User u = uRepository.findOne(user.getIdUser());
		u.setUsername(user.getUsername());
		u.setEmail(user.getEmail());
		u.setPassword(user.getPassword());
		u.setRequest(user.getRequest());
		u.setAddress(user.getAddress());
		u.setDateOfBirth(user.getDateOfBirth());
		u.setGender(user.getGender());
		u.setPhone(user.getPhone());
		uRepository.saveAndFlush(u);
	}

	public List<User> findAll() {
		return uRepository.findAll();
	}

	public void delete(Long idUser) {
		uRepository.delete(idUser);

	}

	public User findById(Long id) {
		return uRepository.findOne(id);
	}

	// User dùng
	public User findByUsernameAndPassword(String username, String password) {
		return uRepository.findByUsernameAndPassword(username, password);
	}

	public boolean saveUser(User user) {
		String password = user.getPassword();
		return uRepository.save(user) != null;
	}

	public User findUserName(String username) {
		return uRepository.findByUsername(username);
	}

}
