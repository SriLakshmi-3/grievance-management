package com.example.demo;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class PasswordResetToken {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public LocalDateTime getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(LocalDateTime expiryDate) {
		this.expiryDate = expiryDate;
	}

	public ResetTokenStatus getStatus() {
		return status;
	}

	public void setStatus(ResetTokenStatus status) {
		this.status = status;
	}

	@OneToOne
    @JoinColumn(name = "user_id")
	private User user;
	
	private String token;
	private LocalDateTime expiryDate;
	
	@Enumerated(EnumType.STRING)
	private ResetTokenStatus status;

	public PasswordResetToken() {
    }

    public PasswordResetToken(User user, String token, LocalDateTime expiryDate, ResetTokenStatus status) {
        this.user = user;
        this.token = token;
        this.expiryDate = expiryDate;
        this.status = status;
    }
    
    public boolean isTokenExpired() {
        return expiryDate.isBefore(LocalDateTime.now());
    }
}
