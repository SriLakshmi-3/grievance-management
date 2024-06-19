package com.example.demo;

import javax.mail.Authenticator;


import javax.mail.PasswordAuthentication;

import java.time.LocalDateTime;
import java.util.Properties;
import java.util.UUID;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PasswordResetService {
    @Autowired
    private PasswordResetTokenRepository tokenRepository;

    @Autowired
    private EmailService emailService;

    public PasswordResetToken createPasswordResetToken(User user) {
        String token = generateUniqueToken();
        PasswordResetToken resetToken = new PasswordResetToken();
        resetToken.setUser(user);
        resetToken.setToken(token);
        resetToken.setExpiryDate(calculateExpiryDate());
        resetToken.setStatus(ResetTokenStatus.PENDING);
        tokenRepository.save(resetToken);
        System.out.println(resetToken);
        sendPasswordResetEmail(user.getEmail(), token);
        return resetToken;
    }

    private String generateUniqueToken() {
		// TODO Auto-generated method stub
    	return UUID.randomUUID().toString();
	}

    @SuppressWarnings("null")
	private void sendPasswordResetEmail(String email, String token) {
        // Configure your email properties, such as SMTP server, credentials, etc.
        String host = "smtp.gmail.com";
        
 // Replace with your Gmail app-specific password

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587"); // Gmail SMTP port
        
        
        final String username = "nitishparimi8@gmail.com"; // Replace with your Gmail email address
        final String password = "*****";
        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Password Reset Request");
            message.setText("To reset your password, click the following link:\n\n"
                    + "http://localhost:8080/resetpass?token=" + token);

            Transport.send(message);
            System.out.println("Password reset email sent successfully.");
        } catch (MessagingException e) {
            e.printStackTrace();
            System.err.println("Failed to send the password reset email.");
        }
    }
    private LocalDateTime calculateExpiryDate() {
        LocalDateTime now = LocalDateTime.now(); // Get the current date and time
        return now.plusHours(1); // Set the expiration time to 1 hour from now
    }


    public boolean isTokenValid(String token) {
        PasswordResetToken resetToken = tokenRepository.findByToken(token);
        return resetToken != null && resetToken.getStatus() == ResetTokenStatus.PENDING &&
               !resetToken.isTokenExpired();
    }


    public boolean resetPassword(String token, String newPassword) {
        PasswordResetToken resetToken = tokenRepository.findByToken(token);
        if (resetToken != null && resetToken.getStatus() == ResetTokenStatus.PENDING
                && !((PasswordResetToken) resetToken).isTokenExpired()) {
            User user = resetToken.getUser();
            user.setPassword(newPassword); // You need to update the user's password
            user.setPasswordResetToken(null); // Optional: Clear the token from the user
            tokenRepository.delete(resetToken); // Remove the token from the repository
            return true;
        }
        return false;
    }

    // Other methods for generating tokens, sending emails, etc.
}
