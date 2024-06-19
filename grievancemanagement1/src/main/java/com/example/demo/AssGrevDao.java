package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AssGrevDao {
	@Autowired
    private AssGrevRepository repo1;
	
	public void insert(Faculty u) {
		repo1.save(u);
	}
	

}
