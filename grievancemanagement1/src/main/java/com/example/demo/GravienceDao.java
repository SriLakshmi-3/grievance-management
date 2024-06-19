package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GravienceDao {

    @Autowired
    private GrievanceRepository grievanceRepository;

    public void deleteGrievanceById(Long id) {
        grievanceRepository.deleteById(id);
    }
}
