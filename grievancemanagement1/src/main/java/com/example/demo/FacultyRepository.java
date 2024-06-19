package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


public interface FacultyRepository extends JpaRepository<Faculty, Long> {
	public Faculty  findByFacultyId(String faculty_id);
	public Faculty  findByPassword(String password);
    List<Faculty>findAll();
}
