package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class AssGrev {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; // This is the primary key
    private Long idnum;
    private String category;
    private String description;
    private byte[] image;
    private Long facultyid;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getIdnum() {
		return idnum;
	}
	public void setIdnum(Long idnum) {
		this.idnum = idnum;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public Long getFacultyid() {
		return facultyid;
	}
	public void setFacultyid(Long facultyid) {
		this.facultyid = facultyid;
	}
    

}
