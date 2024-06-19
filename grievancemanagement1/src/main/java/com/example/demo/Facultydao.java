package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Facultydao {
	
	@Autowired
	FacultyRepository repo;
	
	public void insert(Faculty u) {
		repo.save(u);
	}
	
	public Faculty getDetailsById(Faculty f) {
		return repo.findByFacultyId(f.getFacultyId());
	}
	
	
	public boolean validateLogin(Faculty f) {
		Faculty faculty = repo.findByFacultyId(f.getFacultyId());
		if(faculty != null && faculty.getPassword().equals(f.getPassword())) {
			return true;
		}
		return false;
	}

}
