<!-- <!DOCTYPE html>
<html>
<head>
    <title>Student Registration Page</title>
    <style>
        /* Your CSS for the registration page here */
        body {
            font-family: "Arial", sans-serif;
            font-size: 16px;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0joaZ4UIRMcvrw8WAUF64RjJiYxzLY45fxlOVUqIbwIN4gX90BSqhW1RCB0UEHjGELPE&usqp=CAU'); /* Replace with your image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 10px;
           
        }

        .container {
            width: 70%;
            margin: 0 auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
       
        }

        .card {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 30px;
            font-size: 16px;
        }

        input[type="submit"] {
            background: #007BFF;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            border: none;
            padding: 12px 20px;
            border-radius: 30px;
        }

        input[type="submit"]:hover {
            background: #0056b3;
        }

        button {
            background: none;
            border: none;
            cursor: pointer;
            color: #007BFF;
            text-decoration: underline;
        }
/* Your CSS for the navigation bar here */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Body */
body {
  font-family: sans-serif;
  font-size: 1rem;
  line-height: 1.5;
  overflow: hidden;
}

/* Header */
header {
  width: 100%;
  background-color: rgba(0, 0, 0, 1);
  padding: 0.5em 1.5em;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
}

/* Nav */
nav ul {
  font-family: "Varela Round", sans-serif;
  font-size: 0.9em;
  text-transform: uppercase;
  list-style-type: none;
}

