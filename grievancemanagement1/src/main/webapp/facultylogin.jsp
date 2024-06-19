<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #3498db, #2980b9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            width: 400px;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
        }

        .box form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .box form h2 {
            font-size: 1.8em;
            margin-bottom: 20px;
            color: #333;
        }

        .box form .inputBox {
            width: 100%;
            margin-bottom: 20px;
        }

        .box form .inputBox input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
        }

        .box form .inputBox label {
            font-size: 0.9em;
            color: #555;
        }

        .box form .links {
            display: flex;
            justify-content: space-between;
        }

        .box form .links a {
            font-size: 0.9em;
            color: #007bff;
            text-decoration: none;
        }

        .box form input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }

        .box form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Additional Styles */
        .box form input[type="submit"]:focus {
            outline: none;
        }

        /* Styling the "Forgot Password" link */
        .box form .links a:first-child {
            color: #f39c12;
        }

        /* Adding a subtle background color to the "Sign up" link */
        .box form .links a:last-child {
            background: #f0f0f0;
            padding: 5px 10px;
            border-radius: 4px;
        }

        /* Error message style */
        .error-message {
            color: #ff0000;
            text-align: center;
            font-size: 0.9em;
        }

        /* Register button style */
        .register-button {
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            padding: 10px 20px;
            font-size: 1em;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
        }

        .register-button:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
<div class="box">
    <form action="/loggedin" method="post">
        <h2>faculty  Login</h2>
        <div class="inputBox">
            <label for="facultyId">Faculty Id:</label>
            <input type="text" id="facultyId" name="facultyId" required>
        </div>
        <div class="inputBox">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <input type="submit" value="Login">
    </form>

    <!-- Display login error message if present -->
    <c:if test="${not empty loginError}">
        <p class="error-message">${loginError}</p>
    </c:if>

    <a href="facultyreg.jsp" class="register-button">Register as Faculty</a>
</div>
</body>
</html>
