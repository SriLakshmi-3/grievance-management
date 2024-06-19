package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;


public interface GrievanceRepository extends JpaRepository<Grievance, Long> {
	List<Grievance> findAll();
	public Grievance findListfindById(Long id);
    public Grievance  findByImage(byte[] image);
    public Optional<Grievance>  findById(Long id);
    public List<Grievance> findByIdnum(Long idnum);
}
