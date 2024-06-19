package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Grievance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // This is the primary key
    private Long idnum;
    @ManyToOne
    private Faculty assignedFaculty;

   
	public Faculty getAssignedFaculty() {
		return assignedFaculty;
	}
	public void setAssignedFaculty(Faculty assignedFaculty) {
		this.assignedFaculty = assignedFaculty;
	}
	public Long getIdnum() {
		return idnum;
	}
	public void setIdnum(Long idnum) {
		this.idnum = idnum;
	}
	private String category;
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	private String description;
    private byte[] image;


	public void assignGrievance(Grievance grievance, Long facultyId) {
		// TODO Auto-generated method stub
		
	}

    // Constructors, getters, and setters
}