ul.navigation-menu {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

ul.navigation-menu li {
  display: inline-block;
  margin: 0 0.65em;
  padding: 0.35em 0.25em;
  position: relative;
}

ul.navigation-menu a:link,
ul.navigation-menu a:visited {
  color: #fff;
  font-weight: medium;
  text-decoration: none;
  padding: 0.8em;
}

ul.navigation-menu a:hover,
ul.navigation-menu a:active,
ul.navigation-menu .active > a {
  color: #db70a6;
}

ul.navigation-menu ul {
  position: absolute;
  top: 100%;
  left: 0;
  display: none;
  text-align: left;
  font-size: 0.95em;
  margin: 0.25em 0;
}

ul.navigation-menu ul li {
  display: block;
  width: 100%;
  text-align: left;
  white-space: nowrap;
}

ul.navigation-menu li:hover > ul {
  background-color: rgba(0, 0, 0, 0.9);
  border-top: 2px solid #db70a6;
  display: block;
}

ul.navigation-menu ul ul,
ul.navigation-menu ul ul ul {
  left: 100%;
  top: 0;
}

/* Sub-menu styles */

ul.navigation-menu ul {
  background-color: #fff;
}

ul.navigation-menu ul li {
  padding: 0.5em 1em;
}

ul.navigation-menu ul a {
  color: #000;
}

ul.navigation-menu ul a:hover {
  color: #db70a6;
}

/* Active menu item styles */

ul.navigation-menu .active {
  background-color: transparent;
}

ul.navigation-menu .active {
  color: #db70a6;
}

/* Safari fix */

@media screen and (-webkit-min-device-pixel-ratio: 0) {
  .navigation-menu .active:hover > ul {
    background-color: rgba(0, 0, 0, 0.9);
    border-top: 2px solid #db70a6;
    display: block;
  }
}

    </style>
</head>
<body>
    <header>
        <nav>
            <nav>
    <ul class="navigation-menu">
        <li class="menu-item active"><a href="/welcome">Home</a></li>
        <li class="menu-item"><a href="">Grievance</a>
            <ul class="sub-menu">
                <li class="menu-item"><a href="/submitgrievance">Submit</a></li>
                <li class="menu-item"><a href="#track-grievance">Track</a></li>
                <li class="menu-item"><a href="#grievance-history">History</a></li>
            </ul>
        </li>
        <li class="menu-item"><a href="">Login</a>Management
            <ul class="sub-menu">
                <li class="menu-item"><a href="/userlog">Student</a></li>
                <li class="menu-item"><a href="/facultylog">Management</a></li>
                <li class="menu-item"><a href="management">Faculty</a></li>
            </ul>
        </li>
        <li class="menu-item">
            <a href="#aboutus">About Us</a>
            <ul class="sub-menu">
                <li class="menu-item"><a href="#ourteam">Team</a></li>
                <li class="menu-item"><a href="#contactus">Contact</a></li>
            </ul>
        </li>
    </ul>
</nav>

        </nav>
    </header>

    <div class="container">
        <div class="card">
            <form action="/save" method="post">
                <h2>Student Registration</h2>
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required>

                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required>

                <label for="student_id">Student ID (10 digits):</label>
                <input type="text" id="student_id" name="student_id" required pattern="\d{10}" title="Student ID must be 10 digits">

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <label for="year">Year:</label>
                <select id="year" name="year">
                    <option value="1">Year-1</option>
                    <option value="2">Year-2</option>
                    <option value="3">Year-3</option>
                    <option value="4">Year-4</option>
                </select>

                <label for="branch">Branch:</label>
                <select id="branch" name="branch">
                    <option value="CSE">CSE</option>
                    <option value="ECE">ECE</option>
                    <option value="CS&IT">CS&IT</option>
                    <option value="IOT">IOT</option>
                    <option value="AIDS">AIDS</option>
                    <option value="BBA">BBA</option>
                    <option value="AGBSC">AGBSC</option>
                </select>

                <input type="submit" value="Register">
            </form>
            <button type="button" onclick="redirectToLoginPage()">Login Here</button>
        </div>
    </div>

    <script>
        function redirectToLoginPage() {
            var loginPageURL = "/userlog"; // Change this URL to the actual login page URL
            window.location.href = loginPageURL;
        }
    </script>

    Your background images and additional content go here
</body>
</html>
 -->
 
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Page</title>
    <style>
        /* Reset some default styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0joaZ4UIRMcvrw8WAUF64RjJiYxzLY45fxlOVUqIbwIN4gX90BSqhW1RCB0UEHjGELPE&usqp=CAU');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        header {
            width: 100%;
            background-color: rgba(0, 0, 0, 0.9);
            padding: 0.5em 1.5em;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
        }

        /* Navigation menu styling */
        ul.navigation-menu {
            list-style-type: none;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        ul.navigation-menu li {
            margin: 0 0.65em;
            position: relative;
        }

        ul.navigation-menu a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        ul.navigation-menu a:hover {
            color: #db70a6;
        }

        ul.navigation-menu ul {
            position: absolute;
            top: 100%;
            left: 0;
            display: none;
            text-align: left;
        }

        ul.navigation-menu li:hover > ul {
            background-color: white;
            border-top: 2px solid #db70a6;
            display: block;
        }

        ul.navigation-menu ul li {
            padding: 0.5em 1em;
        }

        ul.navigation-menu ul a {
            color: #000;
        }

        ul.navigation-menu ul a:hover {
            color: #db70a6;
        }

        ul.navigation-menu .active {
            color: #db70a6;
        }

        /* Card container styling */
        .container {
            width: 70%;
            margin: 0 auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Form and input styling */
        form {
            display: flex;
            flex-direction: column;
            border-radius: 10px;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 30px;
            font-size: 16px;
            border-radius: 30px;
        }

        input[type="submit"] {
            background: #007BFF;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            border: none;
            padding: 12px 20px;
            border-radius: 30px;
        }

        input[type="submit"]:hover {
            background: #0056b3;
        }

        button {
            background: none;
            border: none;
            cursor: pointer;
            color: #007BFF;
            text-decoration: underline;
            border-radius: 30px;
        }
        /* Add this CSS to style the Year and Branch dropdown selects */

/* Styling for labels */
label {
    margin-top: 10px;
    font-weight: bold;
}

/* Styling for selects */
select {
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 30px;
    font-size: 16px;
}

/* Styling for option elements within the select */
select option {
    background: white; /* Background color for each option */
    color: #000; /* Text color for each option */
    font-size: 16px;
    padding: 10px;
}
        
    </style>
</head>
<body>
    <header>
        <nav>
            <ul class="navigation-menu">
                <li class="menu-item active"><a href="/welcome">Home</a></li>
                <li class="menu-item"><a href="">Grievance</a>
                    <ul class="sub-menu">
                        <li class="menu-item"><a href="/submitgrievance">Submit</a></li>
                        <li class="menu-item"><a href="#track-grievance">Track</a></li>
                        <li class="menu-item"><a href="#grievance-history">History</a></li>
                    </ul>
                </li>
                <li class="menu-item"><a href="">Login</a>Management
                    <ul class="sub-menu">
                        <li class="menu-item"><a href="/userlog">Student</a></li>
                        <li class="menu-item"><a href="/facultylog">Management</a></li>
                        <li class="menu-item"><a href="management">Faculty</a></li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="#aboutus">About Us</a>
                    <ul class="sub-menu">
                        <li class="menu-item"><a href="#ourteam">Team</a></li>
                        <li class="menu-item"><a href="#contactus">Contact</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

   <div class="container">
    <div class="card">
        <form action="/save" method="post">
            <h2>Student Registration</h2>
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required placeholder="Enter your first name">

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required placeholder="Enter your last name">

            <label for="student_id">Student ID (10 digits):</label>
            <input type="text" id="student_id" name="student_id" required pattern="\d{10}" title="Student ID must be 10 digits" placeholder="Enter your 10-digit student ID">

            <label for="email">Email (must be @kluniversity.in domain):</label>
<input type="email" id="email" name="email" required placeholder="Enter your email address" pattern=".*@kluniversity\.in">

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required placeholder="Enter your password">

            <label for="year">Year:</label>
<select id="year" name="year" required>
    <option value="" disabled selected>Select Year</option>
    <option value="1">Year-1</option>
    <option value="2">Year-2</option>
    <option value="3">Year-3</option>
    <option value="4">Year-4</option>
</select>

<label for="branch">Branch:</label>
<select id="branch" name="branch" required>
    <option value="" disabled selected>Select Branch</option>
    <option value="CSE">CSE</option>
    <option value="ECE">ECE</option>
    <option value="CS&IT">CS&IT</option>
    <option value="IOT">IOT</option>
    <option value="AIDS">AIDS</option>
    <option value="BBA">BBA</option>
    <option value="AGBSC">AGBSC</option>
</select>


            <input type="submit" value="Register">
        </form>
        <button type="button" onclick="redirectToLoginPage()">Login Here</button>
    </div>
</div>

    <script>
        function redirectToLoginPage() {
            var loginPageURL = "/userlog"; // Change this URL to the actual login page URL
            window.location.href = loginPageURL;
        }
    </script>
</body>
</html>
 