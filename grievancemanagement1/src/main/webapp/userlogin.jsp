<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(to bottom, #3498db, #2980b9);
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
    text-align: center;
  }

  .box form .inputBox {
    margin-bottom: 20px;
    width: 100%;
  }

  .box form .inputBox input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
  }

  .box form label {
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

  .box form .links a:hover {
    color: #0056b3;
  }

  /* Additional Styles */
  .box form input[type="submit"]:focus {
    outline: none;
  }

  /* Styling the "Forgot Password" link */
  .box form .links a:first-child {
    color: #f39c12; /* Change color to a bright one */
  }

  /* Adding a subtle background color to the "Sign up" link */
  .box form .links a:last-child {
    background: #f0f0f0;
    padding: 5px 10px;
    border-radius: 4px;
  }
</style>

</head>
<body>
<div class="box">
  <form action="/loggingin" method="post">
    <h2>Student Login</h2>
    <div class="inputBox">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="inputBox">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="links">
      <a href="/forgot">Forgot Password</a>
      <br></br>
      <a href="/userreg">Sign up</a>
    </div>
    <input type="submit" value="Login">
  </form>
</div>
</body>
</html>
