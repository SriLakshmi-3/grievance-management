package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Userdao {
	
	@Autowired
	UserRepository repo;
	
	public void insert(User u) {
		repo.save(u);
	}
	
	public User getDetailsById(User u) {
		return repo.findByEmail(u.getEmail());
	}
	
	
	public boolean validateLogin(User u) {
		User user = repo.findByEmail(u.getEmail());
		if(user != null && user.getPassword().equals(u.getPassword())) {
			return true;
		}
		return false;
	}

	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return repo.findByEmail(email);
	}

}
