<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>
    <h1>Reset Your Password</h1>
    
    <form method="post" action="/resetpass">
        <input type="hidden" name="token" value="${token}" />
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required />
        <br />
        <input type="submit" value="Reset Password" />
    </form>
    
</body>
</html>
